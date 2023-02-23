namespace ZalaBahceV1.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Galeri")]
    public partial class Galeri
    {
        public int ID { get; set; }

        [StringLength(150)]
        public string resim { get; set; }

        [StringLength(150)]
        public string Baslik { get; set; }

        [StringLength(250)]
        public string aciklama { get; set; }
    }
}
