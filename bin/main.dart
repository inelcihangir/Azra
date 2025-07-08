// Ana uygulama dosyası - Dart öğrenme projesi
import '../lib/kisi.dart';
import '../lib/hesaplamalar.dart';
import '../lib/listeler.dart';

void main() {
  print('=== DART ÖĞRENME PROJESİ ===\n');
  
  // 1. Temel Değişkenler ve Veri Tipleri
  print('1. DEĞİŞKENLER VE VERİ TİPLERİ');
  print('-' * 35);
  
  // String (Metin)
  String isim = 'Ahmet';
  var soyisim = 'Yılmaz'; // var ile otomatik tip belirleme
  
  // Sayılar
  int yas = 25;
  double boy = 1.75;
  
  // Boolean (Doğru/Yanlış)
  bool ogrenciMi = true;
  
  print('İsim: $isim $soyisim');
  print('Yaş: $yas');
  print('Boy: ${boy}m');
  print('Öğrenci mi? $ogrenciMi\n');
  
  // 2. Fonksiyon Kullanımı
  print('2. HESAPLAMALAR');
  print('-' * 20);
  
  int sayi1 = 15;
  int sayi2 = 7;
  
  print('$sayi1 + $sayi2 = ${topla(sayi1, sayi2)}');
  print('$sayi1 - $sayi2 = ${cikar(sayi1, sayi2)}');
  print('$sayi1 * $sayi2 = ${carp(sayi1, sayi2)}');
  print('$sayi1 / $sayi2 = ${bol(sayi1, sayi2)}\n');
  
  // 3. Sınıf ve Nesne Kullanımı
  print('3. SINIF VE NESNE ÖRNEĞİ');
  print('-' * 25);
  
  // Kişi nesnesi oluşturma
  Kisi kisi1 = Kisi('Ayşe', 'Demir', 30);
  Kisi kisi2 = Kisi('Mehmet', 'Kaya', 22);
  
  kisi1.bilgileriGoster();
  kisi2.bilgileriGoster();
  
  // Yaş kontrolü
  print('${kisi1.tamIsim()} reşit mi? ${kisi1.resitMi()}');
  print('${kisi2.tamIsim()} reşit mi? ${kisi2.resitMi()}\n');
  
  // 4. Liste İşlemleri ve Döngüler
  print('4. LİSTE İŞLEMLERİ VE DÖNGÜLER');
  print('-' * 32);
  
  listeOrnekleri();
  
  // 5. Koşullu İfadeler
  print('\n5. KOŞULLU İFADELER');
  print('-' * 20);
  
  int not = 85;
  String harfNotu = notHesapla(not);
  print('Not: $not -> Harf notu: $harfNotu');
  
  // Hava durumu kontrolü
  String havaDurumu = 'güneşli';
  print('Hava durumu: $havaDurumu');
  print('Tavsiye: ${havaDurumuTavsiyesi(havaDurumu)}');
  
  print('\n=== PROJE TAMAMLANDI ===');
}

// Basit not hesaplama fonksiyonu
String notHesapla(int not) {
  if (not >= 90) {
    return 'AA';
  } else if (not >= 80) {
    return 'BA';
  } else if (not >= 70) {
    return 'BB';
  } else if (not >= 60) {
    return 'CB';
  } else if (not >= 50) {
    return 'CC';
  } else {
    return 'FF';
  }
}

// Hava durumu tavsiyesi
String havaDurumuTavsiyesi(String durum) {
  switch (durum.toLowerCase()) {
    case 'güneşli':
      return 'Dışarı çıkmak için harika bir gün!';
    case 'yağmurlu':
      return 'Şemsiye almayı unutma!';
    case 'karlı':
      return 'Sıcak giyinmeyi unutma!';
    case 'bulutlu':
      return 'Hafif bir ceket al!';
    default:
      return 'Hava durumunu kontrol et!';
  }
}
