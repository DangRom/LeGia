namespace LeGia.Areas.Admin.Models
{
    public class PostViewModel{
        public int Id {get;set;}
        public string Name {get; set;}
        public string Alias {get; set;}
        public string Image {get; set;}
        public int CategoryId {get; set;}
        public bool Activated {get; set;}
        public string Content {get; set;}
    }
}