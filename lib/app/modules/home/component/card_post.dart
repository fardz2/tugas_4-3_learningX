import 'package:flutter/material.dart';

class CardPost extends StatelessWidget {
  const CardPost(
      {super.key,
      required this.image,
      required this.name,
      required this.job,
      required this.tag,
      required this.caption,
      required this.location,
      required this.time,
      required this.favorite,
      required this.comment,
      required this.liked});
  final String image;
  final String name;
  final String job;
  final String tag;
  final String caption;
  final String location;
  final String time;
  final String favorite;
  final String comment;
  final String liked;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0, // misalnya
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15), // misalnya
      ),
      color: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white, // Ganti dengan warna yang Anda inginkan
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3), // warna bayangan
              spreadRadius: 1, // penyebaran bayangan
              blurRadius: 10, // tingkat blur bayangan
              offset:
                  const Offset(0, 5), // posisi bayangan // Atur posisi bayangan
            ),
          ], // misalnya
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(image),
                        radius: 25,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: const TextStyle(
                              fontSize: 17.47,
                            ),
                          ),
                          Text(
                            job,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          )
                        ],
                      )
                    ],
                  ),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.more_vert))
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                tag,
                style: const TextStyle(
                    fontSize: 17.47, fontWeight: FontWeight.bold),
              ),
              Text(
                caption,
                style: const TextStyle(fontSize: 17.47),
              ),
              const SizedBox(
                height: 30,
              ),
              IntrinsicHeight(
                child: Row(
                  children: [
                    const Icon(
                      Icons.pin_drop,
                      color: Colors.blue,
                    ),
                    Text(
                      location,
                      style:
                          const TextStyle(fontSize: 13.1, color: Colors.blue),
                    ),
                    const VerticalDivider(
                      color: Colors.blue,
                      thickness: 1,
                    ),
                    Text(time,
                        style:
                            const TextStyle(fontSize: 13.1, color: Colors.blue))
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.favorite_border),
                            onPressed: () {},
                          ),
                          Text(favorite,
                              style: const TextStyle(
                                fontSize: 17.47,
                              ))
                        ],
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.chat),
                            onPressed: () {},
                          ),
                          Text(comment,
                              style: const TextStyle(
                                fontSize: 17.47,
                              ))
                        ],
                      ),
                    ],
                  ),
                  Text("Liked  by $liked",
                      style: const TextStyle(
                          fontSize: 15.29, fontWeight: FontWeight.bold)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
