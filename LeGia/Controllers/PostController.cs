using LeGia.Services.IRepository;
using Microsoft.AspNetCore.Mvc;

namespace LeGia.Controllers{
    [RouteAttribute("bai-viet")]
    public class PostController : Controller{
        private ICategoryRepository _cateRepo;
        private IPostRepository _postRepo;

        public PostController(ICategoryRepository cateRepo, IPostRepository postRepo){
            _cateRepo = cateRepo;
            _postRepo = postRepo;
        }

        [RouteAttribute("/{alias}")]
        public IActionResult Index(string alias){
            try{
                var posts = _postRepo.GetPostsForList(alias);
                return View();
            }catch{
                return View("Error");
            }
        }
    }
}