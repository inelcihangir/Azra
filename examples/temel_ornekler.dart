// Temel değişken ve veri tipi örnekleri
import '../lib/hesaplamalar.dart';

void main() {
  print('=== TEMEL DART ÖRNEKLERİ ===\n');
  
  // Değişken türleri
  degiskenOrnekleri();
  
  // String işlemleri
  stringIslemleri();
  
  // Sayı işlemleri
  sayiIslemleri();
  
  // Boolean işlemleri
  booleanIslemleri();
  
  // Hesaplama örnekleri
  hesaplamaOrnekleri();
}

void degiskenOrnekleri() {
  print('1. DEĞİŞKEN TÜRLERİ');
  print('-' * 20);
  
  // var - otomatik tip belirleme
  var isim = 'Dart';
  var sayi = 42;
  var ondalik = 3.14;
  
  // Açık tip belirtme
  String dil = 'Dart';
  int yas = 25;
  double pi = 3.14159;
  bool aktif = true;
  
  print('var ile: $isim, $sayi, $ondalik');
  print('Açık tip ile: $dil, $yas, $pi, $aktif');
  
  // dynamic - herhangi bir tip
  dynamic degisken = 'Metin';
  print('Dynamic başta: $degisken');
  degisken = 123;
  print('Dynamic sonra: $degisken\n');
}

void stringIslemleri() {
  print('2. STRİNG İŞLEMLERİ');
  print('-' * 20);
  
  String metin1 = 'Dart';
  String metin2 = 'Programlama';
  
  // String birleştirme
  String birlesik = metin1 + ' ' + metin2;
  print('Birleştirme: $birlesik');
  
  // String interpolation
  print('Interpolation: $metin1 ile $metin2 öğreniyorum');
  
  // String metodları
  print('Büyük harf: ${metin1.toUpperCase()}');
  print('Küçük harf: ${metin2.toLowerCase()}');
  print('Uzunluk: ${metin1.length}');
  print('İçeriyor mu? ${metin2.contains("gram")}');
  print('Başlıyor mu? ${metin1.startsWith("Da")}');
  
  // Çok satırlı string
  String cokSatir = '''
Bu bir
çok satırlı
string örneğidir.
''';
  print('Çok satırlı: $cokSatir');
}

void sayiIslemleri() {
  print('3. SAYI İŞLEMLERİ');
  print('-' * 17);
  
  int tamSayi = 42;
  double ondalikSayi = 3.14;
  
  print('Tam sayı: $tamSayi');
  print('Ondalık sayı: $ondalikSayi');
  
  // Aritmetik işlemler
  print('Toplama: ${tamSayi + 8}');
  print('Çıkarma: ${tamSayi - 8}');
  print('Çarpma: ${tamSayi * 2}');
  print('Bölme: ${tamSayi / 5}');
  print('Tam bölme: ${tamSayi ~/ 5}');
  print('Mod: ${tamSayi % 5}');
  
  // Sayı dönüşümleri
  String sayiMetin = '123';
  int donusum1 = int.parse(sayiMetin);
  double donusum2 = double.parse('45.67');
  
  print('String to int: $donusum1');
  print('String to double: $donusum2');
  print('Int to string: ${tamSayi.toString()}\n');
}

void booleanIslemleri() {
  print('4. BOOLEAN İŞLEMLERİ');
  print('-' * 20);
  
  bool dogru = true;
  bool yanlis = false;
  
  // Mantıksal işlemler
  print('VE (&&): ${dogru && yanlis}');
  print('VEYA (||): ${dogru || yanlis}');
  print('DEĞİL (!): ${!dogru}');
  
  // Karşılaştırma işlemleri
  int a = 10;
  int b = 20;
  
  print('$a == $b: ${a == b}');
  print('$a != $b: ${a != b}');
  print('$a < $b: ${a < b}');
  print('$a > $b: ${a > b}');
  print('$a <= $b: ${a <= b}');
  print('$a >= $b: ${a >= b}\n');
}
