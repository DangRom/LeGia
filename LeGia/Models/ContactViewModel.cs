using System.ComponentModel.DataAnnotations;

namespace LeGia.Models{
    public class ContactViewModel{
        public int Id { get; set; }

        [Required]
        [MaxLength(250, ErrorMessage = "Không được dài quá 250 ký tự.")]
        public string FullName { get; set; }

        [Required]
        [MaxLength(250, ErrorMessage = "Không được dài quá 250 ký tự.")]
        public string Phone { get; set; }

        [Required]
        [MaxLength(250, ErrorMessage = "Không được dài quá 250 ký tự.")]
        public string Email { get; set; }

        [Required]
        public string Content { get; set; }
    }
}