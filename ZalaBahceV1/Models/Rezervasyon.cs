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

        [StringLength(50)]
        public string AdSoyad { get; set; }

        [StringLength(50)]
        public string mail { get; set; }

        [StringLength(50)]
        public string telefon { get; set; }

        [StringLength(50)]
        public string cinsiyet { get; set; }

        [StringLength(50)]
        public string dogumTarihi { get; set; }

        public string adres { get; set; }

        [StringLength(50)]
        public string hizmet { get; set; }

        public string mesaj { get; set; }
    }
}
