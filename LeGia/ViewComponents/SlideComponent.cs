using System.Threading.Tasks;
using LeGia.Services.IRepository;
using Microsoft.AspNetCore.Mvc;
using LeGia.Models;
using System.Collections.Generic;

namespace LeGia.ViewComponents
{
    [ViewComponentAttribute(Name = "Slide")]
    public class SlideViewComponent : ViewComponent{
        private IImageRepository _imageRepo;
        public SlideViewComponent(IImageRepository imageRepo){
            _imageRepo = imageRepo;
        }

        public async Task<IViewComponentResult> InvokeAsync(){
            try{
                var sort = 1;
                var slides = new List<SlideViewModel>();
                var slideModel = await Task.Factory.StartNew(() => _imageRepo.GetSlide());
                foreach(var s in slideModel){
                    var slide = new SlideViewModel(){
                        Id = s.Id,
                        Name = s.Name,
                        Alias = s.Alias,
                        Image = s.Image,
                        Sort = sort
                    };
                    slides.Add(slide);
                    sort++;
                }
                return View(slides);
            }catch{throw;}
        }
    }
}