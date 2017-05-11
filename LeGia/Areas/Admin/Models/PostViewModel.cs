using System.ComponentModel.DataAnnotations;

namespace LeGia.Areas.Admin.Models
{
    public class PostViewModel{
        public int Id {get;set;}
        [Required(ErrorMessage = "Tên không được bỏ trống")]
        [MaxLength(255, ErrorMessage = "Tên không được dài quá 255 ký tự.")]
        public string Name {get; set;}
        [Required(ErrorMessage = "Định danh không được bỏ trống")]
        public string Alias {get; set;}
        public string Image {get; set;}
        [Required(ErrorMessage = "Chủ đề không được bỏ trống")]
        public int CategoryId {get; set;}
        public string CategoryName {get;set;}
        public bool Activated {get; set;}
        public string Content {get; set;}
    }
}