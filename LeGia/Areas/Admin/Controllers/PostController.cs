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
        private List<SelectListItem> listCategory => _categoryRepo.GetAllForPost().Select(c => new SelectListItem{
            Value = c.Id.ToString(), Text = c.Name
        }).ToList();
        public PostController(IPostRepository postRepo, ICategoryRepository categoryRepo){
            _postRepo = postRepo;
            _categoryRepo = categoryRepo;
        }

        public IActionResult Index()
        {
            return View();
        }

        public IActionResult New()
        {
            ViewBag.ListCategory = listCategory;
            return View();
        }

        [HttpPostAttribute]
        public IActionResult New(PostViewModel post){
            try{
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

        public IActionResult Update()
        {
            return View();
        }
    }
}