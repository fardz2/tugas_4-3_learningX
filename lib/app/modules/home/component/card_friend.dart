import 'package:flutter/material.dart';

class CardFriend extends StatelessWidget {
  const CardFriend({super.key, required this.image, required this.name});
  final String image;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          constraints: const BoxConstraints(maxHeight: 146.5),
          width: 96.6,
          height: 146.5,
          margin: const EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(1000),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3), // warna bayangan
                spreadRadius: 1, // penyebaran bayangan
                blurRadius: 10, // tingkat blur bayangan
                offset: const Offset(0, 5), // posisi bayangan
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(4),
            child: Container(
              constraints: const BoxConstraints(maxHeight: 139.76),
              width: 87.35,
              height: 139.76,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1000),
                  image: DecorationImage(
                      image: AssetImage(
                    image,
                  ))),
            ),
          ),
        ),
        Text(
          name,
          style: const TextStyle(fontSize: 13.1, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
