namespace ZalaBahceV1.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("SiteAyar")]
    public partial class SiteAyar
    {
        [Key]
        public int ayarID { get; set; }

        [StringLength(150)]
        public string logo1 { get; set; }

        [StringLength(150)]
        public string logo2 { get; set; }

        [StringLength(150)]
        public string title { get; set; }

        [StringLength(320)]
        public string aciklama { get; set; }

        public string anahtarKelime { get; set; }

        [StringLength(50)]
        public string ziyaretgün { get; set; }

        [StringLength(50)]
        public string siteoff { get; set; }

        [StringLength(150)]
        public string siteurl { get; set; }

        [StringLength(150)]
        public string firmaadi { get; set; }
    }
}
