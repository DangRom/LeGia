using System;
using LeGia.Services.InfactStructure;
using LeGia.Services.IRepository;
using LeGia.Services.Model;
using Dapper;
using System.Data;
using System.Linq;

namespace LeGia.Services.Repository{
    public class ImageRepository : RepositoriesBase<ImageModel>, IImageRepository
    {
        public void Insert(ImageModel model)
        {
            Execute("insertImage", GetParams(model));
        }

        private DynamicParameters GetParams(ImageModel model){
            var para = new DynamicParameters();
            para.Add("pName", model.Name, DbType.String, ParameterDirection.Input);
            para.Add("pAlias", model.Alias, DbType.String, ParameterDirection.Input);
            para.Add("pIsLogo", model.IsLogo, DbType.Boolean, ParameterDirection.Input);
            para.Add("pIsProject", model.IsProject, DbType.Boolean, ParameterDirection.Input);
            para.Add("pIsSlide", model.IsSlide, DbType.Boolean, ParameterDirection.Input);
            para.Add("pImage", model.Image, DbType.String, ParameterDirection.Input);
            para.Add("pLink", model.Link, DbType.String, ParameterDirection.Input);
            para.Add("pDescription", model.Description, DbType.String, ParameterDirection.Input);
            return para;
        }
    }
}