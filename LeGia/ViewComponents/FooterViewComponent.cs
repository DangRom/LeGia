using LeGia.Services.IRepository;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using LeGia.Commons;
using LeGia.Models;

namespace LeGia.ViewComponents
{
    [ViewComponent(Name = "Footer")]
    public class FooterViewComponent : ViewComponent{
        private ICompanyRepository _companyRepo;
        private IPostRepository _postRepo;
        public FooterViewComponent(ICompanyRepository companyRepo, IPostRepository postRepo){
            _companyRepo = companyRepo;
            _postRepo = postRepo;
        }

        public async Task<IViewComponentResult> InvokeAsync(){
            try{
                var footer = new FooterViewModel();
                if(SystemVariable.Company == null){
                    var companyModel = await Task.Factory.StartNew(() => _companyRepo.GetCompanyForHome());
                    var company = new CompanyViewModel(){
                        Name = companyModel.Name,
                        Address = companyModel.Address,
                        Email = companyModel.Email,
                        PhoneNumber = companyModel.PhoneNumber,
                        TaxCode = companyModel.TaxCode,
                        HotLine = companyModel.HotLine
                    };
                    footer.Company = company;
                    SystemVariable.Company = company;
                }else{
                    footer.Company = SystemVariable.Company;
                }

                if(SystemVariable.MenuItem == null){
                    var menuitemModel = await Task.Factory.StartNew(() => _postRepo.GetPostForFooter());
                    var services = menuitemModel.Select(s => new MenuItemViewModel{
                        Id = s.Id,
                        Name = s.Name,
                        Alias = s.Alias
                    }).ToList();
                    footer.Service = services;
                }else{
                    var services = SystemVariable.MenuItem.Where(s => s.CategoryId == 3).ToList().Take(4);
                    footer.Service = services;
                }

                return View(footer);
            }catch{throw;}
        }
    }
}
