import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

// Widget card2(url) {
//   return Padding(
//     padding: const EdgeInsets.only(left: 10.0, top: 5, bottom: 5, right: 10),
//     child: Container(
//       width: Get.width,
//       height: Get.width * 0.3,
//       decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(14),
//           image: DecorationImage(image: NetworkImage(url)),
//           boxShadow: const [
//             BoxShadow(color: Colors.grey, blurRadius: 0.1, spreadRadius: 0.01)
//           ]),
//     ),
//   );
// }

// Widget democard2() {
//   return Padding(
//     padding: const EdgeInsets.only(left: 10.0, top: 5, bottom: 5, right: 10),
//     child: Container(
//       width: Get.width,
//       height: Get.width * 0.3,
//       decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(14),
//           // image: DecorationImage(image: NetworkImage("url")),
//           boxShadow: const [
//             BoxShadow(color: Colors.grey, blurRadius: 0.1, spreadRadius: 0.01)
//           ]),
//     ),
//   );
// }

Widget simmercard2() {
  return Padding(
    padding: const EdgeInsets.only(left: 10.0, top: 5, bottom: 5, right: 10),
    child: Shimmer.fromColors(
      period: const Duration(seconds: 4),
      baseColor: Colors.grey.shade100,
      highlightColor: Colors.grey.shade300,
      child: Container(
        width: Get.width,
        height: Get.width * 0.3,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14),
            boxShadow: const [
              BoxShadow(color: Colors.grey, blurRadius: 0.1, spreadRadius: 0.01)
            ]),
      ),
    ),
  );
}


Widget card2(url) {
  return Padding(
    padding: const EdgeInsets.only(left: 10.0, top: 5, bottom: 5, right: 10),
    child: Container(
      width: Get.width,
      height: Get.width * 0.3,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(image: NetworkImage(url)),
          boxShadow: const [
            BoxShadow(color: Colors.grey, blurRadius: 0.1, spreadRadius: 0.01)
          ]),
    ),
  );
}

Widget card2Carousel() {
  List<String> imageUrls = [
    // Add your image URLs here
    'https://www.google.com/search?sxsrf=APwXEdeMGG28TCnJllqy7KZ-Uqz92Mkmuw:1687894524848&q=ecommerce+app+banner&uds=iwCAEgAD&tbm=isch&sa=X&ved=2ahUKEwislsmMmeT_AhVrgFYBHeruBgsQ0pQJegQIDhAB&biw=1536&bih=718&dpr=1.25#imgrc=VN-EprUGiNHsrM',
    'https://www.google.com/search?sxsrf=APwXEdeMGG28TCnJllqy7KZ-Uqz92Mkmuw:1687894524848&q=ecommerce+app+banner&uds=iwCAEgAD&tbm=isch&sa=X&ved=2ahUKEwislsmMmeT_AhVrgFYBHeruBgsQ0pQJegQIDhAB&biw=1536&bih=718&dpr=1.25#imgrc=VN-EprUGiNHsrM',
    'https://www.google.com/search?sxsrf=APwXEdeMGG28TCnJllqy7KZ-Uqz92Mkmuw:1687894524848&q=ecommerce+app+banner&uds=iwCAEgAD&tbm=isch&sa=X&ved=2ahUKEwislsmMmeT_AhVrgFYBHeruBgsQ0pQJegQIDhAB&biw=1536&bih=718&dpr=1.25#imgrc=VN-EprUGiNHsrM',
  ];

  return CarouselSlider(
    
    options: CarouselOptions(
      aspectRatio:3,
      enableInfiniteScroll:false,
      // height: Get.width * 0.3,
      autoPlay: false,
    ),
    items: imageUrls.map((url) {
      return Builder(
        builder: (BuildContext context) {
          return card2(url);
        },
      );
    }).toList(),
  );
}
