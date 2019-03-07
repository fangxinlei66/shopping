using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Shopping.ViewModels
{
    public class User
    {
        public string Username { get; set; }
        public string Password { get; set; }
        public string Nickname { get; set; }
        public string ConfirmPassword { get; set; }
        public string VCode { get; set; }
    }
}