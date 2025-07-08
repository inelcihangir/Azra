// Kişi sınıfı - Object Oriented Programming örneği
class Kisi {
  // Sınıf özellikleri (properties)
  String isim;
  String soyisim;
  int yas;
  
  // Constructor (Yapıcı metod)
  Kisi(this.isim, this.soyisim, this.yas);
  
  // Tam ismi döndüren metod
  String tamIsim() {
    return '$isim $soyisim';
  }
  
  // Kişinin bilgilerini ekranda gösteren metod
  void bilgileriGoster() {
    print('Ad Soyad: ${tamIsim()}');
    print('Yaş: $yas');
    print('Durum: ${yasGrubu()}');
    print('---');
  }
  
  // Yaş grubunu belirleyen metod
  String yasGrubu() {
    if (yas < 13) {
      return 'Çocuk';
    } else if (yas < 20) {
      return 'Genç';
    } else if (yas < 65) {
      return 'Yetişkin';
    } else {
      return 'Yaşlı';
    }
  }
  
  // Reşit olup olmadığını kontrol eden metod
  bool resitMi() {
    return yas >= 18;
  }
  
  // Yaşı artıran metod
  void yasArtir() {
    yas++;
    print('${tamIsim()}\'in yeni yaşı: $yas');
  }
  
  // Kişiyi selamlayan metod
  String selamla() {
    return 'Merhaba, ben ${tamIsim()}. $yas yaşındayım.';
  }
}
