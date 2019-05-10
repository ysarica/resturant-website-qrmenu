namespace ZalaBahceV1.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Hakkimizda")]
    public partial class Hakkimizda
    {
        [Key]
        public int HID { get; set; }

        [StringLength(50)]
        public string baslik1 { get; set; }

        [StringLength(50)]
        public string baslik2 { get; set; }

        public string ozet { get; set; }

        public string aciklama { get; set; }

        [StringLength(50)]
        public string resim1 { get; set; }

        [StringLength(50)]
        public string resim2 { get; set; }

        [StringLength(50)]
        public string resim3 { get; set; }
    }
}
