import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:tugas_4_3/app/modules/home/component/card_friend.dart';
import 'package:tugas_4_3/app/modules/home/component/card_post.dart';
import 'dart:math' as math;

import 'package:tugas_4_3/app/modules/home/controllers/home_controller.dart';

class MainView extends GetView<HomeController> {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0x0fe7e7e7),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      children: [
                        const Text(
                          "My Network",
                          style: TextStyle(
                              fontSize: 17.47, fontWeight: FontWeight.bold),
                        ),
                        Transform.rotate(
                          angle: 270 * math.pi / 180,
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.chevron_left,
                              )),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 0.2,
                              blurStyle: BlurStyle.normal,
                              blurRadius: 25,
                              offset: const Offset(4, 6), //
                              // changes position of shadow
                            ),
                          ],
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.filter_list),
                          style: IconButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 0.2,
                              blurStyle: BlurStyle.normal,
                              blurRadius: 25,
                              offset: const Offset(4, 6), //
                              // changes position of shadow
                            ),
                          ],
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.add),
                          style: IconButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  side: BorderSide(
                                      width: 1,
                                      color: Colors.grey.withOpacity(0.5)))),
                        ),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Timeline",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 24.02),
                    ),
                    Text(
                      "Friends",
                      style: TextStyle(fontSize: 17.47, color: Colors.grey),
                    )
                  ],
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(left: 15),
                  height: 180,
                  child: ListView.builder(
                    itemCount: controller.images.length,
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) =>
                        CardFriend(
                      image: controller.images[index]["image"].toString(),
                      name: controller.images[index]["name"].toString(),
                    ),
                  )),
              const SizedBox(
                height: 15,
              ),
              OrientationBuilder(
                builder: (context, orientation) {
                  return SizedBox(
                    height: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? MediaQuery.of(context).size.height *
                            controller.images.length /
                            2.7
                        : MediaQuery.of(context).size.width *
                            controller.images.length /
                            2.7,
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: ListView.builder(
                        itemCount: controller.images.length,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) =>
                            CardPost(
                          image: controller.images[index]["image"].toString(),
                          name: controller.images[index]["name"].toString(),
                          job: controller.images[index]["job"].toString(),
                          tag: controller.images[index]["tag"].toString(),
                          caption:
                              controller.images[index]["caption"].toString(),
                          location:
                              controller.images[index]["location"].toString(),
                          time: controller.images[index]["time"].toString(),
                          favorite:
                              controller.images[index]["favorite"].toString(),
                          comment:
                              controller.images[index]["comment"].toString(),
                          liked: controller.images[index]["liked"].toString(),
                        ),
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        )));
  }
}
