﻿namespace ZalaBahceV1.Models
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class ZalaDB : DbContext
    {
        public ZalaDB()
            : base("name=ZalaDB01")
        {
        }

        public virtual DbSet<Hakkimizda> Hakkimizda { get; set; }
        public virtual DbSet<iletisim> iletisim { get; set; }
        public virtual DbSet<Markalar> Markalar { get; set; }
        public virtual DbSet<MüsteriMailDB> MüsteriMailDB { get; set; }
        public virtual DbSet<NelerVar> NelerVar { get; set; }
        public virtual DbSet<Rezervasyon> Rezervasyon { get; set; }
        public virtual DbSet<SiteAyar> SiteAyar { get; set; }
        public virtual DbSet<Slider> Slider { get; set; }
        public virtual DbSet<Sosyal> Sosyal { get; set; }
        public virtual DbSet<sysdiagrams> sysdiagrams { get; set; }
        public virtual DbSet<Urun> Urun { get; set; }
        public virtual DbSet<UrunKategori> UrunKategori { get; set; }
        public virtual DbSet<UrunResim> UrunResim { get; set; }
        public virtual DbSet<Yorumlar> Yorumlar { get; set; }
        public virtual DbSet<Mail> Mail { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<UrunKategori>()
                .HasMany(e => e.Urun)
                .WithOptional(e => e.UrunKategori)
                .HasForeignKey(e => e.katID);
        }
    }
}
