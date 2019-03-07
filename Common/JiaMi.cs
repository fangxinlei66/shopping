using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Security.Cryptography;
namespace Common
{
    public static class JiaMi
    {
        public static string Md5(string str)
        {
            //Encoding.Default.GetBytes(str);传入一个string 返回一个bytes数组
            var input = Encoding.Default.GetBytes(str);
            //新建一个MD5的加密算法的对象
            System.Security.Cryptography.MD5 md5 = MD5.Create("MD5");
            //通过md5.ComputeHash()方法传入要加密的bytes数组并存入加密后的变量output中
            var output = md5.ComputeHash(input);
            //通过BitConverter.toString()方法，将bytes数组转成加密后的字符串
            return BitConverter.ToString(output);
        }
    }
}
