using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using LeGia.Areas.Admin.Models;
using LeGia.Services.IRepository;
using LeGia.Services.Model;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace LeGia.Areas.Controllers
{
    [Area("Admin")]
    [Authorize]
    public class DashboardController : Controller
    {
        private ICompanyRepository _repo;
        public DashboardController(ICompanyRepository repo){
            _repo = repo;
        }

        public IActionResult Index()
        {
            try{
                var model = _repo.GetCompany();
                var company = new CompanyViewModel(){
                    Name = model.Name,
                    Address = model.Address,
                    Email = model.Email,
                    PhoneNumber = model.PhoneNumber,
                    HotLine = model.HotLine,
                    TaxCode = model.TaxCode,
                    About = model.About
                };
                return View(company);
            }catch(Exception ex){
                ModelState.AddModelError("", ex.Message);
                return View();
            }
        }

        [HttpPostAttribute]
        public IActionResult Index(CompanyViewModel company){
            try{
                if (ModelState.IsValid)
                {
                    var model = new CompanyModel()
                    {
                        Name = company.Name,
                        Address = company.Address,
                        Email = company.Email,
                        PhoneNumber = company.PhoneNumber,
                        HotLine = company.HotLine,
                        TaxCode = company.TaxCode,
                        About = company.About
                    };
                    _repo.Update(model);
                    return RedirectToAction("Index");
                }
                return View();
            }catch(Exception ex){
                ModelState.AddModelError("", ex.Message);
                return View(company);
            }
        }
    }
}