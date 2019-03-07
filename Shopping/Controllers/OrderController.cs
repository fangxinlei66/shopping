using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Shopping.Models;
namespace Shopping.Controllers
{
    public class OrderController : Controller
    {
        private shoppingEntities db = new shoppingEntities();
        // GET: Order
        public ActionResult Add(int AddressId ,int?[] ProductId,int?[] Number,double Price)
        {
            //string str = "";
            //str += AddressId + ",";
            //for (int i=0;i<ProductId.Length;i++)
            //{
            //    str += ProductId[i] + "," + Number[i] + ",";
            //}
            //return Content(str);

            User user = Session["user"] as User;
            //设置新增的订单
            Order order = new Order
            {
                UserId = user.Id,
                OrderTime = DateTime.Now,
                AddressId = AddressId,
                Price = Convert.ToDecimal(Price),
                OrderState = 0
            };
            db.Order.Add(order);
            db.SaveChanges();
            for(int i = 0;i< ProductId.Length;i++)
            {
                OrderDetail orderDetail = new OrderDetail();
                orderDetail.OrderId = order.Id;
                orderDetail.ProductId = ProductId[i];
                orderDetail.Number = Number[i];

                db.OrderDetail.Add(orderDetail);
            }

            // 从我的购物车中删除对应的商品

            IQueryable<int?> productIdList = ProductId.AsQueryable();
            var cartToDelete = db.Cart.Where(c => c.UserId == user.Id && productIdList.Contains(c.ProductId));
            db.Cart.RemoveRange(cartToDelete);

            db.SaveChanges();
            //ViewBag.
            return Redirect("Detail?orderId="+order.Id);
            
        }
        //生成订单，订单详情
        public ActionResult Detail(string orderId,int? Number) {
            User u = (User)Session["user"];
            Order od = db.Order.Where(o => o.UserId == u.Id).ToList().Last();

            List<OrderDetail> od1 = db.OrderDetail.Where(oo=>oo.OrderId==od.Id).ToList();

            
            List<Product> pt = db.Product.ToList();
            foreach ( var it in od1)
            {
                Product pt2 = pt.Where(p => p.Id == it.ProductId).FirstOrDefault();
                pt2.Amount = pt2.Amount - it.Number;
                db.SaveChanges();
            }
            
            ViewData["Order"] = od;
            //db.SaveChanges();
            ViewData["Product"] = pt;
            return View();
        }
        //退货
        public void Edit() {
            int orderid = Convert.ToInt32(Request["orderid"]);
            Order od= db.Order.Where(o => o.Id == orderid).FirstOrDefault();

            List<OrderDetail> od1 = db.OrderDetail.Where(oo => oo.OrderId == od.Id).ToList();

            od.OrderState = 6;
            //获取所有商品的集合
            List<Product> pt = db.Product.ToList();
            foreach (var it in od1)
            {
                Product pt2 = pt.Where(p => p.Id == it.ProductId).FirstOrDefault();
                pt2.Amount = pt2.Amount + it.Number;
                db.SaveChanges();
            }
            db.SaveChanges();
           
        }
    }
}