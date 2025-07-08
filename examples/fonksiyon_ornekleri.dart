// Fonksiyon örnekleri - Dart öğrenme projesi

void main() {
  print('=== FONKSİYON ÖRNEKLERİ ===\n');
  
  // Basit fonksiyonlar
  basitFonksiyonlar();
  
  // Parametreli fonksiyonlar
  parametreliFonksiyonlar();
  
  // Dönüş değerli fonksiyonlar
  donusDegeriliFonksiyonlar();
  
  // İsteğe bağlı parametreler
  istegeBagliParametreler();
  
  // Arrow fonksiyonlar
  arrowFonksiyonlar();
}

void basitFonksiyonlar() {
  print('1. BASİT FONKSİYONLAR');
  print('-' * 22);
  
  // Parametresiz, dönüş değeri olmayan
  selamVer();
  cizgiCek();
  tarihGoster();
  print('');
}

void selamVer() {
  print('Merhaba! Dart öğreniyorum.');
}

void cizgiCek() {
  print('-' * 30);
}

void tarihGoster() {
  print('Bugün: 8 Temmuz 2025');
}

void parametreliFonksiyonlar() {
  print('2. PARAMETRELİ FONKSİYONLAR');
  print('-' * 28);
  
  kisiSelamla('Ahmet');
  yasYaz('Ayşe', 25);
  carpimYap(6, 7);
  print('');
}

void kisiSelamla(String isim) {
  print('Merhaba $isim!');
}

void yasYaz(String isim, int yas) {
  print('$isim $yas yaşında.');
}

void carpimYap(int a, int b) {
  int sonuc = a * b;
  print('$a x $b = $sonuc');
}

void donusDegeriliFonksiyonlar() {
  print('3. DÖNÜŞ DEĞERLİ FONKSİYONLAR');
  print('-' * 31);
  
  int toplam = topla(15, 25);
  print('15 + 25 = $toplam');
  
  double alan = daireAlani(5);
  print('r=5 dairenin alanı: ${alan.toStringAsFixed(2)}');
  
  String mesaj = kisiMesaji('Mehmet', 'öğretmen');
  print(mesaj);
  
  bool sonuc = buyukMu(10, 5);
  print('10 > 5 mi? $sonuc');
  print('');
}

int topla(int x, int y) {
  return x + y;
}

double daireAlani(double yaricap) {
  double pi = 3.14159;
  return pi * yaricap * yaricap;
}

String kisiMesaji(String isim, String meslek) {
  return '$isim bir $meslek.';
}

bool buyukMu(int a, int b) {
  return a > b;
}

void istegeBagliParametreler() {
  print('4. İSTEĞE BAĞLI PARAMETRELER');
  print('-' * 29);
  
  // Varsayılan değerli parametreler
  selamVer2('Ali');
  selamVer2('Fatma', 'Günaydın');
  
  // İsimli parametreler
  hesapOzeti(isim: 'Veli', bakiye: 1500);
  hesapOzeti(isim: 'Zeynep', bakiye: 2300, para_birimi: '€');
  
  print('');
}

void selamVer2(String isim, [String selam = 'Merhaba']) {
  print('$selam $isim!');
}

void hesapOzeti({required String isim, required double bakiye, String para_birimi = '₺'}) {
  print('$isim - Bakiye: $bakiye $para_birimi');
}

void arrowFonksiyonlar() {
  print('5. ARROW FONKSİYONLAR');
  print('-' * 20);
  
  print('5\'in karesi: ${kare(5)}');
  print('Mesaj: ${kisaMesaj()}');
  print('7 çift mi? ${ciftMi(7)}');
  print('15 çift mi? ${ciftMi(14)}');
}

// Arrow function örnekleri
int kare(int x) => x * x;
String kisaMesaj() => 'Dart kolay!';
bool ciftMi(int sayi) => sayi % 2 == 0;
