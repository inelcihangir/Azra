// Liste işlemleri ve döngü örnekleri

void listeOrnekleri() {
  // Temel liste oluşturma
  List<String> meyveler = ['elma', 'armut', 'muz', 'çilek', 'üzüm'];
  List<int> sayilar = [5, 12, 8, 23, 1, 67, 34];
  
  print('Meyveler: $meyveler');
  print('Sayılar: $sayilar\n');
  
  // For döngüsü ile liste elemanlarını yazdırma
  print('Meyveleri for döngüsü ile yazdırma:');
  for (int i = 0; i < meyveler.length; i++) {
    print('${i + 1}. ${meyveler[i]}');
  }
  
  print('\nSayıları for-in döngüsü ile yazdırma:');
  for (int sayi in sayilar) {
    print('Sayı: $sayi - Karesi: ${sayi * sayi}');
  }
  
  // Liste işlemleri
  print('\n--- LİSTE İŞLEMLERİ ---');
  
  // Eleman ekleme
  meyveler.add('portakal');
  print('Portakal eklendi: $meyveler');
  
  // Eleman çıkarma
  meyveler.remove('muz');
  print('Muz çıkarıldı: $meyveler');
  
  // Belirli indekse eleman ekleme
  meyveler.insert(2, 'kivi');
  print('2. sıraya kivi eklendi: $meyveler');
  
  // Liste uzunluğu
  print('Meyve sayısı: ${meyveler.length}');
  
  // Liste boş mu kontrol
  print('Liste boş mu? ${meyveler.isEmpty}');
  
  // Belirli elemanı içeriyor mu?
  print('Elma var mı? ${meyveler.contains("elma")}');
  
  // While döngüsü örneği
  print('\n--- WHILE DÖNGÜSÜ ÖRNEĞİ ---');
  int sayac = 1;
  while (sayac <= 5) {
    print('Sayac değeri: $sayac');
    sayac++;
  }
  
  // Do-while döngüsü örneği
  print('\n--- DO-WHILE DÖNGÜSÜ ÖRNEĞİ ---');
  int sayi = 10;
  do {
    print('Sayı: $sayi');
    sayi -= 2;
  } while (sayi > 0);
  
  // Çift sayıları bulma
  List<int> ciftSayilar = [];
  for (int sayi in sayilar) {
    if (sayi % 2 == 0) {
      ciftSayilar.add(sayi);
    }
  }
  print('\nÇift sayılar: $ciftSayilar');
  
  // En büyük sayıyı bulma
  int enBuyuk = sayilar[0];
  for (int sayi in sayilar) {
    if (sayi > enBuyuk) {
      enBuyuk = sayi;
    }
  }
  print('En büyük sayı: $enBuyuk');
  
  // Liste sıralama
  List<int> siraliSayilar = List.from(sayilar);
  siraliSayilar.sort();
  print('Sıralı sayılar: $siraliSayilar');
  
  // Liste filtreleme (where kullanarak)
  var buyukSayilar = sayilar.where((sayi) => sayi > 20).toList();
  print('20\'den büyük sayılar: $buyukSayilar');
  
  // Liste dönüştürme (map kullanarak)
  var kareler = sayilar.map((sayi) => sayi * sayi).toList();
  print('Sayıların kareleri: $kareler');
}

// Özel liste işlemleri
void gelismisListeIslemleri() {
  print('\n=== GELİŞMİŞ LİSTE İŞLEMLERİ ===');
  
  // İç içe listeler (2D Array)
  List<List<int>> matris = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ];
  
  print('Matris:');
  for (int i = 0; i < matris.length; i++) {
    print('Satır $i: ${matris[i]}');
  }
  
  // Map (Anahtar-Değer çiftleri)
  Map<String, int> yaslar = {
    'Ali': 25,
    'Ayşe': 30,
    'Mehmet': 22,
    'Fatma': 28
  };
  
  print('\nYaşlar:');
  yaslar.forEach((isim, yas) {
    print('$isim: $yas yaşında');
  });
  
  // Set (Benzersiz elemanlar)
  Set<String> sehirler = {'İstanbul', 'Ankara', 'İzmir', 'İstanbul'};
  print('\nŞehirler (benzersiz): $sehirler');
}
