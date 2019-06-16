using System;
using System.Linq;
using System.Threading.Tasks;
using LeGia.Models;
using LeGia.Services.IRepository;
using log4net;
using Microsoft.AspNetCore.Mvc;

namespace LeGia.ViewComponents{
    [ViewComponentAttribute(Name = "Service")]
    public class ServiceViewComponent : ViewComponent{
        private IPostRepository _serviceRepo;
        private readonly ILog _logger = LogManager.GetLogger(typeof(ServiceViewComponent));

        public ServiceViewComponent(IPostRepository serviceRepo)
        {
            _serviceRepo = serviceRepo;
        }

        public async Task<IViewComponentResult> InvokeAsync(){
            try{
                var serviceModel = await Task.Factory.StartNew(() => _serviceRepo.GetService());
                var service = serviceModel.Select(s => new ServiceViewModel{
                    Id = s.Id,
                    Name = s.Name,
                    Alias = s.Alias,
                    Image = s.Image
                }).ToList();
                return View(service);
            }
            catch (Exception ex)
            {
                _logger.Error(ex.Message);
                throw;
            }
        }
    }
}