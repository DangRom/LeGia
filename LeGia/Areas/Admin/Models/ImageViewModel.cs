namespace LeGia.Areas.Admin.Models{
    public class ImageViewModel{
        public int Id { get; set; }
        public string Name { get; set; }
        public string Alias { get; set; }
        public bool IsLogo { get; set; }
        public bool IsProject { get; set; }
        public bool IsSlide { get; set; }
        public string Link { get; set; }
        public string Image { get; set; }
        public string Description { get; set; }
    }
}