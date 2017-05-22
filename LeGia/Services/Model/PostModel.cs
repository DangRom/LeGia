using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace LeGia.Services.Model
{
    public class PostModel {
        public int Id {get;set;}
        public string Name {get; set;}
        public string Alias {get; set;}
        public string Image {get; set;}
        public int CategoryId {get; set;}
        public string CategoryName {get;set;}
        public bool Activated {get; set;}
        public string ShortContent { get; set; }
        public string Content {get; set;}
    }
}
