using System;
using LeGia.Services.InfactStructure;
using LeGia.Services.IRepository;
using LeGia.Services.Model;
using Dapper;
using System.Data;
using System.Linq;
using System.Collections.Generic;

namespace LeGia.Services.Repository{
    public class ImageRepository : RepositoriesBase<ImageModel>, IImageRepository
    {
        public bool CheckName(string name)
        {
            var para = new DynamicParameters();
            para.Add("pName", name, DbType.String, ParameterDirection.Input);
            return CheckRecord("findImageName", para);
        }

        public void Delete(int id)
        {
            var para = new DynamicParameters();
            para.Add("pId", id, DbType.String, ParameterDirection.Input);
            Execute("deleteImage", para);
        }

        public IEnumerable<ImageModel> GetAllImage()
        {
            return GetAll("getAllImage", null);
        }

        public ImageModel GetImage(int id)
        {
            var para = new DynamicParameters();
            para.Add("pId", id, DbType.String, ParameterDirection.Input);
            return GetById("getImageById", para);
        }

        public IEnumerable<ImageModel> GetLogo()
        {
            return GetAll("getLogo", null);
        }

        public IEnumerable<ImageModel> GetSlide()
        {
            return GetAll("getSlide", null);
        }

        public void Insert(ImageModel model)
        {
            Execute("insertImage", GetParams(model));
        }

        public void Update(ImageModel model)
        {
            var para = GetParams(model);
            para.Add("pId", model.Id, DbType.Int32, ParameterDirection.Input);
            Execute("updateImage", para);
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