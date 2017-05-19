using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace LeGia.Models
{
    public class MenuViewModel
    {
        public IEnumerable<HeadMenuViewModel> Heads{ get; set; }
        public IEnumerable<MenuItemViewModel> Items{ get; set; }
    }
}
