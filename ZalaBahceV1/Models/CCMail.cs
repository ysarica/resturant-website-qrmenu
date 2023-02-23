namespace ZalaBahceV1.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("CCMail")]
    public partial class CCMail
    {
        public int ID { get; set; }

        [StringLength(150)]
        public string Adsoyad { get; set; }

        [StringLength(50)]
        public string mail { get; set; }
    }
}
