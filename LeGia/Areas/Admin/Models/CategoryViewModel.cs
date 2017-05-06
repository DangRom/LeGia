namespace LeGia.Areas.Admin.Models{
    public class CategoryViewModel{
        public int Id { get; set; }
        public string Name { get; set; }
        public string Alias { get; set; }
        public bool IsMenu { get; set; }
        public bool Activated { get; set; }
        public int Orders { get; set; }
        public string Description { get; set; }
    }
}