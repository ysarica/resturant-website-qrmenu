namespace ZalaBahceV1.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Sayfalar")]
    public partial class Sayfalar
    {
        [Key]
        public int SaID { get; set; }

        [StringLength(150)]
        public string baslik { get; set; }

        [StringLength(150)]
        public string baslik2 { get; set; }

        public string icerik { get; set; }

        [StringLength(150)]
        public string resim { get; set; }

        [StringLength(50)]
        public string aktif { get; set; }

        [StringLength(150)]
        public string yer { get; set; }
    }
}
