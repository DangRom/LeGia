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

        public IActionResult Index(){
            return View();
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
                if(!_postRepo.CheckName(post.Name)){
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
                return View();
            }catch(Exception ex){
                ModelState.AddModelError("loi : ", ex.Message);
                return View(post);
            }
        }

        public IActionResult Update(){
            return View();
        }
    }
}