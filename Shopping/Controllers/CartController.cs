using Shopping.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Shopping.Controllers
{
    public class CartController : Controller
    {

        private shoppingEntities db = new shoppingEntities();
        // GET: Cart
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult List()
        {
            //获取当前登录用户的购物车中的所有商品
            if (Session["user"] == null)
            {
                return RedirectToAction("Login", "User");
            }
            
            //读取该用户的所有地址


            //获取当前登录用户的购物车中的所有商品
            User user = Session["user"] as User;


            //读取该用户的所有地址
            ViewBag.Address = db.Address.Where(a=>a.UserId == user.Id).OrderBy(a=>a.Id).ToList();

            //读取所有的一级地区
            ViewBag.Areas = db.Area.Where(a => a.ParentId == null).ToList();



            return View(db.Cart.Where(cart => cart.UserId == user.Id).ToList());


        }


        public ActionResult Add( int? ProductId)
        {
            if (Session["user"] == null)
            {
             

                //未登陆状态，通过向网页输出一段JS代码，输出一个提示框提示：‘请先登录’，然后,退回到弹框前的页面，点击登录按钮进行登录
                //return Content("<script>alert('请先登录！');history.go(-1);</script>");

                //可以跳转到登录页面，但是从此处跳转无法获取到returnUrl所以无法转回当前页面，废弃
                return Redirect("~/User/Login");


                
            }
            User currentUser = (Session["user"] as User);

            //已登录
            IList<Cart> result = null;

            //判断当前用户的购物车中，有没有这件商品
            if (ProductId!=null&& ProductId!=0)
            {
                 result = db.Cart.Where(cart => cart.UserId == currentUser.Id && cart.ProductId == ProductId).ToList();
            }
            else if(Request["goodid"]!=null)
            {
                int goodid = Convert.ToInt32(Request["goodid"]);
                 result = db.Cart.Where(cart => cart.UserId == currentUser.Id && cart.ProductId == goodid).ToList();
            }

            //如果已有，数量+1
            if (result.Count() == 1)
            {
                var fun = "0";
                if (Request["fun"]!=null&& Request["fun"]!="")
                {
                     fun = Request["fun"].ToString();
                }
                
                Cart currentCart = result.FirstOrDefault();
                if (fun=="0")
                {
                    currentCart.Number++;
                }
                else
                {
                    currentCart.Number= currentCart.Number-1;
                }
                
            }
            else {
            //把该商品加入购物车的表中去
            Cart c = new Cart {
                //User = Session["user"] as User,
                //Product = db.Product.Find(ProductId),
                UserId=currentUser.Id,
                ProductId = ProductId,
                Number = 1

                    };
            db.Cart.Add(c);
            }
            db.SaveChanges();

            //return View("List");
            return Content("<script>location.href ='/Product/Detail/"+ ProductId +"';</script>");
        }

        public ActionResult Delete()
        {
            User currentUser = (Session["user"] as User);
            var ProductId = Convert.ToInt32( Request.QueryString["productId"]);
            var result=db.Cart.Where(cart=> cart.UserId == currentUser.Id && cart.ProductId == ProductId).FirstOrDefault();
            
            
                db.Cart.Remove(result);
                db.SaveChanges();
            
            return Content("1");
        }
       
    }
}