using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace LeGia.Services.Model{
    public class UserModel{
        public string UserName { get; set; }
        public string UserPass { get; set; }
        public string FullName { get; set; }
        public bool Activited { get; set; }
    }
}
