//
//  Product.swift
//  AlerjiAI
//
//  Created by Ibrahim Cicek on 27.05.2024.
//

import Foundation

struct Product: Codable {
    var id: String?
    var name: String?
    var logo: String?
    var ingredients: [String]?
    
}




let biscolataStix = Product(
    name: "biscolata-stix",
    logo: "icBiscolata",
    ingredients: [
        "Sütlü çikolata (%50)",
        "şeker",
        "kakao yağı",
        "tam yağlı süt tozu",
        "kakao kitlesi",
        "peyniraltı suyu tozu (süt ürünü)",
        "yağsız süt tozu",
        "emülgatör (ayçiçek lesitini)",
        "aroma verici",
        "bisküvi (%50)",
        "buğday unu (gluten içerir)",
        "bitkisel yağ (palm)",
        "glukoz-fruktoz şurubu",
        "şeker",
        "peyniraltı suyu tozu (süt ürünü)",
        "tuz",
        "kabartıcılar (amonyum bikarbonat, sodyum asit pirofosfat, sodyum bikarbonat)",
        "emülgatör (ayçiçek lesitini)",
        "eser miktarda fındık",
        "antep fıstığı",
        "badem",
        "yer fıstığı",
        "ceviz",
        "susam vb. tohum",
        "soya lesitini",
        "yumurta"
    ]
)

let etiBalikKraker = Product(
    name: "eti-balik-kraker",
    logo: "icBalık",
    ingredients: [
        "Buğday unu",
        "bitkisel yağ (palm, ayçiçek, pamuk, kanola)",
        "kabartıcılar (amonyum hidrojen karbonat, sodyum hidrojen karbonat)",
        "aroma vericiler",
        "şeker",
        "invert şeker şurubu",
        "tuz",
        "mısır unu (%0,9)",
        "un işlem maddesi (sodyum metabisülfit)",
        "hardal",
        "susam",
        "süt ürünü",
        "yumurta"
    ]
)

let etiBrownieGoldVisneli = Product(
    name: "eti-brownie-gold-visneli",
    logo: "icBrownieGold",
    ingredients: [
        "Kek %83,5",
        "bitkisel yağ (palm)",
        "şeker",
        "buğday unu (gluten içerir)",
        "yumurta",
        "nem vericiler (gliserol, sorbitol)",
        "invert şeker şurubu",
        "bitter çikolata %4,2",
        "şeker",
        "kakao kitlesi",
        "kakao yağı",
        "yağı azaltılmış kakao tozu",
        "emülgatörler (ayçiçek lesitini, poligliserol polirisinolat)",
        "aroma verici (vanilin)",
        "kakao kuru maddesi en az %52'dir",
        "yağı azaltılmış kakao tozu",
        "tuz",
        "emülgatörler (yağ asitlerinin mono ve digliseritleri, yağ asitlerinin poligliserol esterleri)",
        "kabartıcılar (sodyum asit pirofosfat, sodyum hidrojen karbonat)",
        "koruyucu (potasyum sorbat)",
        "aroma verici",
        "asitlik düzenleyici (sitrik asit)",
        "vişne sosu %16,5",
        "invert şeker şurubu",
        "nem vericiler (sorbitol, gliserol)",
        "vişne pulpu %15,5",
        "şeker",
        "elma tozu",
        "asitlik düzenleyiciler (sitrik asit, malik asit, trisodyum sitrat)",
        "kıvam arttırıcı (pektin)",
        "renklendirici (pancar kökü kırmızısı)",
        "modifiye patates nişastası",
        "aroma verici",
        "tuz",
        "koruyucu (potasyum sorbat)",
        "eser miktarda fındık",
        "soya ürünü",
        "süt ürünü"
    ]
)

let etiBrownieIntense = Product(
    name: "eti-brownie-intense",
    logo: "icBrownieIntense",
    ingredients: [
        "Kek %52",
        "bitkisel yağ (palm, ayçiçek, pamuk, kanola)",
        "şeker",
        "buğday unu (gluten içerir)",
        "yumurta",
        "nem vericiler (gliserol, sorbitol)",
        "bitter çikolata %5",
        "şeker",
        "kakao kitlesi",
        "kakao yağı",
        "yağı azaltılmış kakao tozu",
        "emülgatörler (ayçiçek lesitini, poligliserol polirisinolat)",
        "aroma verici (vanilin)",
        "kakao kuru maddesi en az %52'dir",
        "invert şeker şurubu",
        "yağı azaltılmış kakao tozu",
        "tuz",
        "modifiye patates nişastası",
        "emülgatörler (yağ asitlerinin mono ve digliseridleri, yağ asitlerinin poligliserol esterleri)",
        "kabartıcılar (sodyum asit pirofosfat, sodyum hidrojen karbonat)",
        "koruyucu (sorbik asit)",
        "aroma verici",
        "kıvam arttırıcı (ksantan gam)",
        "asitlik düzenleyici (sitrik asit)",
        "sütlü çikolata %29",
        "şeker",
        "kakao kitlesi",
        "kakao yağı",
        "peynir altı suyu tozu (süt ürünü)",
        "tam yağlı süt tozu",
        "bitkisel yağ (palm, shea)",
        "emülgatörler (ayçiçek lesitini, poligliserol polirisinolat)",
        "aroma verici (vanilin)",
        "kakao kuru maddesi en az %29,2",
        "süt kuru maddesi en az %26,8'dir",
        "çikolatalı krema %17",
        "bitter çikolata %18,5",
        "sütlü çikolata %18,5",
        "invert şeker şurubu",
        "şeker",
        "nem vericiler (sorbitol, gliserol)",
        "yağsız süt tozu",
        "peynir altı suyu tozu (süt ürünü)",
        "kıvam arttırıcı (pektin)",
        "emülgatör (yağ asitlerinin mono ve digliseridleri)",
        "tuz",
        "stabilizörler (trikalsiyum sitrat, trisodyum sitrat)",
        "koruyucu (sorbik asit)",
        "bitter çikolata %2",
        "şeker",
        "kakao kitlesi",
        "kakao yağı",
        "laktoz monohidrat (süt ürünü)",
        "tereyağ (süt ürünü)",
        "yağı azaltılmış kakao tozu",
        "emülgatörler (ayçiçek lesitini, poligliserol polirisinolat)",
        "aroma verici (vanilin)",
        "kakao kuru maddesi en az %52,9'dur",
        "yumurta",
        "eser miktarda antep fıstığı",
        "badem",
        "fındık",
        "soya ürünü",
        "yer fıstığı"
    ]
)

let etiCanga = Product(
    name: "eti-canga",
    logo: "icCanga",
    ingredients: [
        "Sütlü Çikolata %44",
        "şeker",
        "kakao yağı",
        "süt tozu",
        "peynir altı suyu tozu (süt ürünü)",
        "kakao",
        "emülgatör (ayçiçek lesitini)",
        "aroma verici (vanilin)",
        "Yer fıstığı %26",
        "Nuga %22",
        "glikoz şurubu",
        "şeker",
        "yer fıstığı %7",
        "tam hidrojenize bitkisel yağ (palm)",
        "kakao tozu",
        "kakao yağı",
        "nem verici (sorbitol)",
        "yumurta akı tozu",
        "emülgatör (ayçiçek lesitini)",
        "Karamel %8",
        "glukoz şurubu",
        "tam hidrojenize bitkisel yağ (palm)",
        "süt tozu",
        "nem verici (sorbitol)",
        "şeker",
        "tuz",
        "asitliği düzenleyici (sodyum hidrojen karbonat)",
        "aroma vericiler",
        "emülgatör (ayçiçek lesitini)"
    ]
)

let etiPopkekBitter = Product(
    name: "eti-popkek-bitter",
    logo:"icPopkekBtr",
    ingredients: [
        "Bitter Çikolatalı Kek %70,9",
        "buğday unu (gluten)",
        "bitkisel yağ (palm, tam hidrojenize palm)",
        "yumurta",
        "şeker",
        "nem vericiler (gliserol, sorbitol)",
        "invert şeker şurubu",
        "yağı azaltılmış kakao tozu",
        "bitter çikolata %2",
        "şeker",
        "kakao kitlesi",
        "kakao yağı",
        "yağı azaltılmış kakao tozu",
        "emülgatörler (ayçiçek lesitini, poligliserol polirisinoleat)",
        "aroma verici (vanilin)",
        "kakao kuru maddesi en az %52,7'dir",
        "emülgatörler (yağ asitlerinin mono ve digliseritleri, yağ asitlerinin poligliserol esterleri, ayçiçek lesitini)",
        "tuz",
        "kabartıcılar (sodyum asit pirofosfat, sodyum hidrojen karbonat)",
        "aroma vericiler",
        "koruyucu (sorbik asit)",
        "peynir altı suyu tozu (süt ürünü)",
        "asitlik düzenleyici (sitrik asit)",
        "kıvam arttırıcı (ksantan gam)",
        "Kakao Sosu %16,4",
        "şeker",
        "invert şeker şurubu",
        "yağsız süt tozu",
        "nem vericiler (gliserol, sorbitol)",
        "yağı azaltılmış kakao tozu %7,2",
        "bitkisel yağ (palm, ayçiçek, pamuk, kanola, tam hidrojenize palm)",
        "modifiye nişasta",
        "peynir altı suyu tozu (süt ürünü)",
        "koruyucu (potasyum sorbat)",
        "tuz",
        "emülgatör (ayçiçek lesitini)",
        "asitlik düzenleyici (sitrik asit)",
        "aroma verici",
        "Kakaolu Kaplama %12,7",
        "şeker",
        "bitkisel yağ (tam hidrojenize palm)",
        "yağı azaltılmış kakao tozu %13,4",
        "peynir altı suyu tozu (süt ürünü)",
        "emülgatör (ayçiçek lesitini)",
        "aroma verici",
        "eser miktarda fındık",
        "soya ürünü",
        "yer fıstığı"
    ]
)

let etiPopkekLimonlu = Product(
    name: "eti-popkek-limonlu",
    logo: "icPopkekLmn",
    ingredients: [
        "Kek %67",
        "buğday unu (gluten içerir)",
        "şeker",
        "yumurta",
        "bitkisel yağ (palm, ayçiçek, pamuk, kanola)",
        "invert şeker şurubu",
        "nem verici (gliserol)",
        "peynir altı suyu tozu (süt ürünü)",
        "emülgatörler (yağ asitlerinin mono ve digliseridleri, yağ asitlerinin poligliserol esterleri)",
        "tuz",
        "kabartıcılar (sodyum asit pirofosfat, sodyum hidrojen karbonat)",
        "koruyucu (sorbik asit)",
        "doğal limon aroma vericisi",
        "aroma verici",
        "asitlik düzenleyici (sitrik asit)",
        "kıvam arttırıcı (ksantan gam)",
        "Limon Sosu %18",
        "şeker",
        "invert şeker şurubu",
        "bitkisel yağ (palm, ayçiçek, pamuk, kanola)",
        "peynir altı suyu tozu (süt ürünü)",
        "nem vericiler (sorbitol, gliserol)",
        "modifiye nişasta",
        "limon pulpu %0,9",
        "tuz",
        "emülgatör (yağ asitlerinin mono ve digliseridlerinin laktik asit esterleri)",
        "asitlik düzenleyici (sitrik asit)",
        "koruyucu (sorbik asit)",
        "renklendirici (beta karoten)",
        "doğal limon aroma vericisi",
        "kaplama %15",
        "tam hidrojenize bitkisel yağ (palm)",
        "şeker",
        "süt tozu",
        "peynir altı suyu tozu (süt ürünü)",
        "laktoz (süt ürünü)",
        "fındık yağı",
        "emülgatör (ayçiçek lesitini)",
        "doğal limon aroma vericisi",
        "aroma verici",
        "renklendirici (beta karoten)",
        "şeker",
        "buğday unu (gluten içerir)",
        "bitkisel yağ (palm, tam hidrojenize palm, ayçiçek, pamuk, kanola)",
        "yumurta",
        "invert şeker şurubu",
        "peynir altı suyu tozu (süt ürünü)",
        "nem vericiler (gliserol, sorbitol)",
        "tam yağlı süt tozu",
        "laktoz (süt ürünü)",
        "emülgatörler (yağ asitlerinin mono ve digliseritleri, yağ asitlerinin poligliserol esterleri, ayçiçek lesitini, yağ asitlerinin mono ve digliseritlerinin laktik asit esterleri)",
        "tuz",
        "modifiye patates nişastası",
        "kabartıcılar (sodyum asit pirofosfat, sodyum hidrojen karbonat)",
        "limon pulpu %0,2",
        "koruyucu (sorbik asit)",
        "aroma vericiler",
        "fındık yağı",
        "asitlik düzenleyici (sitrik asit)",
        "renklendirici (beta karoten)",
        "kıvam arttırıcı (ksantan gam)",
        "soya ürünü",
        "susam",
        "yer fıstığı"
    ]
)

let etiPopkekVisneli = Product(
    name: "eti-popkek-visneli",
    logo: "icPopkekVsn",
    ingredients: [
        "Kek %68",
        "buğday unu (gluten içerir)",
        "şeker",
        "yumurta",
        "bitkisel yağ (palm, ayçiçek, pamuk, kanola)",
        "nem vericiler (sorbitol, gliserol)",
        "yağı azaltılmış kakao tozu %2,7",
        "invert şeker şurubu",
        "peynir altı suyu tozu (süt ürünü)",
        "emülgatörler (yağ asitlerinin mono ve digliseritleri, yağ asitlerinin poligliserol esterleri)",
        "tuz",
        "kabartıcılar (sodyum asit pirofosfat, sodyum hidrojen karbonat)",
        "aroma vericiler",
        "koruyucu (sorbik asit)",
        "asitlik düzenleyici (sitrik asit)",
        "kıvam arttırıcı (ksantan gam)",
        "Vişne Sosu %16",
        "şeker",
        "invert şeker şurubu",
        "bitkisel yağ (palm, ayçiçek, pamuk, kanola)",
        "peynir altı suyu tozu (süt ürünü)",
        "nem vericiler (sorbitol, gliserol)",
        "yağı azaltılmış kakao tozu",
        "vişne pulpu %2,4",
        "modifiye patates nişastası",
        "tuz",
        "emülgatör (yağ asitlerinin mono ve digliseritlerinin laktik asit esterleri)",
        "aroma verici",
        "asitlik düzenleyici (sitrik asit)",
        "koruyucu (sorbik asit)",
        "Kakaolu Kaplama %14",
        "şeker",
        "tam hidrojenize bitkisel yağ (palm)",
        "peynir altı suyu tozu (süt ürünü)",
        "süt tozu",
        "yağı azaltılmış kakao tozu %5,4",
        "emülgatör (ayçiçek lesitini, poligliserol polirisinolat)",
        "aroma verici",
        "Dekor Kaplama %2",
        "tam hidrojene bitkisel yağ (palm)",
        "fındık yağı",
        "şeker",
        "süt tozu",
        "laktoz (süt ürünü)",
        "peynir altı suyu tozu (süt ürünü)",
        "emülgatör (ayçiçek lesitini)",
        "aroma verici",
        "eser miktarda fındık",
        "soya ürünü",
        "susam",
        "yer fıstığı"
    ]
)


let etiSusamliCubuk = Product(
    name: "eti-susamli-cubuk",
    logo: "icSusamli",
    ingredients: [
        "Buğday Unu (Gluten içerir)",
        "Susam %15",
        "Bitkisel Yağ (Palm, Ayçiçek, Pamuk, Kanola)",
        "Peynir Altı Suyu Tozu (Süt Ürünü)",
        "İnvert Şeker Şurubu",
        "Tuz",
        "Kabartıcılar (Amonyum Hidrojen Karbonat, Sodyum Hidrojen Karbonat)",
        "Asitlik Düzenleyici (Sodyum Hidroksit)",
        "Yaş Maya",
        "Un İşlem Maddesi (Sodyum Metabisülfit)",
        "yumurta"
    ]
)

let etiTopkekFindikliKakaolu = Product(
    name: "eti-topkek-findikli-kakaolu",
    logo: "icTopkek",
    ingredients: [
        "Yumurta",
        "Şeker",
        "Buğday Unu (Gluten içerir)",
        "Bitkisel Yağ (Palm, Ayçiçek, Pamuk, Kanola)",
        "Fındık %5,7",
        "İnvert Şeker Şurubu",
        "Nem Vericiler (Gliserol, Sorbitol)",
        "Yağı Azaltılmış Kakao Tozu %2,7",
        "Yağsız Süt Tozu",
        "Emülgatörler (Yağ Asitlerinin Mono ve Digliseridleri, Yağ Asitlerinin Poligliserol Esterleri)",
        "Tuz",
        "Kabartıcılar (Sodyum Asit Pirofosfat, Sodyum Hidrojen Karbonat)",
        "Koruyucu (Potasyum Sorbat)",
        "Aroma Verici",
        "Asitlik Düzenleyici (Sitrik Asit)",
        "Kıvam Arttırıcı (Ksantan Gam)"
    ]
)

let etiTutku = Product(
    name: "eti-tutku",
    logo: "icTutku",
    ingredients: [
        "Buğday Unu (Gluten içerir)",
        "Bitkisel Yağ (Palm, Ayçiçek, Pamuk, Kanola)",
        "Şeker",
        "Mısır Nişastası",
        "Yağı Azaltılmış Kakao Tozu %1",
        "Tuz",
        "Kabartıcılar (Sodyum Asit Pirofosfat, Sodyum Hidrojen Karbonat)",
        "Aroma Vericiler",
        "Krema %30",
        "Şeker",
        "Bitkisel Yağ (Palm, Ayçiçek, Pamuk, Kanola)",
        "Susam Ezmesi",
        "Yağı Azaltılmış Kakao Tozu %6",
        "Fındık Püresi",
        "Laktoz (Süt Ürünü)",
        "Keçiboynuzu Unu",
        "Emülgatör (Ayçiçek Lesitini)",
        "Aroma Vericiler",
        "Tuz",
        "Eser miktarda Soya ürünü",
        "Yer Fıstığı",
        "Yumurta"
    ]
)

let hariboAltinAyicik = Product(
    name: "haribo-altin-ayicik",
    ingredients: [
        "Glikoz Şurubu",
        "Şeker",
        "Su",
        "Sığır Jelatini",
        "Dekstroz",
        "Meyve suyu %1,5 (elma, çilek, ahududu, portakal, limon, ananas)",
        "Asitlik Düzenleyici (Sitrik Asit)",
        "Meyve ve bitki konsantreleri (aspir, alg, elma, mürver, portakal, siyah kuşüzümü, kivi, limon, kırmızı kuşüzümü, mango, marakuya, kırmızı üzüm)",
        "Aroma Vericiler (ahududu, çilek, elma, ananas, limon, portakal)",
        "Palm Yağı",
        "Parlatıcı (karnauba mumu, bal mumu)",
        "Mürver Ekstraktı"
    ]
)

let hariboEkşiMix = Product(
    name: "haribo-eksi-mix",
    logo: "icHaribo",
    ingredients: [
        "Glikoz Şurubu",
        "Şeker",
        "Su",
        "Sığır Jelatini",
        "Dekstroz",
        "Asitliği Düzenleyici (Sitrik Asit, Malik Asit, Kalsiyum Sitrat, Sodyum Malat)",
        "Doğal Meyve ve Bitki Konsantreleri (aspir, tatlı patates, havuç, siyah kuş üzümü, ebe gümeci, alg, elma, limon, turp)",
        "Aroma Vericiler (çilek, portakal, limon, ahududu, ananas, elma)",
        "İnvert Şeker Şurubu",
        "Parlatma Maddesi (karnauba mumu)"
    ]
)

let hariboBerries = Product(
    name: "haribo-berries",
    logo: "icHaribo",
    ingredients: [
        "Şeker",
        "Glikoz Şurubu",
        "Su",
        "Sığır Jelatini",
        "Kıvam Arttırıcı (Agar)",
        "Karmelize Şeker Şurubu",
        "Asitlik Düzenleyici (Sitrik Asit)",
        "Doğal Meyve ve Bitki Konsantreleri (aspir, portakal, limon, mürver, siyah kuşüzümü, kırmızı kuşüzümü, kırmızı üzüm)",
        "Aroma Vericiler",
        "Palm Yağı",
        "Parlatma Maddesi (karnauba mumu, bal mumu)",
        "Mürver Ekstraktı"
    ]
)

let hariboKola = Product(
    name: "haribo-kola",
    logo: "icHaribo",
    ingredients: [
        "Glikoz Şurubu",
        "Şeker",
        "Su",
        "Sığır Jelatini",
        "Dekstroz",
        "Asitliği Düzenleyici (Sitrik Asit)",
        "Karamelize Şeker Şurubu",
        "Kola Aroma Verici",
        "Palm Yağı",
        "Parlatma Maddesi (karnauba mumu, bal mumu)"
    ]
)

let kentSourPatchKidsKarpuz = Product(
    name: "kent-sour-patch-kids-karpuz",
    logo: "inSourPK",
    ingredients: [
        "Şeker",
        "İnvert Şeker Şurubu",
        "Su",
        "Glukoz Şurubu",
        "Nişasta",
        "Asitler (Sitrik Asit, Tartarik Asit)",
        "Renklendiriciler (Antosiyaninler, Titanyum Dioksit, Kurkumin, Bitkisel Karbon)",
        "Asitlik Düzenleyici (Sodyum Hidroksit)",
        "Aroma Verici"
    ]
)

let lifalifKuruMeyveliYulafBar = Product(
    name: "lifalif-kuru-meyveli-yulaf-bar",
    logo: "icLifalifKuru",
    ingredients: [
        "Yulaf Ezmesi %50",
        "Zeytinyağı",
        "Tam Buğday Gevreği",
        "Ay Çekirdeği",
        "Hurma Özü %7,6",
        "Elma Suyu Konsantresi",
        "Kuru Dut %3,2",
        "Tereyağı (Süt Ürünü)",
        "Haşhaş",
        "Keten Tohumu",
        "Keçiboynuzu Tozu %0,3",
        "Tuz",
        "Tarçın",
        "Eser Miktarda Badem",
        "Eser Miktarda Fındık",
        "Eser Miktarda Yer Fıstığı",
        "Eser Miktarda Yumurta"
    ]
)

let lifalifKuruyemisliYulafBar = Product(
    name: "lifalif-kuruyemisli-yulaf-bar",
    logo: "icLifalifKuru",
    ingredients: [
        "Yulaf Ezmesi %36",
        "Yer Fıstığı %17,3",
        "Zeytinyağı",
        "Fındık %9,1",
        "Tam Buğday Gevreği",
        "Hurma Özü",
        "Elma Suyu Konsantresi",
        "Badem %4",
        "Tereyağı (Süt Ürünü)",
        "Tuz"
    ]
)

let lifalifKirmiziMeyveliYulafBar = Product(
    name: "lifalif-kirmizi-meyveli-yulaf-bar",
    logo: "icLifalifKırmızı",
    ingredients: [
        "Yulaf Ezmesi %44",
        "Tam Buğday Gevreği",
        "Zeytinyağı",
        "Hurma Özü",
        "Hindistan Cevizi %8",
        "Elma Suyu Konsantresi",
        "Turna Yemişi %6",
        "Kabak Çekirdeği %3",
        "Tereyağı (Süt Ürünü)",
        "Vişne %1",
        "Tuz",
        "Eser Miktarda Badem",
        "Eser Miktarda Fındık",
        "Eser Miktarda Yer Fıstığı",
        "Eser Miktarda Yumurta"
    ]
)

let nestleBitterCikolata = Product(
    name: "nestle-55-bitter-cikolata",
    logo: "icBitter",
    ingredients: [
        "Kakao Kitlesi",
        "Şeker",
        "Kakao Yağı",
        "Yağı Azaltılmış Kakao Tozu",
        "SÜT Yağı",
        "Emülgatör (Ayçiçek Lesitini)",
        "Doğal Aroma Verici (Vanilya)",
        "FINDIK",
        "ANTEP FISTIĞI",
        "BADEM",
        "BUĞDAY"
    ]
)

let nestleAntepFistikliCikolata = Product(
    name: "nestle-antep-fistikli-cikolata",
    logo: "icAntep",
    ingredients: [
        "Şeker",
        "Kakao Yağı",
        "Antep Fıstığı (%12)",
        "Peyniraltı Suyu Tozu (Süt Ürünü)",
        "Kakao Kitlesi",
        "Yağsız Süt Tozu",
        "SÜT Yağı",
        "Emülgatör (Ayçiçek Lesitini)",
        "Doğal Aroma Verici (Vanilya)",
        "Fındık",
        "Badem",
        "Buğday"
    ]
)

let nestleBeyazCikolata = Product(
    name: "nestle-beyaz-cikolata",
    logo: "icBeyaz",
    ingredients: [
        "ŞEKER",
        "KAKAO YAĞI",
        "TAM YAĞLI SÜT TOZU",
        "YAĞSIZ SÜT TOZU",
        "EMÜLGATÖRLER (AYÇİÇEK LESTİNİ, POLİGLİSEROL POLİRİSİNOLAT, AROMA VERİCİ VANİLİN",
        "FINDIK",
        "ANTEP FISTIĞI",
        "BADEM",
        "BUĞDAY"
    ]
)

let nestleDamakBaklava = Product(
    name: "nestle-damak-baklava",
    logo: "icBaklava",
    ingredients: [
        "ŞEKER",
        "KAKAO YAĞI",
        "TAM YAĞLI SÜT TOZU",
        "YAĞSIZ SÜT TOZU",
        "EMÜLGATÖRLER (AYÇİÇEK LESTİNİ, POLİGLİSEROL POLİRİSİNOLAT, AROMA VERİCİ VANİLİN",
        "FINDIK",
        "ANTEP FISTIĞI",
        "BADEM",
        "BUĞDAY",
        "antep fıstığı (%13)",
        "baklava parçacıkları %12 [buğday unu, şeker, mısır nişastası, tereyağı (süt ürünü), glukoz şurubu, tuz, aroma]"
    ]
)

let nestleSutluCikolata = Product(
    name: "nestle-sutlu-cikolata",
    logo: "icSütlü",
    ingredients: [
        "Şeker",
        "Yağsız Süt Tozu",
        "Kakao Yağı",
        "Kakao Kitlesi",
        "Süt Yağı",
        "Peyniraltı Suyu Tozu (Süt Ürünü)",
        "Emülgatör (Ayçiçek Lesitini)",
        "Tuz",
        "Doğal Aroma Verici Vanilya",
        "Eser miktarda Fındık",
        "Antep Fıstığı",
        "Badem",
        "Buğday (Gluten)"
    ]
)

let snickers = Product(
    name: "snickers",
    logo: "icSnickers",
    ingredients: [
        "Şeker",
        "Glikoz Şurubu",
        "Yer Fıstığı",
        "Yağsız Süttozu",
        "Kakao Yağı",
        "Kakao Kitlesi",
        "Ayçiçek Yağı",
        "Laktoz (Süt Bileşeni)",
        "Süt Yağı",
        "Peyniraltı Suyu Tozu (Sütten)",
        "Palm Yağı",
        "Tuz",
        "Emülgatör (Soya Lesitini)",
        "Yumurta Beyazı Tozu",
        "Süt Proteini",
        "Doğal Vanilya Aroma Vericisi",
        "Fındık"
    ]
)

let tadelle = Product(
    name: "tadelle",
    logo: "icTadelle",
    ingredients: [
        "Şeker",
        "Fındık (%26)",
        "Kakao Kitlesi",
        "Süt Tozu",
        "Kakao Yağı",
        "Peynir Altı Suyu Tozu",
        "Emülgatör (Ayçiçek Lesitini)",
        "Doğal Aroma Verici (Vanilya)",
        "Sütlü Çikolata Kaplama (%25)",
        "Şeker",
        "Süt Tozu",
        "Kakao Yağı",
        "Kakao Kitlesi",
        "Emülgatör (Ayçiçek Lesitini)",
        "Doğal Aroma Verici (Vanilya)"
    ]
)

let zuberAntepFistikliCikolataliMeyveBar = Product(
    name: "zuber-antep-fistikli-cikolatali-meyve-bar",
    logo: "icZuberAntep",
    ingredients: [
        "Hurma",
        "Antep Fıstığı (%19)",
        "Nohut Unu",
        "Kakao Kitlesi (%7) (Kakao Tozu, Kakao Yağı)",
        "Hindiba Kökü Lifi",
        "Badem",
        "Kaju",
        "Yer Fıstığı"
    ]
)

let zuberFindikliCikolataliMeyveBar = Product(
    name: "zuber-findikli-cikolatali-meyve-bar",
    logo: "icZuberFindik",
    ingredients: [
        "Hurma",
        "Fındık (%16)",
        "Kakao Kitlesi (%7) (Kakao Tozu, Kakao Yağı)",
        "Hindiba Kökü Lifi",
        "Nohut Unu",
        "Doğal Fındık Aroması",
        "Badem",
        "Antep Fıstığı",
        "Yer Fıstığı",
        "Kaju"
    ]
)

let ulkerAlbeni = Product(
    name: "ulker-albeni",
    logo: "icAlbeni",
    ingredients: [
        "Şeker",
        "Buğday unu",
        "Bitkisel yağlar (palm, tam hidrojenize palm çekirdeği)",
        "Glikoz şurubu",
        "Şekerli koyulaştırılmış yarım yağlı süt",
        "Kakao yağı",
        "Tam yağlı süt tozu",
        "Kakao",
        "Kakao kitlesi",
        "Invert şeker şurubu",
        "Yağsız süttozu",
        "Peynir altı suyu tozu (süt)",
        "Yağı azaltılmış kakao tozu",
        "Emülgatörler (amonyum fosfatitler, soya lesitini, bitkisel yağ asitlerinin mono ve digliseritleri, poligiliserol, polirisinoleat)",
        "Kabartıcılar (amonyum hidrojen karbonat, disodyum difosfat, sodyum hidrojen karbonat)",
        "Nem verici (gliserol)",
        "Tuz",
        "Yumurta akı tozu",
        "Nişasta",
        "Aroma vericiler",
        "Yer fıstığı içerebilir"
    ]
)

let ulkerCocostar = Product(
    name: "ülker-cocostar",
    logo: "icCocostar",
    ingredients: [
        "Kıyılmış hindistan cevizi (sülfit)",
        "Şeker",
        "Glukoz şurubu",
        "Su",
        "Bitkisel yağlar (palm, tam hidrojenize palm çekirdeği)",
        "Tam yağlı süttozu",
        "Kakao yağı",
        "Kakao kitlesi",
        "Yağsız süttozu",
        "Nem verici (gliserol)",
        "Peyniraltı suyu tozu (süt)",
        "Yağı azaltılmış kakao tozu",
        "Emülgatörler (amonyum fosfatidler, bitkisel yağ asitlerinin mono ve digliseritleri, soya lesitini, poligliserol polirisinoleat)",
        "Aroma vericiler",
        "Tuz",
        "Kıvam arttırıcı (ksantan gam)",
        "Eser miktarda yumurta ürünü, gluten, yerfıstığı ve sert kabuklu meyveler içerebilir"
    ]
)

let ulkerDankekPotiHavucluTarcinli = Product(
    name: "ülker-dankek-pöti-havuçlu-tarçınlı",
    logo: "icDankekHvc",
    ingredients: [
        "Şeker",
        "Buğday unu",
        "Su",
        "Bitkisel yağ (palm)",
        "Invert şeker şurubu",
        "Yumurta",
        "Nem verici (gliserol)",
        "Nişasta",
        "Havuç (%2,3)",
        "Glukoz şurubu",
        "Kabartıcılar (disodyum difosfat, sodyum hidrojen karbonat)",
        "Yağı azaltılmış kakao tozu",
        "Tuz",
        "Koruyucular (potasyum sorbat, sodyum propiyonat, sorbik asit)",
        "Tarçın (%0,3)",
        "Emülgatörler (bitkisel yağ asitlerinin mono ve digliseritleri, soya lesitini)",
        "Kıvam arttırıcı (guar gam)",
        "Peyniraltı suyu tozu (süt)",
        "Asitlik düzenleyici (sitrik asit)",
        "Aroma verici",
        "Eser miktarda fındık içerebilir"
    ]
)

let ulkerDankekPotiHindistanCevizli = Product(
    name: "ülker-dankek-pöti-hindistan-cevizli",
    logo: "icDankekHnd",
    ingredients: [
        "Şeker",
        "Buğday unu",
        "Su",
        "Bitkisel yağlar (palm)",
        "Kıyılmış hindistan cevizi (%4,8)",
        "Yumurta",
        "Nem vericiler (gliserol, sorbitol)",
        "Glukoz şurubu",
        "Invert şeker şurubu",
        "Peyniraltı suyu tozu (süt)",
        "Nişasta",
        "Dekstroz",
        "Kabartıcılar (disodyum difosfat, sodyum hidrojen karbonat)",
        "Tuz",
        "Bitter çikolata (süt) (%0,3)",
        "Emülgatörler (bitkisel yağ asitlerinin mono ve digliseritleri, soya lesitini)",
        "Koruyucular (potasyum sorbat, sodyum propiyonat, sorbik asit)",
        "Yağı azaltılmış kakao tozu (%0,3)",
        "Modifiye nişasta",
        "Kıvam arttırıcılar (guar gam, karragenan)",
        "Aroma vericiler",
        "Asitlik düzenleyici (sitrik asit)",
        "Eser miktarda fındık içerebilir"
    ]
)

let ulkerHanimellerCokodamla = Product(
    name: "ülker-hanimeller-çokodamla",
    logo: "icHanimeller",
    ingredients: [
        "Buğday unu",
        "Şeker",
        "Bitkisel yağlar (palm, palm çekirdeği)",
        "Invert şeker şurubu",
        "Yağı azaltılmış kakao tozu (%1,7)",
        "Peyniraltı suyu tozu (süt)",
        "Kabartıcılar (amonyum hidrojen karbonat, sodyum hidrojen karbonat, disodyum difosfat)",
        "Tuz",
        "Yağsız süttozu",
        "Tam yağlı süttozu",
        "Emülgatörler (soya lesitini, poligliserol, polirisinoleat)",
        "Aroma vericiler",
        "Yumurta",
        "Fındık"
    ]
)

let ulker_kekstra_jolebol_cilek = Product(
    name : "Ülker Kekstra Jölebol Çilek",
    logo: "icKekstra",
    ingredients: [
        "Şeker",
        "Bitkisel yağlar (palm, pamuk, kanola, ayçiçek)",
        "Su",
        "Buğday unu",
        "Invert şeker şurubu",
        "Glukoz şurubu",
        "Yumurta",
        "Nişasta",
        "Nem verici (gliserol)",
        "Dekstroz",
        "Tuz",
        "Kabartıcılar (disodyum difosfat, sodyum hidrojen karbonat)",
        "Peynir altı suyu tozu (süt)",
        "Emülgatörler (bitkisel yağ asitlerinin mono ve digliseritleri, soya lesitini)",
        "Koruyucular (potasyum sorbat, sodyum propiyonat, sorbik asit)",
        "Aroma vericiler",
        "Stabilizör (pektin)",
        "Asitlik düzenleyiciler (sitrik asit, trisodyum sitrat, kalsiyum klorür)",
        "Kara havuç konsantresi",
        "Çilek tozu (%0,02)"
    ]
)

let ulker_piko = Product(
    name : "Ülker Piko",
    logo: "icPiko",
    ingredients : [
        "Şeker",
        "Mısır irmiği",
        "Bitkisel yağlar (palm, palm çekirdeği, shea, pamuk, kanola, ayçiçek)",
        "Pirinç (%8)",
        "Tam yağlı süttozu",
        "Kakao kitlesi",
        "Kakao yağı",
        "Glukoz şurubu",
        "Peyniraltı suyu tozu (süt)",
        "Malt ekstraktı (arpa)",
        "Nem vericiler (sorbitol, gliserol)",
        "Sığır jelatini",
        "Emülgatörler (soya lesitini, poligliserol polirisinoleat, amonyum fosfatitler)",
        "Tuz",
        "Aroma vericiler (doğal portakal, vanilin)"
    ]
)

let ulkerProbis = Product(
    name: "Ülker Probis",
    logo: "icProbis",
    ingredients: [
        "Buğday unu",
        "Bitkisel yağ (palm)",
        "Şeker",
        "Soya unu",
        "Buğday proteini",
        "İnvert şeker şurubu",
        "Tam yağlı süttozu",
        "Yağsız süttozu",
        "Yağı azaltılmış kakao tozu (%3)",
        "Maltodekstrin",
        "Kabartıcılar (sodyum hidrojen karbonat, amonyum hidrojen karbonat)",
        "Emülgatörler (bitkisel yağ asitlerinin mono ve digliseritlerinin mono ve diasetil tartarik asit esterleri, soya lesitini)",
        "Asitlik düzenleyici (sitrik asit)",
        "Tuz",
        "Yumurta",
        "Fındık",
        "Aroma vericiler (süt)",
        "Muz tozu (%0,1)*"
    ]
)

let ulkerCikolataliGofret = Product(
    name: "Ülker Çikolatalı Gofret",
    logo:  "icCikolataliGofret",
    ingredients: [
        "Şeker",
        "Buğday unu",
        "Bitkisel yağlar (palm, palm çekirdeği)",
        "Fındık püresi (%9,5)",
        "Tam yağlı süttozu",
        "Kakao yağı",
        "Kakao kitlesi",
        "Mısır nişastası",
        "Peyniraltı suyu tozu (süt)",
        "Emülgatörler (amonyum fosfatitler, soya lesitini, poligliserol polirisinoleat)",
        "Tuz",
        "Yağsız süttozu",
        "Kakao tozu",
        "Yumurta akı tozu",
        "Aroma vericiler",
        "Kabartıcılar (amonyum hidrojen karbonat, sodyum hidrojen karbonat)"
    ]
)

let ulkerCubukKraker = Product(
    name: "Ülker Çubuk Kraker",
    logo: "icCubukKraker",
    ingredients: [
        "Buğday unu",
        "Bitkisel yağ (palm)",
        "Tuz",
        "Emülgatörler (soya lesitini, bitkisel yağ asitlerinin mono ve digliseritlerinin mono ve diasetil tartarik asit esterleri)",
        "Asitlik düzenleyici (sodyum hidroksit)",
        "Kabartıcılar (sodyum hidrojen karbonat, disodyum difosfat)",
        "Tam yağlı süt tozu"
    ]
)


let products = [
    biscolataStix,
    etiBalikKraker,
    etiBrownieGoldVisneli,
    etiBrownieIntense,
    etiCanga,
    etiPopkekBitter,
    etiPopkekLimonlu,
    etiPopkekVisneli,
    etiSusamliCubuk,
    etiTopkekFindikliKakaolu,
    etiTutku,
    hariboAltinAyicik,
    hariboEkşiMix,
    hariboBerries,
    hariboKola,
    kentSourPatchKidsKarpuz,
    lifalifKuruMeyveliYulafBar,
    lifalifKuruyemisliYulafBar,
    lifalifKirmiziMeyveliYulafBar,
    nestleBitterCikolata,
    nestleAntepFistikliCikolata,
    nestleBeyazCikolata,
    nestleDamakBaklava,
    nestleSutluCikolata,
    snickers,
    tadelle,
    zuberAntepFistikliCikolataliMeyveBar,
    zuberFindikliCikolataliMeyveBar,
    ulkerAlbeni,
    ulkerCocostar,
    ulkerDankekPotiHavucluTarcinli,
    ulkerDankekPotiHindistanCevizli,
    ulkerHanimellerCokodamla,
    ulker_kekstra_jolebol_cilek,
    ulker_piko,
    ulkerProbis,
    ulkerCikolataliGofret,
    ulkerCubukKraker
]
