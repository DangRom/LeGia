using LeGia.Services.IRepository;
using Microsoft.AspNetCore.Mvc;
using System.Linq;
using LeGia.Models;
using System.Threading.Tasks;
using System;
using LeGia.Commons;

namespace LeGia.Controllers{
    public class PostController : Controller{
        private ICategoryRepository _cateRepo;
        private IPostRepository _postRepo;
        private ICompanyRepository _companyRepo;

        public PostController(ICategoryRepository cateRepo, IPostRepository postRepo, ICompanyRepository companyRepo){
            _cateRepo = cateRepo;
            _postRepo = postRepo;
            _companyRepo = companyRepo;
        }

        [RouteAttribute("/danh-sach/{alias}")]
        public async Task<IActionResult> ListPost(string alias){
            try{
                var postModels = await Task.Factory.StartNew(() => _postRepo.GetPostsForList(alias));
                var post = postModels.Select(p => new PostViewModel{
                    Id = p.Id,
                    Name = p.Name,
                    Alias = p.Alias,
                    Image = p.Image,
                    ShortContent = p.ShortContent
                }).ToList();
                ViewBag.BackLink = GetBackLinkCategory(alias);
                return View(post);
            }catch{
                return View("Error");
            }
        }

        [RouteAttribute("/bai-viet/{alias}")]
        public async Task<IActionResult> Detail(string alias){
            try{
                var postModel = await Task.Factory.StartNew(() => _postRepo.GetPostDetail(alias));
                var post = new PostViewModel(){
                    Id = postModel.Id,
                    Name = postModel.Name,
                    Alias = postModel.Alias,
                    Content = postModel.Content
                };
                ViewBag.BackLink = GetBackLinkPost(alias);
                return View(post);
            }catch{
                return View("Error");
            }
        }

        [Route("/gioi-thieu/{alias}")]
        public async Task<ActionResult> About(string alias){
            try{
                var postModel = await Task.Factory.StartNew(() => _postRepo.GetPostDetail(alias));
                var post = new PostViewModel(){
                    Id = postModel.Id,
                    Name = postModel.Name,
                    Alias = postModel.Alias,
                    Content = postModel.Content
                };
                return View(post);
            }
            catch{
                return View("error");
            }
        }

        [Route("/gioi-thieu")]
        public async Task<IActionResult> AboutOne(){
            try{
                var aboutModel = await Task.Factory.StartNew(() => _companyRepo.GetAbout());
                var about = new CompanyViewModel(){
                    About = aboutModel.About
                };
                return View(about);
            }catch{ return View("error");}
        }

        private BacklinkViewModel GetBackLinkCategory(string alias){
            var backlink = new BacklinkViewModel(){
                Name = SystemVariable.HeadMenu.FirstOrDefault(b => b.Alias == alias).Name.ToString(),
                Alias = alias
            };
            return backlink;
        }

        private BacklinkViewModel GetBackLinkPost(string alias){
            var cateId = SystemVariable.MenuItem.FirstOrDefault(p => p.Alias == alias).CategoryId.ToString();
            var category = SystemVariable.HeadMenu.FirstOrDefault(c => c.Id == int.Parse(cateId));
            var backlink = new BacklinkViewModel(){
                Name = category.Name,
                Alias = category.Alias
            };
            return backlink;
        }
    }
}