using System;
using System.Linq;
using System.Threading.Tasks;
using LeGia.Models;
using LeGia.Services.IRepository;
using log4net;
using Microsoft.AspNetCore.Mvc;

namespace LeGia.ViewComponents{
    [ViewComponentAttribute(Name = "TopNews")]
    public class TopNewsViewComponent: ViewComponent{
        private IPostRepository _postRepo;
        private readonly ILog _logger = LogManager.GetLogger(typeof(TopNewsViewComponent));

        public TopNewsViewComponent(IPostRepository postRepo)
        {
            _postRepo = postRepo;
        }

        public async Task<IViewComponentResult> InvokeAsync(){
            try{
                var topnewsModels = await Task.Factory.StartNew(() => _postRepo.GetTopNews());
                var topnews = topnewsModels.Select(t => new PostViewModel{
                    Id = t.Id,
                    Name = t.Name,
                    Alias = t.Alias,
                    ShortContent = t.ShortContent,
                    Image = t.Image
                }).ToList();
                return View(topnews);
            }
            catch (Exception ex)
            {
                _logger.Error(ex.Message);
                throw;
            }
        }
    }
}