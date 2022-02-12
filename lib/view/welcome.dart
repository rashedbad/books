import 'package:books/view/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(children: [
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(45),
                    bottomRight: Radius.circular(45)),
                color: Color(0xff4F9DBC),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                          height: 150,
                          width: 150,
                          decoration: const BoxDecoration(
                            color: Color(0xffCBE5F3),
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(45),
                                bottomRight: Radius.circular(100)),
                          )),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                            height: 150,
                            width: 150,
                            decoration: const BoxDecoration(
                              color: Color(0xff707070),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(45),
                                  topLeft: Radius.circular(100)),
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                    spreadRadius: 20,
                    blurRadius: 40,
                    offset: Offset(1, 1), // changes position of shadow
                  ),
                ],
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(45),
                    bottomRight: Radius.circular(45)),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Reading Is \nFascinating',
                        style: TextStyle(
                            color: Color(0xff305F72),
                            fontSize: 48,
                            fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        'World best writers, works and write entertaining \nliterature for you',
                        style:
                            TextStyle(color: Color(0xff4F9DBC), fontSize: 15),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 33),
                        child: Column(
                          children: [
                            const Center(
                              child: Text(
                                'Lets start',
                                style: TextStyle(
                                    color: Color(0xff305F72), fontSize: 16),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Center(
                                child: Container(
                                  height: 80,
                                  width: 80,
                                  decoration: const BoxDecoration(
                                    color: Color(0xff305F72),
                                    shape: BoxShape.circle,
                                  ),
                                  child: IconButton(
                                      icon: const Icon(Icons.arrow_forward),
                                      color: Colors.white,
                                      iconSize: 35,
                                      onPressed: () {
                                        Get.to(
                                          const Home(),
                                        );
                                      }),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ]),
              ),
            ),
          ),
        ]));
  }
}
