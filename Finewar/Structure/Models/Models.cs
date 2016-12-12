using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace Finewar.Structure.Models
{
    #region SUBMIT MODELS
    public class LoginSubmitModel
    {
        [Required]
        [Display(Name = "Username")]
        [DataType(DataType.Text)]
        public string Username { get; set; }

        [Required]
        [DataType(DataType.Password)]
        [Display(Name = "Password")]
        public string Password { get; set; }

        [Display(Name = "Remember me?")]
        public bool RememberMe { get; set; }
    }
    public class UsernameSubmitModel
    {
        [Required]
        [Display(Name = "Username")]
        [DataType(DataType.Text)]
        [StringLength(30, ErrorMessage = "The {0} must be at least {2} characters long.", MinimumLength = 3)]
        public string Username { get; set; }
    }
    public class UserSubmitModel
    {
        [Required]
        [Display(Name = "Username")]
        [DataType(DataType.Text)]
        [StringLength(30, ErrorMessage = "The {0} must be at least {2} characters long.", MinimumLength = 3)]
        public string Username { get; set; }

        [Required]
        [DataType(DataType.Password)]
        [Display(Name = "Password")]
        [StringLength(30, ErrorMessage = "The {0} must be at least {2} characters long.", MinimumLength = 6)]
        public string Password { get; set; }

        [Required]
        [DataType(DataType.Text)]
        [Display(Name = "Name")]
        [StringLength(100, ErrorMessage = "The {0} must be at least {2} characters long.", MinimumLength = 3)]
        public string Name { get; set; }

        [Required]
        [EmailAddress]
        [Display(Name = "Email")]
        [StringLength(100, ErrorMessage = "The {0} must be at least {2} characters long.", MinimumLength = 4)]
        public string Email { get; set; }

        [Display(Name = "Address")]
        [DataType(DataType.Text)]
        [StringLength(500, ErrorMessage = "The {0} must be at least {2} characters long.", MinimumLength = 4)]
        public string Address { get; set; }

        [Display(Name = "City")]
        [DataType(DataType.Text)]
        [StringLength(100, ErrorMessage = "The {0} must be at least {2} characters long.", MinimumLength = 2)]
        public string City { get; set; }

        [Required]
        [Display(Name = "Country")]
        [DataType(DataType.Text)]
        [StringLength(5, MinimumLength = 1)]
        public string Country { get; set; }

        [Required]
        [Display(Name = "DOB")]
        [DataType(DataType.DateTime)]
        public DateTime DOB { get; set; }
    }

    public class UserEditSubmitModel
    {
        [Required]
        [Display(Name = "Field")]
        [DataType(DataType.Text)]
        [StringLength(50)]
        public string Field { get; set; }

        [Required]
        [Display(Name = "Value")]
        [DataType(DataType.Text)]
        [StringLength(50)]
        public string Value { get; set; }

        [Required]
        [Display(Name = "Token")]
        [DataType(DataType.Text)]
        [StringLength(50)]
        public string Token { get; set; }

        [Required]
        public long ID { get; set; }
    }
    public class ListSubmitModel
    {
        [Required]
        [Display(Name = "Title")]
        [DataType(DataType.Text)]
        [StringLength(200)]
        public string Title { get; set; }

        [Required]
        public List<string> Options { get; set; }

        [Required]
        [Display(Name = "Description")]
        [DataType(DataType.Text)]
        [StringLength(1000)]
        public string Description { get; set; }

        [Required]
        [Display(Name = "Token")]
        [DataType(DataType.Text)]
        [StringLength(50)]
        public string Token { get; set; }

        [Required]
        public long UserID { get; set; }
    }
    #endregion SUBMIT MODELS



    #region VIEW MODELS
    public struct UserViewModel {
        public long ID { get; set; }
        public int Status { get; set; }
        public int LoginStatus { get; set; }
        public string Username { get; set; }
        public string Password { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public string Address { get; set; }
        public string City { get; set; }
        public string Country { get; set; }
        public string Token { get; set; }
        public DateTime DOB { get; set; }
        public DateTime LastLogin { get; set; }
        public DateTime CreatedDate { get; set; }
        public DateTime UpdatedDate { get; set; }
    }
    #endregion VIEW MODELS
}