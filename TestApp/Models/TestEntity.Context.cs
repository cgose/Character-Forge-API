﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class TestEntityContainer : DbContext
    {
        public TestEntityContainer()
            : base("name=TestEntityContainer")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Character> Characters { get; set; }
        public virtual DbSet<Stat> Stats { get; set; }
        public virtual DbSet<CharacterStat> CharacterStats { get; set; }
        public virtual DbSet<Skill> Skills { get; set; }
        public virtual DbSet<CharacterSkill> CharacterSkills { get; set; }
        public virtual DbSet<Class> Classes { get; set; }
        public virtual DbSet<CharacterClass> CharacterClasses { get; set; }
    }
}
