using System.Threading.Tasks;
using LeGia.Services.IRepository;
using Microsoft.AspNetCore.Mvc;
using System.Linq;
using LeGia.Models;

namespace LeGia.ViewComponents{
    [ViewComponentAttribute(Name = "Customer")]
    public class CustomerViewComponent : ViewComponent{
        private IImageRepository _imageRepo;
        public CustomerViewComponent(IImageRepository imageRepo){
            _imageRepo = imageRepo;
        }

        public async Task<IViewComponentResult> InvokeAsync(){
            try{
                var customerModel = await Task.Factory.StartNew(() => _imageRepo.GetLogo());
                var customer = customerModel.Select(c => new CustomerViewModel{
                    Id = c.Id,
                    Name = c.Name,
                    Alias = c.Alias,
                    Image = c.Image
                }).ToList();
                return View(customer);
            }catch{throw;}
        }
    }
}