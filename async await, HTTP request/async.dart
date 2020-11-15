Future<String> getOrder() async {
  var order = fetchUserOrder();
  return "Siparişiniz: $order";
}

Future<String> fetchUserOrder() =>
    Future.delayed(Duration(seconds: 2), () => "1 adet orta boy türk kahvesi");

void main() async {
  print("siparişiniz hazırlanıyor...");
  print(await getOrder());
  print("siparişiniz teslime hazır....");
}

// sıralı yapılan işlemlerde bekleme yapılması gerekiyorsa async kullanılır. genellikle sunucuya veya dosyayı bekleteceğiiz zaman kullanılır.
