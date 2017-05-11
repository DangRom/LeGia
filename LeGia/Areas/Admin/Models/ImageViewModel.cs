using System.ComponentModel.DataAnnotations;

namespace LeGia.Areas.Admin.Models{
    public class ImageViewModel{
        public int Id { get; set; }
        [Required(ErrorMessage = "Tên không được bỏ trống")]
        [MaxLength(255, ErrorMessage = "Tên không được dài quá 255 ký tự.")]
        public string Name { get; set; }
        [Required(ErrorMessage = "Định danh không được bỏ trống")]
        public string Alias { get; set; }
        public bool IsLogo { get; set; }
        public bool IsProject { get; set; }
        public bool IsSlide { get; set; }
        public string Link { get; set; }
        [Required(ErrorMessage = "Định danh không được bỏ trống")]
        public string Image { get; set; }
        public string Description { get; set; }
    }
}