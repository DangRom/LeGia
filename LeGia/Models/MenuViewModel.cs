using System.Collections.Generic;

namespace LeGia.Models
{
    public class MenuViewModel
    {
        public IEnumerable<HeadMenuViewModel> Heads{ get; set; }
        public IEnumerable<MenuItemViewModel> Items{ get; set; }
    }
}
