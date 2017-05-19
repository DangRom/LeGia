using LeGia.Models;
using LeGia.Services.IRepository;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace LeGia.ViewComponents
{
    [ViewComponent(Name ="HeadMenu")]
    public class HeadMenuViewComponents : ViewComponent
    {
        private ICategoryRepository _cateRepo;
        private IPostRepository _postRepo;
        public HeadMenuViewComponents(ICategoryRepository cateRepo, IPostRepository postRepo)
        {
            _cateRepo = cateRepo;
            _postRepo = postRepo;
        }

        public async Task<IViewComponentResult> InvokeAsync()
        {
            try
            {
                var menu = new MenuViewModel();
                var headmenuModel = await Task.Factory.StartNew(() => _cateRepo.GetHeadMenu());
                var headmenu = headmenuModel.Select(h => new HeadMenuViewModel
                {
                    Id = h.Id,
                    Name = h.Name,
                    Orders = h.Orders
                }).ToList();
                menu.Heads = headmenu;

                var menuitemModel = await Task.Factory.StartNew(() => _postRepo.GetMenuItem());
                var menuitem = menuitemModel.Select(i => new MenuItemViewModel
                {
                    Id = i.Id,
                    Name = i.Name,
                    CategoryId = i.CategoryId
                }).ToList();
                menu.Items = menuitem;
                return View(menu);
            }
            catch { throw; }
        }
    }
}
