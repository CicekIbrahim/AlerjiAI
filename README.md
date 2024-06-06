# AlerjiAi Mobil Uygulama

AlerjiAi, paketli gıdalardaki alerjenlerin tespiti için yapay zeka destekli bir mobil uygulamadır. Kullanıcılar, ürünlerin fotoğrafını çekerek içerdiği alerjenleri hızlı ve güvenilir bir şekilde öğrenebilirler. Bu uygulama, alerjik bireylerin sağlıklı ve güvenli tüketim yapmalarını sağlamayı amaçlamaktadır.

## Özellikler

• Hızlı ve Güvenilir Alerjen Tespiti: Kullanıcıların paketli gıdaların içeriklerini hızlı bir şekilde analiz edebilmesi ve alerjenleri güvenilir bir şekilde tespit edebilmesi sağlanır.

•	Kullanıcı Dostu Mobil Uygulama: SwiftUI ile geliştirilen kullanıcı dostu bir mobil uygulama sunulur.

•	Özel Eğitimli YOLOv9 Modeli Kullanımı: Kendi çektiğimiz ve etiketlediğimiz ürün fotoğraflarından oluşan bir veri seti ile eğitilmiş YOLOv9 modeli kullanılarak, yüksek doğruluk oranı ile alerjen tespiti yapılır.

•	LLM Entegrasyonu: Modelin sonuç verememesi durumunda, bir LLM’e yapılan istek ile ek bir doğrulama ve destek sağlanarak, kullanıcıya en doğru bilgi sunulur.

•	Firebase ile İçerik Sorgulama: Ürün adlarının doğru bir şekilde belirlenip, Firebase veritabanı üzerinden içerik bilgileri sorgulanarak kullanıcıya kapsamlı ve güncel bilgi sunulur.

•	Alerji Bilincini Artırma: Proje, alerjik bireylerin bilinçli tüketim yapmalarını destekleyerek, alerji bilincinin artmasına katkıda bulunur.

# Kullanılan Teknolojiler

## Mobil Uygulama:
• Geliştirme Ortamı: Xcode

• Programlama Dili: Swift

• Çerçeve: SwiftUI

## Backend:

• Programlama Dili: Python

• Framework: Flask

• Araç: Ngrok

• Model: YOLOv9 (Kendi çektiğimiz ve etiketlediğimiz 40 farklı ürünün fotoğraflarından oluşan veri seti ile eğitildi)

• Ek Model: OpenAI Language Learning Model (LLM)

## Veritabanı ve Kimlik Doğrulama:

• Firebase

## Etiketleme ve Model Eğitimi:

• Araç: Roboflow
 

## Kullanım

1.  AlerjiAi Python Projesini Başlatın ve Visual Studio üzerinde 5000 portuna yöndlendirme açın.

2.	Uygulamayı başlatın ve ürünün fotoğrafını çekin.
	
3.	Fotoğraf backend’e gönderilir ve YOLOv9 modeli tarafından analiz edilir.
	
4.	Ürün adı belirlenir ve Firebase veritabanında sorgulanır.
	
5.	Alerjenler tespit edilir ve sonuçlar kullanıcıya gösterilir.

  
## Ekran Görüntüleri

<p float="center">
  <img src="https://res.cloudinary.com/dusexzcp5/image/upload/v1717643813/IMG_1276_ala3mt.png" width="200" height="400">
  <img src="https://res.cloudinary.com/dusexzcp5/image/upload/v1717643813/IMG_1277_kkfy4y.png" width="200" height="400">
  <img src="https://res.cloudinary.com/dusexzcp5/image/upload/v1717643813/IMG_1278_nnycma.png" width="200" height="400">
</p>



