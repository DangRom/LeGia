using System.Collections.Generic;
using LeGia.Models;

namespace LeGia.Commons{
    public static class SystemVariable{
        public static IEnumerable<HeadMenuViewModel> HeadMenu {get;set;}
        public static IEnumerable<MenuItemViewModel> MenuItem {get;set;}
        public static CompanyViewModel Company {get;set;}
    }
}