using LeGia.Services.InfactStructure;
using LeGia.Services.IRepository;
using LeGia.Services.Model;
using System.Data;
using Dapper;

namespace LeGia.Services.Repository
{
    public class UserRepository : RepositoriesBase<UserModel>, IUserRepository
    {
        public void ChangePass(string username, string password)
        {
            var para = new DynamicParameters();
            para.Add("pUserName", username, DbType.String, ParameterDirection.Input);
            para.Add("pUserPass", password, DbType.String, ParameterDirection.Input);
            Execute("changepass", para);
        }

        public void InsertUser(UserModel model)
        {
            var para = GetParams(model);
            Execute("insertUser", para);
        }

        public bool Login(string username, string pass)
        {
            var para = new DynamicParameters();
            para.Add("pUserName", username, DbType.String, ParameterDirection.Input);
            para.Add("pUserPass", pass, DbType.String, ParameterDirection.Input);
            return CheckRecord("login", para);
        }

        public void UpdateUser(UserModel model)
        {
            var para = GetParams(model);
            Execute("updateUser", para);
        }

        private DynamicParameters GetParams(UserModel user){
            var para = new DynamicParameters();
            para.Add("pUserName", user.UserName, DbType.String, ParameterDirection.Input);
            para.Add("pUserPass", user.UserPass, DbType.String, ParameterDirection.Input);
            para.Add("pFullName", user.FullName, DbType.String, ParameterDirection.Input);
            para.Add("pActivited", user.Activited, DbType.Boolean, ParameterDirection.Input);
            return para;
        }
    }
}