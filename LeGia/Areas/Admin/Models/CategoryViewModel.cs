using System.ComponentModel.DataAnnotations;

namespace LeGia.Areas.Admin.Models{
    public class CategoryViewModel{
        public int Id { get; set; }

        [Required(ErrorMessage ="Tên không được bỏ trống")]
        [MaxLength(255, ErrorMessage ="Tên không được dài quá 255 ký tự.")]
        public string Name { get; set; }
        [Required(ErrorMessage = "Định danh không được bỏ trống")]
        public string Alias { get; set; }
        public bool IsMenu { get; set; }
        public bool Activated { get; set; }
        [Required(ErrorMessage = "Số thứ tự không được bỏ trống")]
        public int Orders { get; set; }
        public string Description { get; set; }
    }
}