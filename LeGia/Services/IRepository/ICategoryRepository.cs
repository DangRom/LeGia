using System.Collections.Generic;
using LeGia.Services.InfactStructure;
using LeGia.Services.Model;

namespace LeGia.Services.IRepository{
    public interface ICategoryRepository: IRepositoriesBase<CategoryModel>{
        void Insert(CategoryModel model);
        IEnumerable<CategoryModel> GetAll();
        CategoryModel GetById(int id);
        void Update(CategoryModel model);
        bool CheckName(string name);
        void Delete(int id);
        IEnumerable<CategoryModel> GetAllForPost();
    }
}