using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace LeGia.ViewComponents{
    [ViewComponentAttribute(Name = "Contact")]
    public class ContactViewComponent : ViewComponent{
        public ContactViewComponent(){}
        public IViewComponentResult Invoke(){
            return View();
        }
    }
}