using System;
using LeGia.Services.InfactStructure;
using LeGia.Services.IRepository;
using LeGia.Services.Model;
using System.Data;
using Dapper;
using System.Linq;

namespace LeGia.Services.Repository{
    public class CompanyRepository : RepositoriesBase<CompanyModel>, ICompanyRepository
    {
        public CompanyModel GetCompany()
        {
            return db.Query<CompanyModel>("findCompany", null, null, false, null, CommandType.StoredProcedure).SingleOrDefault();
        }

        public CompanyModel GetCompanyForHome()
        {
            return db.Query<CompanyModel>("getCompanyForHome", null, null, false, null, CommandType.StoredProcedure).SingleOrDefault();
        }

        public void Update(CompanyModel model)
        {
            var para = new DynamicParameters();
            para.Add("pName", model.Name, dbType:DbType.String, direction:ParameterDirection.Input);
            para.Add("pAddress", model.Address, dbType:DbType.String, direction:ParameterDirection.Input);
            para.Add("pEmail", model.Email, dbType:DbType.String, direction:ParameterDirection.Input);
            para.Add("pPhoneNumber", model.PhoneNumber, dbType:DbType.String, direction:ParameterDirection.Input);
            para.Add("pTaxCode", model.TaxCode, dbType:DbType.String, direction:ParameterDirection.Input);
            para.Add("pHotLine", model.HotLine, dbType:DbType.String, direction:ParameterDirection.Input);
            para.Add("pAbout", model.About, dbType:DbType.String, direction:ParameterDirection.Input);
            db.Execute("updateCompany", para, null, null, commandType:CommandType.StoredProcedure);
        }
    }
}