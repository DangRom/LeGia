using System.Collections.Generic;
using LeGia.Services.InfactStructure;
using LeGia.Services.Model;

namespace LeGia.Services.IRepository{
    public interface IPostRepository : IRepositoriesBase<PostModel>{
        void Insert(PostModel model);
        void Update(PostModel model);
        void Delete(int id);
        bool CheckName(string name);
        PostModel GetPost(int id);
        IEnumerable<PostModel> GetAllPost();
        IEnumerable<PostModel> GetMenuItem();
        IEnumerable<PostModel> GetPostForFooter();
        IEnumerable<PostModel> GetService();
        IEnumerable<PostModel> GetPostsForHomePage();
        IEnumerable<PostModel> GetPostsForList(string catealias);
    }
}