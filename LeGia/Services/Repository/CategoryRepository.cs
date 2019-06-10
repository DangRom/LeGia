using LeGia.Services.InfactStructure;
using LeGia.Services.IRepository;
using LeGia.Services.Model;
using System.Data;
using System.Linq;
using Dapper;
using System.Collections.Generic;

namespace LeGia.Services.Repository
{
    public class CategoryRepository : RepositoriesBase<CategoryModel>, ICategoryRepository
    {
        public bool CheckName(string name)
        {
            var para = new DynamicParameters();
            para.Add("pName", name, dbType: DbType.String, direction:ParameterDirection.Input);
            return CheckRecord("findCategoryName", para);
        }

        public void Delete(int id)
        {
            var para = new DynamicParameters();
            para.Add("pId", id, dbType: DbType.String, direction:ParameterDirection.Input);
            db.Execute("deleteCategory", para, null, null, commandType: CommandType.StoredProcedure);
        }

        public IEnumerable<CategoryModel> GetAll()
        {
            return db.Query<CategoryModel>("getAllCategory", null, null, false, null, commandType: CommandType.StoredProcedure);
        }

        public IEnumerable<CategoryModel> GetAllForPost()
        {
            return GetAll("getAllCategoryForPost", null);
        }

        public CategoryModel GetById(int id)
        {
            var para = new DynamicParameters();
            para.Add("pId", id, dbType: DbType.Int32, direction:ParameterDirection.Input);
            return db.Query<CategoryModel>("getCategoryById", para, null, false, null, commandType: CommandType.StoredProcedure).SingleOrDefault();
        }

        public IEnumerable<CategoryModel> GetHeadMenu()
        {
            return GetAll("getHeadMenu", null);
        }

        public void Insert(CategoryModel model){
            var para = GetParams(model);
            db.Execute("insertCategory", para, null, null, commandType:CommandType.StoredProcedure);
        }

        public void Update(CategoryModel model)
        {
            var para = GetParams(model);
            para.Add("pId", model.Id, dbType: DbType.Int32, direction: ParameterDirection.Input);
            db.Execute("updateCategory", para, null, null, commandType: CommandType.StoredProcedure);
        }

        private DynamicParameters GetParams(CategoryModel model){
            var para = new DynamicParameters();
            para.Add("pName", model.Name, dbType:DbType.String, direction: ParameterDirection.Input);
            para.Add("pAlias", model.Alias, dbType:DbType.String, direction: ParameterDirection.Input);
            para.Add("pIsMenu", model.IsMenu, dbType:DbType.Boolean, direction: ParameterDirection.Input);
            para.Add("pActivated", model.Activated, dbType:DbType.Boolean, direction: ParameterDirection.Input);
            para.Add("pOrders", model.Orders, dbType:DbType.Int32, direction: ParameterDirection.Input);
            para.Add("pDescription", model.Description, dbType:DbType.String, direction: ParameterDirection.Input);
            return para;
        }
    }
}