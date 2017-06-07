using LeGia.Services.InfactStructure;
using LeGia.Services.Model;

namespace LeGia.Services.IRepository{
    public interface IUserRepository : IRepositoriesBase<UserModel>{
        bool Login(string username, string pass);
        void InsertUser(UserModel model);
        void UpdateUser(UserModel model);
        void ChangePass(string username, string password);
    }
}