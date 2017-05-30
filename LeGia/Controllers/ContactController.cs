using System.Threading.Tasks;
using LeGia.Commons;
using LeGia.Models;
using LeGia.Services.IRepository;
using Microsoft.AspNetCore.Mvc;
using LeGia.Services.Model;
using System;

namespace LeGia.Controllers{
    public class ContactController: Controller{
        private IContactRepository _contactRepo;
        private ICompanyRepository _companyRepo;
        public ContactController(IContactRepository contactRepo, ICompanyRepository companyRepo){
            _contactRepo = contactRepo;
            _companyRepo = companyRepo;
        }

        [RouteAttribute("/lien-he")]
        public ActionResult Index(){
            try{
                ViewBag.Company = GetCompanyInfo();
                return View();
            }
            catch{
                return View("Error");
            }
        }

        [Route("/lien-he")]
        [HttpPost]
        public async Task<ActionResult> Index(ContactViewModel contact){
            try{
                if (ModelState.IsValid){
                    var contactModel = new ContactModel{
                        Name = contact.FullName,
                        Phone = contact.Phone,
                        Email = contact.Email,
                        Content = contact.Content
                    };
                    await Task.Factory.StartNew(() => _contactRepo.InsertContact(contactModel));
                    ModelState.AddModelError("", "Cảm ơn bạn đã liên hệ với chúng tôi. Chúng tôi sẽ liên lạc đến bạn ngay nhé.");
                    return View(contact);
                }
                return View(contact);
            }
            catch(Exception ex){
                ModelState.AddModelError("", ex.Message);
                return View(contact);
            }
        }

        private async Task<CompanyViewModel> GetCompanyInfo(){
            var company = new CompanyViewModel();
            if(SystemVariable.Company == null){
                var companyModel = await Task.Factory.StartNew(() => _companyRepo.GetCompanyForHome());
                company.Name = companyModel.Name;
                company.Address = companyModel.Address;
                company.PhoneNumber = companyModel.PhoneNumber;
                company.Email = companyModel.Email;
            }else{
                company = SystemVariable.Company;
            }
            return company;
        }
    }
}