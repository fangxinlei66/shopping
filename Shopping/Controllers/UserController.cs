
using Shopping.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Common;
using Shopping.ViewModels;
namespace Shopping.Controllers
   
{
    public class UserController : Controller
    {
        private shoppingEntities db = new shoppingEntities();

        #region 注册
        #region 已废弃登录注册模块1
        //private shoppingEntities db = new shoppingEntities();
        ////Random r = new Random();

        //// GET: User
        //public ActionResult Register()
        //{
        //    return View();
        //}
        //[HttpGet]

        ////验证用户名是否重复
        //public char checkUsernameExists(string username)
        //{
        //    var result=db.User.ToList();
        //    if (result.Where(r => r.Username == username).Count() == 1)
        //    {
        //        return '1';
        //    }
        //    else
        //    {
        //        return '0';
        //    }


        //}

        ////注册页面注册按钮
        //public string checkRegister(string Username ,string Password, string Nickname)
        //{
        //    //1）通过linq to sql获取数据
        //    User u = new User
        //    {
        //        Username = Username,
        //        Password = Password,
        //        Nickname = Nickname
        //    };
        //    if (u.Username != null && u.Password != null && u.Nickname != null)
        //    {

        //        //往数据库的UserInfo表中新增一条数据，延迟执行
        //        db.User.Add(u);

        //        //懒加载，把本地更新的内容，提交到数据库中去
        //        db.SaveChanges();
        //        return "1";
        //    }
        //    else
        //    {
        //        return "0";
        //    }


        //}


        ////注册页面登录按钮
        //public ActionResult Login()
        //{
        //    return View();
        //}

        ////验证码
        //public void YZM1()
        //{
        //    //绘制一张图片
        //    //1）第一步创建图片对象,空白图片，200*100
        //    Image image = new Bitmap(200, 50);

        //    //2）通过图片对象获取画板对象
        //    Graphics g = Graphics.FromImage(image);

        //    //3)给画板涂上背景色
        //    //获取一种指定的颜色
        //    Color c = Color.FromArgb(220, 220, 220);
        //    g.Clear(c);

        //    string lower = "abcdefghijklmnopqrstuvwxyz";
        //    string upper = lower.ToUpper();
        //    string digit = "0123456789";
        //    string canUseStr = lower + upper + digit;

        //    //r.Next(0, canUseStr.Length)

        //    string[] fontName = { "微软雅黑", "consolas", "courier new" };

        //    string captchaContent = "";

        //    //4）在画板上书写文字
        //    for (int i = 0; i < 4; i++)
        //    {

        //        Font font = new Font(fontName[r.Next(0, fontName.Length)], r.Next(25, 35));                // 创建字体
        //        Brush brush = new SolidBrush(getRandomColor());            //创建一个 纯红色 画刷
        //        string str = canUseStr[r.Next(0, canUseStr.Length)].ToString();
        //        captchaContent += str;
        //        g.DrawString(str, font, brush, i * 50, 0);
        //    }

        //    Session.Add("captcha", captchaContent);

        //    //绘制干扰线
        //    for (int i = 0; i < 10; i++)
        //    {
        //        Pen pen = new Pen(getRandomColor());
        //        g.DrawLine(pen, getRandomPoint(200, 50), getRandomPoint(200, 50));
        //    }
        //    //
        //    //设置响应头，content-type,为图片类型

        //    //jpg/jpeg,gif(动图) ，png(半透明图片)
        //    Response.ContentType = "image/jpeg";

        //    //设置响应体，就是刚才绘制的图片的内容
        //    //a)创建一个内存流，用于存放Image对象
        //    MemoryStream ms = new MemoryStream();
        //    //image.Save("d:/test.jpg");        //通过文件流写在硬盘上
        //    image.Save(ms, ImageFormat.Jpeg);    //通过内存流，把图片写入内存中去了


        //    //ms.ToArray()内存流中的toArray方法把流写入字节数组
        //    //BinaryWrite将一个二进制字符串（字节数组）写入HTTP输入流
        //    //Response将字节数组的内容通过相应发挥到客户端

        //    Byte[] data = ms.ToArray();             //把内存流中的数据 格式化为 字节数组

        //    Response.BinaryWrite(data);     //把字节数组中的数据 通过响应 发送到客户端去
        //}

        //private Point getRandomPoint(int x, int y)
        //{
        //    return new Point(r.Next(x), r.Next(y));
        //}
        //private Color getRandomColor()
        //{
        //    return Color.FromArgb(r.Next(0, 256), r.Next(0, 256), r.Next(0, 256));
        //}



        //public string checkCaptchar()
        //{
        //    if (Request.QueryString["captcha"].ToLower() == Session["captcha"].ToString().ToLower())
        //    {
        //        return "0";
        //    }
        //    else
        //    {
        //        return "1";
        //    }
        //}
        //public string checkLogin(string Username, string Password)
        //{
        //    var result = db.User.ToList();

        //        //1）通过linq to sql获取数据
        //        User u = new User
        //    {
        //        Username = Username,
        //        Password = Password,

        //    };
        //    if (result.Where(r => r.Username == Username).Where(r=>r.Password==Password).Count() == 1)
        //    {

        //        return "1";
        //    }
        //    else
        //    {
        //        return "0";
        //    }

        //}

        //public ActionResult index() {
        //    return View();
        //}
        #endregion
        //展示表单页面
        [HttpGet]
        public ActionResult Register()
        {
            return View();
        }


        /// <summary>
        /// 把数据写入数据库
        /// </summary>
        /// <returns></returns>
        [HttpPost]
        public ActionResult Register(ViewModels.User user)
        {
            Models.User u = new Models.User
            {
                Username = user.Username,
                Password = Common.JiaMi.Md5(user.Password),
                Nickname = user.Nickname
            };
            db.User.Add(u);
            db.SaveChanges();
            return Content("");
        }

        //通过ajax验证表单是否正确
        [HttpPost]
        public ActionResult AjaxRegister(ViewModels.User user)
        {


            //View()ViewResult              响应一个html视图文件
            //File() FileCotentResult      响应一个文件
            //Json() JsonResult              响应json字符串   "[ {}  ,{},    {}]"
            //Context() ContentResult   响应一个纯字符串

            //判断 验证码是否正确
            if (user.VCode.ToLower() != Session["VCode"].ToString().ToLower())
            {
                return Json(
                    new Common.JsonResult
                    {
                        Result = ResultType.Error,
                        ErrorMessage = "验证码错误"
                    }
                    );
            }

            //判断 用户名是否已被使用
            int userCount = db.User.Where(u => u.Username == user.Username).Count();
            if (userCount == 1)
            {
                return Json(new Common.JsonResult
                {
                    Result = ResultType.Error,
                    ErrorMessage = "用户名已被使用"
                });
            }

            //{result:"success" ,errorMessage="用户名已被使用"}


            return Json(new Common.JsonResult
            {
                Result = ResultType.Success,
                ErrorMessage = string.Empty
            });
        }

        #endregion

        #region 登录模块
        //登录页面
        [HttpGet]
        public ActionResult Login()
        {
            return View();
        }



        [HttpPost]
        public ActionResult Login(Models.User user, string returnUrl)
        {
            user.Password = Common.JiaMi.Md5(user.Password);
            var users = db.User.Where(u => u.Username == user.Username &&
               u.Password == user.Password
              );
            var loginResult = users.Count() == 1;

            if (loginResult)
            {
                //登录成功
                Session.Add("user", users.FirstOrDefault());
                if (returnUrl != null && returnUrl != "")
                {
                    return Redirect(returnUrl);
                }
                else
                {
                    return RedirectToAction("List", "Product");
                }
            }
            else
            {
                ViewBag.ErrorMessage = "用户名或密码错误";
                return View();
            }
        }

        public ActionResult Logout(string returnUrl) {
            Session.Remove("user");
            return Redirect(returnUrl);
        }
        #endregion
        #region 生成验证码
        public ActionResult VerifyCode() {
            Common.VerifyCode vCode = new Common.VerifyCode();
            string verifyCodeString = vCode.GeTVerifyCode(4);
            Session.Add("VCode", verifyCodeString);
            Image image = vCode.GetVerifyImage(verifyCodeString);


            //ViewResult
            //FileContextResult
            MemoryStream ms = new MemoryStream();
            image.Save(ms, ImageFormat.Jpeg);

            return File(ms.ToArray(), "image/jpeg");
        }
        #endregion

        # region 个人中心
        public ActionResult Personal() {
            if (Session["user"] == null)
            {
                return RedirectToAction("login", "User");
            }

            return View();
        }
        #endregion
       
    }

}

