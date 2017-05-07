using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using LeGia.Areas.Admin.Models;
using LeGia.Services.IRepository;
using LeGia.Services.Model;
using Microsoft.AspNetCore.Mvc;

namespace LeGia.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class ImageController : Controller
    {
        private IImageRepository _repo;
        public ImageController(IImageRepository repo){
            _repo = repo;
        }

        public IActionResult Index()
        {
            return View();
        }

        public IActionResult New()
        {
            return View();
        }

        [HttpPostAttribute]
        public IActionResult New(ImageViewModel image){
            try{
                if(ModelState.IsValid){
                    var model = new ImageModel(){
                        Name = image.Name,
                        Alias = image.Alias,
                        IsLogo = image.IsLogo,
                        IsProject = image.IsProject,
                        IsSlide = image.IsSlide,
                        Link = image.Link,
                        Image = image.Image,
                        Description = image.Description
                    };
                    _repo.Insert(model);
                    return RedirectToAction("Index");
                }
                return View(image);
            }catch(Exception ex){
                ModelState.AddModelError("Lỗi", ex.Message);
                return View(image);
            } 
        }

        public IActionResult Update()
        {
            return View();
        }
    }
}