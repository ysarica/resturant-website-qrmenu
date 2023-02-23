namespace ZalaBahceV1.Models
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class ZalaDB : DbContext
    {
        public ZalaDB()
            : base("name=ZalaDB")
        {
        }

        public virtual DbSet<CCMail> CCMail { get; set; }
        public virtual DbSet<DegerlendirmeFormu> DegerlendirmeFormu { get; set; }
        public virtual DbSet<Galeri> Galeri { get; set; }
        public virtual DbSet<GelenMesaj> GelenMesaj { get; set; }
        public virtual DbSet<GonderilenMail> GonderilenMail { get; set; }
        public virtual DbSet<Hakkimizda> Hakkimizda { get; set; }
        public virtual DbSet<Hizmetler> Hizmetler { get; set; }
        public virtual DbSet<iletisim> iletisim { get; set; }
        public virtual DbSet<Kullanici> Kullanici { get; set; }
        public virtual DbSet<Log> Log { get; set; }
        public virtual DbSet<Mail> Mail { get; set; }
        public virtual DbSet<Markalar> Markalar { get; set; }
        public virtual DbSet<MüsteriMailDB> MüsteriMailDB { get; set; }
        public virtual DbSet<NelerVar> NelerVar { get; set; }
        public virtual DbSet<Resim> Resim { get; set; }
        public virtual DbSet<Rezervasyon> Rezervasyon { get; set; }
        public virtual DbSet<Sayac> Sayac { get; set; }
        public virtual DbSet<Sayfalar> Sayfalar { get; set; }
        public virtual DbSet<SayfaSlayt> SayfaSlayt { get; set; }
        public virtual DbSet<SiteAyar> SiteAyar { get; set; }
        public virtual DbSet<SlaytResim> SlaytResim { get; set; }
        public virtual DbSet<Slider> Slider { get; set; }
        public virtual DbSet<Sosyal> Sosyal { get; set; }
        public virtual DbSet<sysdiagrams> sysdiagrams { get; set; }
        public virtual DbSet<Urun> Urun { get; set; }
        public virtual DbSet<UrunKategori> UrunKategori { get; set; }
        public virtual DbSet<UrunResim> UrunResim { get; set; }
        public virtual DbSet<UrunYorum> UrunYorum { get; set; }
        public virtual DbSet<Yorumlar> Yorumlar { get; set; }
        public virtual DbSet<ZiyaretciIstatistik> ZiyaretciIstatistik { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Urun>()
                .HasMany(e => e.UrunResim)
                .WithOptional(e => e.Urun)
                .WillCascadeOnDelete();

            modelBuilder.Entity<UrunKategori>()
                .HasMany(e => e.Urun)
                .WithOptional(e => e.UrunKategori)
                .HasForeignKey(e => e.katID)
                .WillCascadeOnDelete();
        }
    }
}
