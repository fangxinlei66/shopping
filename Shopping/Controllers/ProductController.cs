using Shopping.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Shopping.Controllers
{
    public class ProductController : Controller
    {
        private shoppingEntities db = new shoppingEntities();
        private const int PAGE_SIZE = 3;
        
        //int? 可以为空值
        /// <summary>
        /// 商品列表页
        /// </summary>
        /// <param name="ProductTypeId">商品类别编号</param>
        /// <param name="Order">商品排序方式</param>
        /// <param name="Page">商品当前页的页码</param>
        /// <param name="keyword">搜索使用的关键字</param>
        /// <returns></returns>
        public ActionResult List(int? ProductTypeId, int? Order, int? Page, string keyword)
        {
            //获取商品的一级类别
            ViewBag.ProductTypes = db.ProductType.Where(pt => pt.Pid == null);

            //问题一：效率问题，中途不需要转换成ToList()只需要，最后返回的时候，在list上加上.ToList();

            //所有商品数据.AsEnumerable()转换成Enumerable()

            IEnumerable<Product> list = db.Product.Where(p=>p.Onsale==true).AsEnumerable();
            #region 搜索功能
            //搜索功能
            if (keyword != null && keyword != "")
            {
                //执行搜索
                //字符串和集合都有的 Contains方法 集合的Contains方法，是说明集合中有这个元素 返回 true或者false
                //字符串的Contains方法，说名这个字符串中包含了子字符串
                list = list.Where(p=>p.Name.Contains(keyword));
            }



            #endregion


            #region 筛选功能
            //如果请求中带有 商品类别的参数
            if (ProductTypeId != null)
            {
                //进行筛选 list.Where(p => p.TypeId == ProductTypeId)为IEnumerable需要使用.ToList()转换为集合
                //获取 该类别下的商品列表
                list = list.Where(p => p.TypeId == ProductTypeId);
                //根据类别获取 该类别的对象
                ViewBag.CurrentProductType = db.ProductType.Find(ProductTypeId);
            }

            #endregion


            #region 排序功能
            //如果请求中 带有 排序Order 参数
            if (Order == null)
            {
                Order = 1;
            }

            //排序方式，1：按销量高到低 2：价格由低到高 3：价格由高到低
            switch (Order)
            {
                case 1:
                    list = list.OrderByDescending(p => p.Saled);
                    break;
                case 2:
                    list = list.OrderByDescending(p => p.NewPirce);
                    break;
                case 3:
                    list = list.OrderBy(p => p.NewPirce);
                    break;


            }
            ViewBag.Order = Order;
            #endregion


            #region 分页功能
            //分页前商品总条数
            ViewBag.ProductCount = list.Count();//IEnumerable中有Count()方法。没有count属性
            //分页
            if (Page == null)
            {
                Page = 1;
            }
            //获取该页的数据
            //假设Page=2，每页3条
            list = list.Skip(Convert.ToInt32((Page - 1) * PAGE_SIZE)).Take(PAGE_SIZE);

            ViewBag.pageSize = PAGE_SIZE;
            ViewBag.Page = Page;



            //读取购物车数量
            if (Session["user"] != null)
            {
                User u = Session["user"] as User;
                var myCart = db.Cart.Where(c => c.UserId == u.Id);
                int? cartCount = 0;
                foreach (var item in myCart)
                {
                    cartCount += item.Number;
                }
                ViewBag.cartCount = cartCount;
            }


            #endregion

            return View(list.ToList());
        }


        /// <summary>
        /// 商品详情页
        /// </summary>
        /// <param name="id">商品编号</param>
        /// <returns></returns>
        public ActionResult Detail( int id )
        {
            //获取商品的一级类别
            ViewBag.ProductTypes = db.ProductType.Where(pt => pt.Pid == null);


            //读取购物车数量
            if (Session["user"] != null) {
                User u = Session["user"] as User;
                var myCart = db.Cart.Where(c => c.UserId == u.Id);
                int? cartCount = 0;
                foreach (var item in myCart)
                {
                    cartCount += item.Number;
                }
                ViewBag.cartCount = cartCount;
            }
            //根据商品编号获取商品详情
            Product p = db.Product.Find(id);

            return View(p);
            
        }
    }
}