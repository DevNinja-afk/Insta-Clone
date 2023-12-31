import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> profileImage = [
    'images/1.png',
    'images/2.png',
    'images/3.png',
    'images/4.png',
    'images/5.png',
    'images/6.png',
  ];

  List<String> posts = [
    'images/post_1.png',
    'images/post_2.png',
    'images/post_3.png',
    'images/post_4.png',
    'images/post_5.png',
    'images/post_6.png',
  ];

  List<String> names = [
    'Hcky',
    'Berlin ',
    'Aweka ',
    'BCD ',
    'DSA ',
    'Enike ',
  ];

  List<String> caption = [
    " I love to code apps in flutter",
    " Github Contribute Graph",
    "Fav game",
    "Dream Car",
    "New Phone",
    "Nature",
  ];

  List<String> comments = [
    "View all 159 comments",
    "View all 32",
    "View all 31",
    "View all 43",
    "View all 76",
    "View all 98",
  ];

  Future<void> onRefresh() async {
    await Future.delayed(Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Instagram',
          style: TextStyle(
              fontFamily: 'Billabong', color: Colors.black, fontSize: 23),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.camera_alt,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesomeIcons.heart,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesomeIcons.facebookMessenger,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: onRefresh,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                      6,
                      (index) => Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 38,
                                  backgroundImage:
                                      AssetImage('images/story.png'),
                                  child: CircleAvatar(
                                    radius: 32,
                                    backgroundImage:
                                        AssetImage(profileImage[index]),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  names[index],
                                )
                              ],
                            ),
                          )),
                ),
              ),
              Divider(
                thickness: 2,
              ),
              Column(
                children: List.generate(
                    6,
                    (index) => Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  child: CircleAvatar(
                                    radius: 14,
                                    backgroundImage:
                                        AssetImage('images/story.png'),
                                    child: CircleAvatar(
                                      radius: 12,
                                      backgroundImage:
                                          AssetImage(profileImage[index]),
                                    ),
                                  ),
                                ),
                                Text(
                                  names[index],
                                ),
                                Spacer(),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.more_vert)),
                              ],
                            ),
                            Image(
                              image: AssetImage(posts[index]),
                              height: 300,
                              width: 500,
                              fit: BoxFit.fitWidth,
                            ),
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(FontAwesomeIcons.heart),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.chat_bubble_outline),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(FontAwesomeIcons.bookmark),
                                ),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text.rich(
                                    TextSpan(children: [
                                      TextSpan(text: 'Liked by '),
                                      TextSpan(
                                        text: 'Hadi ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(text: 'and '),
                                      TextSpan(
                                        text: 'others',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )
                                    ]),
                                  ),
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: names[index],
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        TextSpan(text: caption[index]),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    comments[index],
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
