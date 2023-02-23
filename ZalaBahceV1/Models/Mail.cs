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

        [Column("mail")]
        [StringLength(50)]
        public string mail1 { get; set; }

        [StringLength(50)]
        public string Sifre { get; set; }

        [StringLength(50)]
        public string secili { get; set; }
    }
}
