namespace ZalaBahceV1.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("UrunKategori")]
    public partial class UrunKategori
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public UrunKategori()
        {
            Urun = new HashSet<Urun>();
        }

        [Key]
        public int kategoriID { get; set; }

        [StringLength(500)]
        public string resim { get; set; }

        [StringLength(250)]
        public string baslik { get; set; }
        public int sira { get; set; }


        public string aciklama { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Urun> Urun { get; set; }
    }
}
