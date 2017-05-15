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
    public class CategoryController : Controller
    {
        private ICategoryRepository _repo;
        public CategoryController(ICategoryRepository repo){
            _repo = repo;
        }

        public IActionResult Index()
        {
            try{
                var models = _repo.GetAll();
                var categorys = models.Select(c => new CategoryViewModel(){
                    Id = c.Id,
                    Name = c.Name,
                    Alias = c.Alias,
                    IsMenu = c.IsMenu,
                    Activated = c.Activated,
                    Orders = c.Orders,
                    Description = c.Description
                }).ToList();
                return View(categorys);
            }catch(Exception ex){
                ModelState.AddModelError("", ex.Message);
                return View();
            }
        }

        public IActionResult New()
        {
            return View();
        }

        [HttpPostAttribute]
        public IActionResult New(CategoryViewModel category){
            try{
                if (ModelState.IsValid){
                    if (!_repo.CheckName(category.Name)){
                        var model = new CategoryModel(){
                            Name = category.Name,
                            Alias = category.Alias,
                            IsMenu = category.IsMenu,
                            Activated = category.Activated,
                            Orders = category.Orders,
                            Description = category.Description
                        };
                        _repo.Insert(model);
                        return RedirectToAction("New");
                    }else{
                        ModelState.AddModelError("", "Tên loại chủ đề này đã tồn tại rồi, hãy thử tên khác.");
                        return View(category);
                    }
                }
                return View();
            }catch(Exception ex){
                ModelState.AddModelError("", ex.Message);
                return View(category);
            }
        }

        public IActionResult Update(int id)
        {
            try{
                var model = _repo.GetById(id);
                var category = new CategoryViewModel(){
                    Id = model.Id,
                    Name = model.Name,
                    Alias = model.Alias,
                    IsMenu = model.IsMenu,
                    Activated = model.Activated,
                    Orders = model.Orders,
                    Description = model.Description
                };
                return View(category);
            }catch(Exception ex){
                ModelState.AddModelError("", ex.Message);
                return View();
            }
        }

        [HttpPostAttribute]
        public IActionResult Update(CategoryViewModel category){
            try{
                if (ModelState.IsValid)
                {
                    var model = new CategoryModel()
                    {
                        Id = category.Id,
                        Name = category.Name,
                        Alias = category.Alias,
                        IsMenu = category.IsMenu,
                        Activated = category.Activated,
                        Orders = category.Orders,
                        Description = category.Description
                    };
                    _repo.Update(model);
                    return RedirectToAction("Index");
                }
                return View();
            }catch(Exception ex){
                ModelState.AddModelError("", ex.Message);
                return View();                
            }
        }

        [HttpDeleteAttribute]
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