namespace ZalaBahceV1.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DegerlendirmeFormu")]
    public partial class DegerlendirmeFormu
    {
        public int ID { get; set; }

        [StringLength(150)]
        public string adsoyad { get; set; }

        [StringLength(50)]
        public string tel { get; set; }

        [StringLength(150)]
        public string mail { get; set; }

        [StringLength(250)]
        public string adres { get; set; }

        [StringLength(50)]
        public string karşılama { get; set; }

        [StringLength(50)]
        public string personel { get; set; }

        [StringLength(50)]
        public string temizlik { get; set; }

        [StringLength(50)]
        public string ücret { get; set; }

        [StringLength(50)]
        public string mekan { get; set; }

        [StringLength(50)]
        public string resturantgenel { get; set; }

        [StringLength(50)]
        public string tekrargelmek { get; set; }

        [StringLength(50)]
        public string tavsiye { get; set; }

        [StringLength(150)]
        public string nerdenduydun { get; set; }

        public string aciklama { get; set; }

        [StringLength(50)]
        public string ulasim { get; set; }

        [StringLength(150)]
        public string tarih { get; set; }

        [StringLength(50)]
        public string okundu { get; set; }
    }
}
