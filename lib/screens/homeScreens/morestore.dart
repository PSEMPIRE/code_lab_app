// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../../controllers/home_controller.dart';
// import '../../widgets/cards/card_1.dart';

// class ViewMore extends StatelessWidget {
//   const ViewMore({Key? key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Container(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               begin: Alignment.topCenter,
//               end: Alignment.bottomCenter,
//               colors: [
//                 Colors.lightBlue.shade300.withOpacity(.08),
//                 Colors.lightBlue.shade100.withOpacity(0.8),
//               ],
//             ),
//           ),
//           child: Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(10.0),
//                 child: Text(
//                   "All Stores",
//                   style: const TextStyle(
//                     fontSize: 25,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//               ),
//               Container(
//                 child: GetBuilder<HomeController>(
//                   builder: (_) {
//                     if (_.brands!.message != "Success" && _.brands!.brands == null) {
//                       return const Center(
//                         child: CircularProgressIndicator(),
//                       );
//                     }
//                     if (_.brands!.brands!.isEmpty) {
//                       return const Center(child: Text("No Store Found"));
//                     }
//                     return GridView.builder(
//                       shrinkWrap: true,
//                       physics: const NeverScrollableScrollPhysics(),
//                       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                         crossAxisCount: 2,
//                         crossAxisSpacing: 8,
//                         mainAxisSpacing: 4,
//                         childAspectRatio: 1,
//                       ),
//                       itemCount: _.brands!.brands!.length,
//                       itemBuilder: (context, index) {
//                         return card1(_.brands!.brands![index]);
//                       },
//                     );
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/home_controller.dart';
import '../../widgets/cards/card_1.dart';

class ViewMore extends StatelessWidget {
  const ViewMore({Key? key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.lightBlue.shade300.withOpacity(.08),
                Colors.lightBlue.shade100.withOpacity(0.8),
              ],
            ),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                        icon: const Icon(Icons.arrow_back, size: 35),
                        onPressed: () {
                          Get.back();
                        },
                      ),
                      SizedBox(width: 20,),
                      Text(
                                      "All Stores",
                                      style: const TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
              
                ],
              ),
              
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right:12.0),
                  child: Container(
                    child: GetBuilder<HomeController>(
                      builder: (_) {
                        if (_.brands!.message != "Success" && _.brands!.brands == null) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                        if (_.brands!.brands!.isEmpty) {
                          return const Center(child: Text("No Store Found"));
                        }
                        return GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            crossAxisSpacing: 8,
                            mainAxisSpacing: 4,
                            childAspectRatio: 1,
                          ),
                          itemCount: _.brands!.brands!.length,
                          itemBuilder: (context, index) {
                            return card1(_.brands!.brands![index]);
                          },
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
