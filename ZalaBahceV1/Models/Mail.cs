namespace ZalaBahceV1.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Mail")]
    public partial class Mail
    {
        [Key]
        public int MID { get; set; }

        [StringLength(50)]
        public string Host { get; set; }

        [StringLength(50)]
        public string Port { get; set; }

        [Column("Mail")]
        [StringLength(50)]
        public string Mail1 { get; set; }

        [StringLength(50)]
        public string Sifre { get; set; }
    }
}
