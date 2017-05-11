using LeGia.Services.InfactStructure;
using LeGia.Services.IRepository;
using LeGia.Services.Model;
using System.Data;
using System.Linq;
using Dapper;
using System;
using System.Collections.Generic;

namespace LeGia.Services.Repository{
    public class PostRepository : RepositoriesBase<PostModel>, IPostRepository
    {
        public bool CheckName(string name)
        {
            var para = new DynamicParameters();
            para.Add("pName", name, DbType.String, ParameterDirection.Input);
            return CheckRecord("findPostName", para);
        }

        public void Delete(int id)
        {
            var para = new DynamicParameters();
            para.Add("pId", id, DbType.Int32, ParameterDirection.Input);
            Execute("deletePost", para);
        }

        public IEnumerable<PostModel> GetAllPost()
        {
            return GetAll("getAllPost", null);
        }

        public PostModel GetPost(int id)
        {
            var para = new DynamicParameters();
            para.Add("pId", id, DbType.Int32, ParameterDirection.Input);
            return GetById("getPostById", para);
        }

        public void Insert(PostModel model)
        {
            Execute("insertPost", GetParams(model));
        }

        public void Update(PostModel model)
        {
            var para = GetParams(model);
            para.Add("pId", model.Id, DbType.Int32, ParameterDirection.Input);
            Execute("updatePost", para);
        }

        private DynamicParameters GetParams(PostModel model){
            var para = new DynamicParameters();
            para.Add("pName", model.Name, DbType.String, ParameterDirection.Input);
            para.Add("pAlias", model.Alias, DbType.String, ParameterDirection.Input);
            para.Add("pImage", model.Image, DbType.String, ParameterDirection.Input);
            para.Add("pCategoryId", model.CategoryId, DbType.Int32, ParameterDirection.Input);
            para.Add("pActivated", model.Activated, DbType.Boolean, ParameterDirection.Input);
            para.Add("pContent", model.Content, DbType.String, ParameterDirection.Input);
            return para;
        }
    }
}