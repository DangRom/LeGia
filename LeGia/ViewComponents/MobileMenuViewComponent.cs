using LeGia.Models;
using LeGia.Services.IRepository;
using Microsoft.AspNetCore.Mvc;
using System.Linq;
using System.Threading.Tasks;
using LeGia.Commons;
using log4net;
using System;

namespace LeGia.ViewComponents
{
    [ViewComponent(Name = "MobileMenu")]
    public class MobileMenuViewComponent : ViewComponent{
        private ICategoryRepository _cateRepo;
        private IPostRepository _postRepo;
        private ICompanyRepository _companyRepo;
        private readonly ILog _logger = LogManager.GetLogger(typeof(MobileMenuViewComponent));

        public MobileMenuViewComponent(ICategoryRepository cateRepo, IPostRepository postRepo, ICompanyRepository companyRepo)
        {
            _cateRepo = cateRepo;
            _postRepo = postRepo;
            _companyRepo = companyRepo;
        }

        public async Task<IViewComponentResult> InvokeAsync(){
            try
            {
                var menu = new MenuViewModel();
                var headmenuModel = await Task.Factory.StartNew(() => _cateRepo.GetHeadMenu());
                    var headmenu = headmenuModel.Select(h => new HeadMenuViewModel
                    {
                        Id = h.Id,
                        Name = h.Name,
                        Alias = h.Alias,
                        Orders = h.Orders
                    }).ToList();
                    menu.Heads = headmenu;

                var menuitemModel = await Task.Factory.StartNew(() => _postRepo.GetMenuItem());
                    var menuitem = menuitemModel.Select(i => new MenuItemViewModel
                    {
                        Id = i.Id,
                        Name = i.Name,
                        Alias = i.Alias,
                        CategoryId = i.CategoryId
                    }).ToList();
                    menu.Items = menuitem;

                var companyModel = await Task.Factory.StartNew(() => _companyRepo.GetCompanyForHome());
                    var company = new CompanyViewModel(){
                        Name = companyModel.Name,
                        Address = companyModel.Address,
                        Email = companyModel.Email,
                        PhoneNumber = companyModel.PhoneNumber,
                        TaxCode = companyModel.TaxCode,
                        HotLine = companyModel.HotLine
                    };
                    ViewBag.Company = company;

                    SystemVariable.HeadMenu = headmenu;
                    SystemVariable.MenuItem = menuitem;
                    SystemVariable.Company = company;

                return View(menu);
            }
            catch (Exception ex)
            {
                _logger.Error(ex.Message);
                throw;
            }
        }
    }
}
