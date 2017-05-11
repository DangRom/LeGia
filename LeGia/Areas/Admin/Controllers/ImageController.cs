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

        public IActionResult Index(){
            try{
                var models = _repo.GetAllImage();
                var images = models.Select(i => new ImageViewModel(){
                    Id = i.Id,
                    Name = i.Name,
                    Alias = i.Alias,
                    IsLogo = i.IsLogo,
                    IsProject = i.IsProject,
                    IsSlide = i.IsSlide,
                    Link = i.Link,
                    Image = i.Image,
                    Description = i.Description
                });
                return View(images);
            }catch(Exception ex){
                ModelState.AddModelError("Lỗi", ex.Message);
                return View();
            }
        }

        public IActionResult New()
        {
            return View();
        }

        [HttpPostAttribute]
        public IActionResult New(ImageViewModel img){
            try{
                if (ModelState.IsValid){
                    if (!_repo.CheckName(img.Name)){
                        var model = new ImageModel()
                        {
                            Name = img.Name,
                            Alias = img.Alias,
                            IsLogo = img.IsLogo,
                            IsProject = img.IsProject,
                            IsSlide = img.IsSlide,
                            Link = img.Link,
                            Image = img.Image,
                            Description = img.Description
                        };
                        _repo.Insert(model);
                        return RedirectToAction("New");
                    }else{
                        ModelState.AddModelError("Lỗi", "tên này đã tồn tại rồi, hãy thử tên khác.");
                        return View(img);
                    }
                }
                return View();
            }catch(Exception ex){
                ModelState.AddModelError("Lỗi", ex.Message);
                return View(img);
            } 
        }

        public IActionResult Update(int id){
            try{
                var model = _repo.GetImage(id);
                var img = new ImageViewModel(){
                    Name = model.Name,
                    Alias = model.Alias,
                    IsLogo = model.IsLogo,
                    IsProject = model.IsProject,
                    IsSlide = model.IsSlide,
                    Link = model.Link,
                    Image = model.Image,
                    Description = model.Description
                };
                return View(img);
            }catch(Exception ex){
                ModelState.AddModelError("Lỗi", ex.Message);
                return View();
            }
        }

        [HttpPost]
        public IActionResult Update(ImageViewModel img){
            try{
                if (ModelState.IsValid){
                    var model = new ImageModel(){
                        Id = img.Id,
                        Name = img.Name,
                        Alias = img.Alias,
                        IsLogo = img.IsLogo,
                        IsProject = img.IsProject,
                        IsSlide = img.IsSlide,
                        Link = img.Link,
                        Image = img.Image,
                        Description = img.Description
                    };
                    _repo.Update(model);
                    return RedirectToAction("Index");
                }
                return View();
            }catch (Exception ex){
                ModelState.AddModelError("Lỗi", ex.Message);
                return View(img);
            }
        }

        [HttpDelete]
        public JsonResult Delete(int id){
            try{
                _repo.Delete(id);
                return Json("OK");
            }catch(Exception ex){
                return Json(ex.Message);
            }
        }
    }
}