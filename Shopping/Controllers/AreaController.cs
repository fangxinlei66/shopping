using Shopping.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Shopping.Controllers
{
    public class AreaController : Controller
    {
        private shoppingEntities db = new shoppingEntities();
        // GET: Area
        public ActionResult List(int? AreaId)
        {
            
            return Json(
                db.Area.Where(a => a.ParentId == AreaId).Select(a =>new {
                    Id =a.Id,
                    Name=a.Name,
                    ParentId=a.ParentId
                }) ,
                JsonRequestBehavior.AllowGet
                );
        }
    }
}