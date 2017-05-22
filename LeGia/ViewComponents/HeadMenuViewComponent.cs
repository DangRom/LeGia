using LeGia.Models;
using LeGia.Services.IRepository;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using LeGia.Commons;

namespace LeGia.ViewComponents
{
    [ViewComponent(Name ="HeadMenu")]
    public class HeadMenuViewComponent : ViewComponent{
        private ICategoryRepository _cateRepo;
        private IPostRepository _postRepo;
        public HeadMenuViewComponent(ICategoryRepository cateRepo, IPostRepository postRepo){
            _cateRepo = cateRepo;
            _postRepo = postRepo;
        }

        public async Task<IViewComponentResult> InvokeAsync(){
            try
            {
                var menu = new MenuViewModel();
                if(SystemVariable.HeadMenu == null){
                    var headmenuModel = await Task.Factory.StartNew(() => _cateRepo.GetHeadMenu());
                    var headmenu = headmenuModel.Select(h => new HeadMenuViewModel{
                        Id = h.Id,
                        Name = h.Name,
                        Orders = h.Orders
                    }).ToList();
                    menu.Heads = headmenu;
                    SystemVariable.HeadMenu = headmenu;
                }else{
                    menu.Heads = SystemVariable.HeadMenu;
                }

                if(SystemVariable.MenuItem == null){
                    var menuitemModel = await Task.Factory.StartNew(() => _postRepo.GetMenuItem());
                    var menuitem = menuitemModel.Select(i => new MenuItemViewModel
                    {
                        Id = i.Id,
                        Name = i.Name,
                        CategoryId = i.CategoryId
                    }).ToList();
                    menu.Items = menuitem;
                    SystemVariable.MenuItem = menuitem;
                }else{
                    menu.Items = SystemVariable.MenuItem;
                }
                return View(menu);
            }
            catch { throw; }
        }
    }
}
