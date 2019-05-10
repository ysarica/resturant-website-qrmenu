namespace ZalaBahceV1.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class MüsteriMailDB
    {
        [Key]
        public int mailID { get; set; }

        [StringLength(50)]
        public string AdSoyad { get; set; }

        [StringLength(50)]
        public string tel { get; set; }

        [StringLength(50)]
        public string mail { get; set; }

        [StringLength(350)]
        public string adres { get; set; }
    }
}
