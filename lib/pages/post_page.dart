import 'package:flutter/material.dart';
import 'package:instagram/model/story_model.dart';

class PostPage extends StatefulWidget {
  const PostPage({super.key});

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  final List<StoryModel> _storys = [
    StoryModel(img: "assets/images/it_park_avatar.jpg", name: "itpark_uz"),
    StoryModel(img: "assets/images/it_park_avatar.jpg", name: "itpark_uz2"),
    StoryModel(img: "assets/images/it_park_avatar.jpg", name: "itpark_uz3"),
    StoryModel(img: "assets/images/it_park_avatar.jpg", name: "itpark_uz4"),
    StoryModel(img: "assets/images/it_park_avatar.jpg", name: "itpark_uz4"),
    StoryModel(img: "assets/images/it_park_avatar.jpg", name: "itpark_uz4"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0.4,
        shadowColor: Colors.white,
        backgroundColor: const Color.fromRGBO(0, 0, 0, 1),
        title: const Text(
          "Instagram",
          style: TextStyle(
              fontFamily: "Billabong",
              fontSize: 40,
              fontWeight: FontWeight.w300),
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: const Image(
              width: 28,
              height: 28,
              image: AssetImage("assets/icons/add_icon.png"),
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          GestureDetector(
            onTap: () {},
            child: const Image(
              width: 35,
              height: 35,
              image: AssetImage("assets/icons/messenger_icon.png"),
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
              flex: 2,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: _storys.length,
                  itemBuilder: ((context, index) => _storyItem(
                      img: _storys[index].img, name: _storys[index].name)))),
          Expanded(
              flex: 8,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: _storys.length,
                  itemBuilder: ((context, index) => _storyItem(
                      img: _storys[index].img, name: _storys[index].name)))),
        ],
      ),
    );
  }
}

Widget _storyItem({String? img, String? name}) {
  return Column(
    children: [
      Container(
        width: 85,
        height: 85,
        margin: const EdgeInsets.symmetric(horizontal: 8),
        padding: const EdgeInsets.all(4),
        decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                Color.fromARGB(255, 251, 181, 67),
                Color.fromARGB(255, 250, 157, 71),
                Color.fromARGB(255, 249, 99, 35),
                Color.fromARGB(255, 250, 71, 95),
                Color.fromARGB(255, 250, 71, 151),
              ],
            )),
        child: CircleAvatar(backgroundImage: AssetImage(img!)),
      ),
      const SizedBox(
        height: 8,
      ),
      Text(
        name!,
        style: const TextStyle(color: Colors.white),
      )
    ],
  );
}
