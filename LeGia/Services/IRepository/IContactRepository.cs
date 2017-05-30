using LeGia.Services.InfactStructure;
using LeGia.Services.Model;
using System.Collections.Generic;

namespace LeGia.Services.IRepository{
    public interface IContactRepository : IRepositoriesBase<ContactModel>{
        IEnumerable<ContactModel> GetAllContact();
        ContactModel GetContactById(int id);
        void DeleteContact(int id);
        void InsertContact(ContactModel model);
    }
}