namespace ZalaBahceV1.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Rezervasyon")]
    public partial class Rezervasyon
    {
        [Key]
        public int RezID { get; set; }

        [StringLength(150)]
        public string adsoyad { get; set; }

        [StringLength(50)]
        public string mail { get; set; }

        [StringLength(50)]
        public string telefon { get; set; }

        public string adres { get; set; }

        [StringLength(50)]
        public string hizmet { get; set; }

        [StringLength(50)]
        public string kisi { get; set; }

        public string mesaj { get; set; }

        public string aciklama { get; set; }

        [StringLength(50)]
        public string okundu { get; set; }

        [StringLength(150)]
        public string tarih { get; set; }

        [StringLength(250)]
        public string pTarih { get; set; }

        [StringLength(50)]
        public string pSaat { get; set; }
    }
}
