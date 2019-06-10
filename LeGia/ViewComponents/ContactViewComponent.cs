using Microsoft.AspNetCore.Mvc;
using LeGia.Models;

namespace LeGia.ViewComponents
{
    [ViewComponentAttribute(Name = "Contact")]
    public class ContactViewComponent : ViewComponent{
        public ContactViewComponent(){}
        public IViewComponentResult Invoke(){
            //var contact = await Task.Factory.StartNew(() => new ContactViewModel()).Result;
            return View(new ContactViewModel());
        }
    }
}