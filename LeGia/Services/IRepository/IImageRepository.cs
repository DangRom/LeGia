using System.Collections.Generic;
using LeGia.Services.InfactStructure;
using LeGia.Services.Model;

namespace LeGia.Services.IRepository{
    public interface IImageRepository : IRepositoriesBase<ImageModel>{
        void Insert(ImageModel model);
        bool CheckName(string name);
        IEnumerable<ImageModel> GetAllImage();
        void Update(ImageModel model);
        void Delete(int id);
        ImageModel GetImage(int id);
    }
}