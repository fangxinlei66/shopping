using Shopping.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Shopping.Controllers
{
    public class AddressController : Controller
    {
        private shoppingEntities db = new shoppingEntities();
        
        [HttpPost]
        public ActionResult Add(Address address)
        {
            User currentUser = Session["user"] as User;
            address.UserId = currentUser.Id;
            if (address.IsDefault == null) //不是默认
            {
                //13:28
                address.IsDefault = false;
            }
            else
            {
                //是默认,先把之前的所有地址都设置为不是默认
                db.Address.Where(a=>a.UserId== currentUser.Id).ToList().ForEach(a => { a.IsDefault = false; } );
            }
            db.Address.Add(address);
            db.SaveChanges();
            return RedirectToAction("List","Cart");
        }
        [HttpPost]
        public ActionResult Edit(Address address)
        {
            User currentUser = Session["user"] as User;
            //return Content(address.Id.ToString());
            Address a= db.Address.Find(address.Id);
            a.AreaId = address.AreaId;
            a.DetailAddress = address.DetailAddress;
            a.IsDefault = address.IsDefault;
            a.Phone = address.Phone;
            a.ReceiverName = address.ReceiverName;
            if (address.IsDefault == null) //不是默认
            {
                //13:28
                a.IsDefault = false;
            }
            else
            {
                //是默认,先把之前的所有地址都设置为不是默认
                db.Address.Where(add => add.UserId == currentUser.Id).ToList().ForEach(add => { add.IsDefault = false; });
                a.IsDefault = true;
            }


            db.SaveChanges();
            return RedirectToAction("List", "Cart");
        }


        public ActionResult Delete(int AddressId)
        {
            User user = Session["user"] as User;
            if (db.Address.Find(AddressId).IsDefault == true )
            {
                //如果删除的这个是默认地址，那么把第一个设置为默认
                var firstAddress = db.Address.Where(a => a.UserId == user.Id).FirstOrDefault();
                if (firstAddress!=null)
                {
                    firstAddress.IsDefault = true;
                }
            }
            db.Address.Remove(db.Address.Find(AddressId));
            db.SaveChanges();
            return Content("");
        }
    }
}