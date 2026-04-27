class Items {
  final int? harga;
  final String? nama;
  final String? img;
  final double? ranting;
  final String? deskripsi;
  final int? stock;

  Items({
    required this.harga,
    required this.nama,
    required this.img,
    required this.ranting,
    required this.deskripsi,
    required this.stock,
  });
      
  factory Items.fromJson(Map<String, dynamic> json) => Items(
    harga: json['harga'],
    nama: json['nama'],
    img: json['img'],
    ranting: json['ranting'],
    deskripsi: json['deskripsi'],
    stock: json['stock'],
  );
}
