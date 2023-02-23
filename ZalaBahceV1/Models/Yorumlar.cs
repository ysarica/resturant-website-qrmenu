namespace ZalaBahceV1.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Yorumlar")]
    public partial class Yorumlar
    {
        [Key]
        public int YID { get; set; }

        [StringLength(150)]
        public string resim { get; set; }

        public string yorum { get; set; }

        [StringLength(100)]
        public string adSoyad { get; set; }
    }
}
