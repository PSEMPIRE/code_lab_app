// import 'package:code_lab/theme/colors.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// Widget searchBox() {
//   return Padding(
//     padding: const EdgeInsets.symmetric(vertical: 10),
//     child: Container(
//       width: Get.width - 36,
//       // decoration: BoxDecoration(
//       //     color: kWhite,
//       //     borderRadius: BorderRadius.circular(24),
//       //     boxShadow: const [
//       //       BoxShadow(color: Colors.grey, blurRadius: 0.1, spreadRadius: 0.01)
//       //     ]),
//       // child: Row(
//       //   children: [
//       //     const SizedBox(
//       //       width: 20,
//       //     ),
//       //     Expanded(
//       //       child: TextFormField(
//       //         decoration: const InputDecoration(border: InputBorder.none),
//       //       ),
//       //     ),
//       //     const Icon(
//       //       Icons.search,
//       //     ),
//       //     const SizedBox(
//       //       width: 15,
//       //     )
//       //   ],
//       // ),
//       child: Image.asset(
//         "assets/images/logo.png",
//         height: 40,
//       ),
//     ),
//   );
// }
// import 'package:code_lab/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// TextEditingController searchController = TextEditingController();
// RxString searchTerm = ''.obs;

class SearchWidget extends StatefulWidget {
  @override
  _SearchWidgetState createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  bool isSearching = false;

  @override
  void dispose() {
    // searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/images/logo.png',
            height: 40,
          ),
          Expanded(
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              width: isSearching ? 200 : 0,
              child: isSearching
                  ? Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), border: Border.all(width: .5)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: TextField(
                            cursorColor: Colors.black,
                            // controller: searchController,
                            decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.transparent),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent)),
                              hintText: 'Search for products...',
                            ),
                            onChanged: (value) {
                              // searchTerm.value = value;
                            },
                          ),
                        ),
                      ),
                    )
                  : null,
            ),
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              setState(() {
                isSearching = !isSearching;
                if (!isSearching) {
                  // searchController.clear();
                  // searchTerm.value = '';
                }
              });
            },
          ),
        ],
      ),
    );
  }
}
