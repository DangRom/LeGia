using System.Collections.Generic;

namespace LeGia.Models
{
    public class FooterViewModel{
        public CompanyViewModel Company { get; set; }
        public IEnumerable<MenuItemViewModel> Service { get; set; }
    }
}
