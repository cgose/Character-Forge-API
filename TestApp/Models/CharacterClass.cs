//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TestApp.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class CharacterClass
    {
        public int ID { get; set; }
        public int ClassID { get; set; }
        public int CharacterID { get; set; }
        public int Level { get; set; }
    
        public virtual Class Class { get; set; }
    }
}