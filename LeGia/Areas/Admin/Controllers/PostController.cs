using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using LeGia.Areas.Admin.Models;
using LeGia.Services.IRepository;
using LeGia.Services.Model;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;

namespace LeGia.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class PostController : Controller
    {
        private ICategoryRepository _categoryRepo;
        private IPostRepository _postRepo;
        private Task<List<SelectListItem>> GetListCategory(){
            var categorys = Task.Factory.StartNew(() =>_categoryRepo.GetAllForPost().Select(c => new SelectListItem{
                Value = c.Id.ToString(),
                Text = c.Name
            }).ToList());
            categorys.Result.Insert(0, new SelectListItem { Value = "0", Text = "--chọn danh mục--"});
            return categorys;
        }
        public PostController(IPostRepository postRepo, ICategoryRepository categoryRepo){
            _postRepo = postRepo;
            _categoryRepo = categoryRepo;
        }

        public async Task<IActionResult> Index(){
            try{
                var models = await Task.Factory.StartNew(() => _postRepo.GetAllPost());
                var posts = models.Select(p => new PostViewModel{
                    Id = p.Id,
                    Name = p.Name,
                    Alias = p.Alias,
                    Image = p.Image,
                    CategoryId = p.CategoryId,
                    CategoryName = p.CategoryName,
                    Activated = p.Activated
                }).ToList();
                return View(posts);
            }catch(Exception ex){
                ModelState.AddModelError("", ex.Message);
                return View();
            }
        }

        public async Task<IActionResult> New(){
            ViewBag.ListCategory = await GetListCategory();
            return View();
        }

        [HttpPostAttribute]
        public async Task<IActionResult> New(PostViewModel post){
            ViewBag.ListCategory = await GetListCategory();
            try
            {
                if (ModelState.IsValid){
                    if (!_postRepo.CheckName(post.Name)){
                        var model = new PostModel(){
                            Name = post.Name,
                            Alias = post.Alias,
                            Image = post.Image,
                            CategoryId = post.CategoryId,
                            Activated = post.Activated,
                            Content = post.Content
                        };
                        _postRepo.Insert(model);
                        return RedirectToAction("New");
                    }
                    ModelState.AddModelError("", "Tên bài viết này đã tồn tại rồi, hảy thử tên khác.");
                    return View(post);
                }
                return View();
            }catch(Exception ex){
                ModelState.AddModelError("", ex.Message);
                return View(post);
            }
        }

        public async Task<IActionResult> Update(int id){
            try{
                ViewBag.ListCategory = await GetListCategory();
                var model = _postRepo.GetPost(id);
                var post = new PostViewModel(){
                    Id = model.Id,
                    Name = model.Name,
                    Alias = model.Alias,
                    Image = model.Image,
                    CategoryId = model.CategoryId,
                    Activated = model.Activated,
                    Content = model.Content
                };
                return View(post);
            }catch(Exception ex){
                ModelState.AddModelError("", ex.Message);
                return View();
            }
        }

        [HttpPostAttribute]
        public async Task<IActionResult> Update(PostViewModel post){
            ViewBag.ListCategory = await GetListCategory();
            try{
                if (ModelState.IsValid){
                    var model = new PostModel(){
                        Id = post.Id,
                        Name = post.Name,
                        Alias = post.Alias,
                        Image = post.Image,
                        CategoryId = post.CategoryId,
                        Activated = post.Activated,
                        Content = post.Content
                    };
                    _postRepo.Update(model);
                    return RedirectToAction("Index");
                }
                return View();
            }catch(Exception ex){
                ModelState.AddModelError("", ex.Message);
                return View(post);
            }
        }

        [HttpDeleteAttribute]
        public JsonResult Delete(int id){
            try{
                _postRepo.Delete(id);
                return Json("OK");
            }catch(Exception ex){
                return Json(ex.Message);
            }
        }
    }
}