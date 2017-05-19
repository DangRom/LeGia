using LeGia.Services.IRepository;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace LeGia.ViewComponents
{
    [ViewComponent(Name = "Footer")]
    public class FooterViewComponents : ViewComponent
    {
        private ICompanyRepository _companyRepo;
        public FooterViewComponents(ICompanyRepository companyRepo) => _companyRepo = companyRepo;

        public async Task<ViewComponentResult> InvokeAsync()
        {

            return View();
        }
    }
}
