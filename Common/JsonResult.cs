using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Common
{
    //响应的Json 对象的类型
    public enum ResultType
    {
        Success=0, Error=1
    }
    public  class JsonResult
    {
        
        public ResultType Result { get; set; }
        public string ErrorMessage { get; set; }
        public object Data { get; set; }
    }
}
