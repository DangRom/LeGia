using LeGia.Services.InfactStructure;
using LeGia.Services.Model;

namespace LeGia.Services.IRepository{
    public interface IImageRepository : IRepositoriesBase<ImageModel>{
        void Insert(ImageModel model);
    }
}