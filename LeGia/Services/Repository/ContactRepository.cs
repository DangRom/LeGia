using System.Collections.Generic;
using LeGia.Services.InfactStructure;
using LeGia.Services.IRepository;
using LeGia.Services.Model;
using System.Data;
using Dapper;

namespace LeGia.Services.Repository
{
    public class ContactRepository : RepositoriesBase<ContactModel>, IContactRepository
    {
        public void DeleteContact(int id){
            var para = new DynamicParameters();
            para.Add("pId", id, DbType.Int32, ParameterDirection.Input);
            Execute("deleteContact", para);
        }

        public IEnumerable<ContactModel> GetAllContact(){
            return GetAll("getAllContact", null);
        }

        public ContactModel GetContactById(int id){
            var para = new DynamicParameters();
            para.Add("pId", id, DbType.Int32, ParameterDirection.Input); 
            return GetById("getContactById", para);
        }

        public void InsertContact(ContactModel model){
            var para = GetParams(model);
            Execute("insertContact", para);
        }

        private DynamicParameters GetParams(ContactModel model){
            var para = new DynamicParameters();
            para.Add("pName", model.Name, DbType.String, ParameterDirection.Input);
            para.Add("pPhone", model.Phone, DbType.String, ParameterDirection.Input);
            para.Add("pEmail", model.Email, DbType.String, ParameterDirection.Input);
            para.Add("pContent", model.Content, DbType.String, ParameterDirection.Input);
            return para;
        }
    }
}