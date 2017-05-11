using System.ComponentModel.DataAnnotations;

namespace LeGia.Areas.Admin.Models{
    public class CompanyViewModel{
        [Required(ErrorMessage = "Tên không được bỏ trống")]
        [MaxLength(255, ErrorMessage = "Tên không được dài quá 255 ký tự.")]
        public string Name { get; set; }
        public string Address { get; set; }
        public string Email { get; set; }
        public string PhoneNumber { get; set; }
        public string HotLine { get; set; }
        public string TaxCode { get; set; }
        public string About { get; set; }
    }
}