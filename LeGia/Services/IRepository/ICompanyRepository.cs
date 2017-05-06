using LeGia.Services.InfactStructure;
using LeGia.Services.Model;

namespace LeGia.Services.IRepository{
    public interface ICompanyRepository : IRepositoriesBase<CompanyModel>{
        CompanyModel GetCompany();
        void Update(CompanyModel model);
    }
}