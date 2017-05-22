namespace LeGia.Models{
    public class PostViewModel{
        public int Id { get; set; }
        public string Name { get; set; }
        public int CategoryId { get; set; }
        public string CategoryName { get; set; }
        public string Alias { get; set; }
        public string Image { get; set; }
        public string ShortContent { get; set; }
        public string Content { get; set; }
    }
}