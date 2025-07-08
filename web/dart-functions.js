// Dart fonksiyonlarının JavaScript karşılıkları

// Kişi sınıfı (Dart'taki Kisi sınıfının JavaScript karşılığı)
class Kisi {
    constructor(isim, soyisim, yas) {
        this.isim = isim;
        this.soyisim = soyisim;
        this.yas = yas;
    }
    
    tamIsim() {
        return `${this.isim} ${this.soyisim}`;
    }
    
    bilgileriGoster() {
        return [
            `Ad Soyad: ${this.tamIsim()}`,
            `Yaş: ${this.yas}`,
            `Durum: ${this.yasGrubu()}`,
            '---'
        ];
    }
    
    yasGrubu() {
        if (this.yas < 13) {
            return 'Çocuk';
        } else if (this.yas < 20) {
            return 'Genç';
        } else if (this.yas < 65) {
            return 'Yetişkin';
        } else {
            return 'Yaşlı';
        }
    }
    
    resitMi() {
        return this.yas >= 18;
    }
    
    selamla() {
        return `Merhaba, ben ${this.tamIsim()}. ${this.yas} yaşındayım.`;
    }
}

// Matematik işlemleri
function topla(a, b) {
    return a + b;
}

function cikar(a, b) {
    return a - b;
}

function carp(a, b) {
    return a * b;
}

function bol(a, b) {
    if (b === 0) {
        return 'Hata: Sıfıra bölme yapılamaz!';
    }
    return (a / b).toFixed(2);
}

function kare(sayi) {
    return sayi * sayi;
}

function kup(sayi) {
    return sayi * sayi * sayi;
}

function karekok(sayi) {
    return sayi >= 0 ? Math.sqrt(sayi) : 0;
}

function faktoriyel(n) {
    if (n <= 1) return 1;
    let sonuc = 1;
    for (let i = 2; i <= n; i++) {
        sonuc *= i;
    }
    return sonuc;
}

function ciftMi(sayi) {
    return sayi % 2 === 0;
}

function maksimum(a, b) {
    return a > b ? a : b;
}

function minimum(a, b) {
    return a < b ? a : b;
}

function mutlakDeger(sayi) {
    return Math.abs(sayi);
}

function ortalama(sayilar) {
    if (sayilar.length === 0) return 0;
    const toplam = sayilar.reduce((acc, sayi) => acc + sayi, 0);
    return toplam / sayilar.length;
}

// Not hesaplama fonksiyonu
function notHesapla(not) {
    if (not >= 90) return 'AA';
    if (not >= 80) return 'BA';
    if (not >= 70) return 'BB';
    if (not >= 60) return 'CB';
    if (not >= 50) return 'CC';
    return 'FF';
}

// Hava durumu tavsiyesi
function havaDurumuTavsiyesi(durum) {
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

// Liste işlemleri
function listeOrnekleri(meyveler, sayilar) {
    let result = [];
    
    result.push(`Meyveler: [${meyveler.join(', ')}]`);
    result.push(`Sayılar: [${sayilar.join(', ')}]`);
    result.push('');
    
    // For döngüsü ile meyveleri yazdırma
    result.push('Meyveleri for döngüsü ile yazdırma:');
    for (let i = 0; i < meyveler.length; i++) {
        result.push(`${i + 1}. ${meyveler[i]}`);
    }
    
    result.push('');
    result.push('Sayıları for-in döngüsü ile yazdırma:');
    for (let sayi of sayilar) {
        result.push(`Sayı: ${sayi} - Karesi: ${sayi * sayi}`);
    }
    
    result.push('');
    result.push('--- LİSTE İŞLEMLERİ ---');
    
    // Liste kopyası oluştur (orijinali değiştirmemek için)
    let meyvelerKopya = [...meyveler];
    
    // Eleman ekleme
    meyvelerKopya.push('portakal');
    result.push(`Portakal eklendi: [${meyvelerKopya.join(', ')}]`);
    
    // Eleman çıkarma
    const muzIndex = meyvelerKopya.indexOf('muz');
    if (muzIndex > -1) {
        meyvelerKopya.splice(muzIndex, 1);
    }
    result.push(`Muz çıkarıldı: [${meyvelerKopya.join(', ')}]`);
    
    // Belirli indekse eleman ekleme
    meyvelerKopya.splice(2, 0, 'kivi');
    result.push(`2. sıraya kivi eklendi: [${meyvelerKopya.join(', ')}]`);
    
    // Liste uzunluğu
    result.push(`Meyve sayısı: ${meyvelerKopya.length}`);
    
    // Liste boş mu kontrol
    result.push(`Liste boş mu? ${meyvelerKopya.length === 0}`);
    
    // Belirli elemanı içeriyor mu?
    result.push(`Elma var mı? ${meyvelerKopya.includes('elma')}`);
    
    // Çift sayıları bulma
    const ciftSayilar = sayilar.filter(sayi => sayi % 2 === 0);
    result.push(`Çift sayılar: [${ciftSayilar.join(', ')}]`);
    
    // En büyük sayıyı bulma
    const enBuyuk = Math.max(...sayilar);
    result.push(`En büyük sayı: ${enBuyuk}`);
    
    // Liste sıralama
    const siraliSayilar = [...sayilar].sort((a, b) => a - b);
    result.push(`Sıralı sayılar: [${siraliSayilar.join(', ')}]`);
    
    // 20'den büyük sayılar
    const buyukSayilar = sayilar.filter(sayi => sayi > 20);
    result.push(`20'den büyük sayılar: [${buyukSayilar.join(', ')}]`);
    
    // Sayıların kareleri
    const kareler = sayilar.map(sayi => sayi * sayi);
    result.push(`Sayıların kareleri: [${kareler.join(', ')}]`);
    
    return result;
}

// Döngü örnekleri
function donguOrnekleri() {
    let result = [];
    
    result.push('--- WHILE DÖNGÜSÜ ÖRNEĞİ ---');
    let sayac = 1;
    while (sayac <= 5) {
        result.push(`Sayac değeri: ${sayac}`);
        sayac++;
    }
    
    result.push('');
    result.push('--- DO-WHILE DÖNGÜSÜ ÖRNEĞİ ---');
    let sayi = 10;
    do {
        result.push(`Sayı: ${sayi}`);
        sayi -= 2;
    } while (sayi > 0);
    
    return result;
}

// Gelişmiş hesaplama örnekleri
function gelismisHesaplamalar() {
    let result = [];
    
    result.push('=== GELİŞMİŞ HESAPLAMALAR ===');
    result.push(`5! = ${faktoriyel(5)}`);
    result.push(`2^8 = ${Math.pow(2, 8)}`);
    result.push(`15 çift mi? ${ciftMi(15)}`);
    result.push(`24 çift mi? ${ciftMi(24)}`);
    result.push(`max(45, 67) = ${maksimum(45, 67)}`);
    result.push(`min(45, 67) = ${minimum(45, 67)}`);
    result.push(`|-15| = ${mutlakDeger(-15)}`);
    
    const notlar = [85, 92, 78, 88, 95];
    result.push(`Notlar: [${notlar.join(', ')}]`);
    result.push(`Ortalama: ${ortalama(notlar).toFixed(1)}`);
    
    return result;
}
