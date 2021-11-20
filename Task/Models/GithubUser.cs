using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Task.Models
{
    public class GithubUser
    {
        public string Username { get; set; }
        public int Id { get; set; }
        public string Url { get; set; }
        public string Name { get; set; }
        public string Location { get; set; }
        public string Email { get; set; }
    }
}