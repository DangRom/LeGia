using LeGia.Services.IRepository;
using Microsoft.AspNetCore.Mvc;
using System.Linq;
using LeGia.Models;
using System.Threading.Tasks;
using System;

namespace LeGia.Controllers{
    public class PostController : Controller{
        private ICategoryRepository _cateRepo;
        private IPostRepository _postRepo;

        public PostController(ICategoryRepository cateRepo, IPostRepository postRepo){
            _cateRepo = cateRepo;
            _postRepo = postRepo;
        }

        [RouteAttribute("/danh-sach/{alias}")]
        public async Task<IActionResult> ListPost(string alias){
            try{
                var postModels = await Task.Factory.StartNew(() => _postRepo.GetPostsForList(alias));
                var post = postModels.Select(p => new PostViewModel{
                    Id = p.Id,
                    Name = p.Name,
                    Alias = p.Alias,
                    Image = p.Image,
                    ShortContent = p.ShortContent
                }).ToList();
                return View(post);
            }catch{
                return View("Error");
            }
        }

        [RouteAttribute("/bai-viet/{alias}")]
        public async Task<IActionResult> Detail(string alias){
            try{
                var postModel = await Task.Factory.StartNew(() => _postRepo.GetPostDetail(alias));
                var post = new PostViewModel(){
                    Id = postModel.Id,
                    Name = postModel.Name,
                    Alias = postModel.Alias,
                    Content = postModel.Content
                };
                return View(post);
            }catch{
                return View("Error");
            }
        }
    }
}