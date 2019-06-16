using System.Threading.Tasks;
using LeGia.Services.IRepository;
using Microsoft.AspNetCore.Mvc;
using System.Linq;
using LeGia.Models;
using System;
using log4net;

namespace LeGia.ViewComponents{
    [ViewComponentAttribute(Name = "PostHome")]
    public class PostHomeViewComponent : ViewComponent{
        private IPostRepository _postRepo;
        private readonly ILog _logger = LogManager.GetLogger(typeof(PostHomeViewComponent));

        public PostHomeViewComponent(IPostRepository postRepo) {
            _postRepo = postRepo;
        }

        public async Task<IViewComponentResult> InvokeAsync(){
            try{
                var postModels = await Task.Factory.StartNew(() => _postRepo.GetPostsForHomePage());
                var posts = postModels.Select(p => new PostViewModel{
                    Id = p.Id,
                    Name = p.Name,
                    Alias = p.Alias,
                    Image = p.Image,
                    ShortContent = p.ShortContent,
                    Content = p.Content
                }).ToList();
                ViewBag.Primary = posts[0];
                posts.Remove(ViewBag.Primary);
                return View(posts);
            }
            catch (Exception ex)
            {
                _logger.Error(ex.Message);
                throw;
            }
        }
    }
}