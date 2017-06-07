using System.ComponentModel.DataAnnotations;

namespace LeGia.Areas.Admin.Models{
    public class UserViewModel{
        [Required(ErrorMessage = "Không được bỏ trống")]
        [MaxLengthAttribute(100, ErrorMessage = "Không được dài quá 25 ký tự")]
        public string UserName { get; set; }
        [Required(ErrorMessage = "Không được bỏ trống")]
        [MaxLengthAttribute(100, ErrorMessage = "Không được dài quá 100 ký tự")]
        public string UserPass { get; set; }
        public string FullName { get; set; }
        public bool Activited { get; set; }
    }
}