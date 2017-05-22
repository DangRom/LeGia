using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace LeGia.Models
{
    public class FooterViewModel{
        public CompanyViewModel Company { get; set; }
        public IEnumerable<MenuItemViewModel> Service { get; set; }
    }
}
