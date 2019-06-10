using System;
using System.Collections.Generic;
using System.Security.Claims;
using System.Threading.Tasks;
using LeGia.Areas.Admin.Models;
using LeGia.Services.IRepository;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Authentication.Cookies;
using LeGia.Areas.Controllers;

namespace LeGia.Areas.Admin.Controllers{
    [AreaAttribute("Admin")]
    public class AccountController : Controller{
        private IUserRepository _userRepo;
        public AccountController(IUserRepository userRepo) => _userRepo = userRepo;

        public IActionResult Login(){
            var logineduser = HttpContext.User;
            if(!string.IsNullOrEmpty(logineduser.Identity.Name)){
                return Redirect("/Admin/Dashboard/Index");
            }
            return View();
        }

        [HttpPost]
        public async Task<IActionResult> Login(LoginViewModel login){
            try{
                if(ModelState.IsValid){
                    if(await Task.Factory.StartNew(() => _userRepo.Login(login.UserName, login.UserPass))){
                        var claim = new List<Claim>{
                            new Claim(ClaimTypes.Name, login.UserName)
                        };
                        var userIdentity = new ClaimsIdentity(claim, CookieAuthenticationDefaults.AuthenticationScheme);
                        ClaimsPrincipal principal = new ClaimsPrincipal(userIdentity);
                        await HttpContext.SignInAsync(
                            CookieAuthenticationDefaults.AuthenticationScheme,
                            principal);
                        //return Redirect("/Admin/Dashboard/Index");
                        return RedirectToAction("Index", "Dashboard");
                    }   
                    ModelState.AddModelError("", "Sai user hoac password");
                    return View(login);
                }
                return View();
            }catch(Exception ex){ 
                ModelState.AddModelError("", ex.Message);
                return View(login);
            }
        }

        [HttpGet]
        public async Task<IActionResult> LogOut(){
            await HttpContext.SignOutAsync(CookieAuthenticationDefaults.AuthenticationScheme);
	        return Redirect("/admin");
        }

        [HttpGet]
        public IActionResult ChangePassword(){
            var logineduser = HttpContext.User;
            var user = new ChangePasswordViewModel(){
                UserName = logineduser.Identity.Name
            };
            return View(user);
        }

        [HttpPost]
        public async Task<IActionResult> ChangePassword(ChangePasswordViewModel changepass){
            try{
                if(ModelState.IsValid){
                    if(await Task.Factory.StartNew(() => _userRepo.Login(changepass.UserName, changepass.OldPassword))){
                        await Task.Factory.StartNew(() => _userRepo.ChangePass(changepass.UserName, changepass.NewPassword));
                        return Redirect("/admin/dashboard/index")    ;
                    }
                    ModelState.AddModelError("", "Mật khẩu cũ không đúng.");
                }
                return View();
            }catch(Exception ex){
                ModelState.AddModelError("", ex.Message);
                return View();
            }
        }
    }
}