import 'package:fashion_app/details.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:ionicons/ionicons.dart';

void main() {
  runApp(const FashionApp());
}

class FashionApp extends StatelessWidget {
  const FashionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          indicatorColor: Colors.brown,
          controller: tabController,
          tabs: [
            Tab(
                icon: Icon(
              Icons.more,
              color: Colors.grey,
              size: 22,
            )),
            Tab(
                icon: Icon(
              Icons.play_arrow,
              color: Colors.grey,
              size: 22,
            )),
            Tab(
                icon: Icon(
              Icons.navigation,
              color: Colors.grey,
              size: 22,
            )),
            Tab(
                icon: Icon(
              Icons.supervised_user_circle,
              color: Colors.grey,
              size: 22,
            )),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Fashion App",
          style: TextStyle(
            fontFamily: "Montserrat",
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.camera_alt,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 10),
        children: [
          // profile list at the top
          Container(
            height: 140,
            width: double.infinity,
            child: ListView(
              padding: EdgeInsets.all(10),
              scrollDirection: Axis.horizontal,
              children: [
                listElements('images/model1.jpeg', 'images/chanellogo.jpg'),
                SizedBox(width: 30),
                listElements('images/model2.jpeg', 'images/chloelogo.png'),
                SizedBox(width: 30),
                listElements('images/model3.jpeg', 'images/louisvuitton.jpg'),
                SizedBox(width: 30),
                listElements('images/model1.jpeg', 'images/chanellogo.jpg'),
                SizedBox(width: 30),
                listElements('images/model2.jpeg', 'images/chloelogo.png'),
                SizedBox(width: 30),
                listElements('images/model3.jpeg', 'images/louisvuitton.jpg'),
              ],
            ),
          ),

          //Card
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Material(
              borderRadius: BorderRadius.circular(16),
              elevation: 4,
              child: Container(
                height: 510,
                width: double.infinity,
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 75,
                          width: 75,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(38),
                            image: DecorationImage(
                              image: AssetImage('images/model1.jpeg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          width: MediaQuery.of(context).size.width - 190,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Daisy",
                                style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "34 mins ago",
                                style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontSize: 12,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Icon(Icons.more_vert, color: Colors.grey, size: 22),
                      ],
                    ),
                    SizedBox(height: 15),
                    Text(
                      "This official website features a ribbed knit zipper jacket that is "
                      "modern and stylish. It looks very temparament and is recommended to friends",
                      style: TextStyle(
                        fontSize: 13,
                        fontFamily: "Montserrat",
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        InkWell(
                          child: Hero(
                            tag: 'images/modelgrid1.jpeg',
                            child: Container(
                              height: 200,
                              width:
                                  (MediaQuery.of(context).size.width - 50) / 2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                    image: AssetImage('images/modelgrid1.jpeg'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  Details(imgPath: 'images/modelgrid1.jpeg'),
                            ));
                          },
                        ),
                        SizedBox(width: 10),
                        Column(
                          children: [
                            InkWell(
                              child: Hero(
                                tag: 'images/modelgrid2.jpeg',
                                child: Container(
                                  height: 95,
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'images/modelgrid2.jpeg'),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Details(
                                      imgPath: 'images/modelgrid2.jpeg'),
                                ));
                              },
                            ),
                            SizedBox(height: 10),
                            InkWell(
                              child: Hero(
                                tag: 'images/modelgrid3.jpeg',
                                child: Container(
                                  height: 95,
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'images/modelgrid3.jpeg'),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Details(
                                      imgPath: 'images/modelgrid3.jpeg'),
                                ));
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          height: 25,
                          width: 75,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.brown.shade300.withOpacity(0.2),
                          ),
                          child: Center(
                            child: Text(
                              '# Louis Vitton',
                              style: TextStyle(
                                fontFamily: 'Monstserrat',
                                fontSize: 10,
                                color: Colors.brown,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: 25,
                          width: 75,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.brown.shade300.withOpacity(0.2),
                          ),
                          child: Center(
                            child: Text(
                              '# Chloe',
                              style: TextStyle(
                                fontFamily: 'Monstserrat',
                                fontSize: 10,
                                color: Colors.brown,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Divider(),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Icon(
                          LineIcons.share,
                          color: Colors.brown.shade300.withOpacity(0.4),
                          size: 30,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "1.7k",
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              fontSize: 16,
                              color: Colors.brown.shade300.withOpacity(0.7)),
                        ),
                        SizedBox(width: 25),
                        Icon(
                          Ionicons.chatbubble,
                          color: Colors.brown.shade300.withOpacity(0.4),
                          size: 30,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "325",
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              fontSize: 16,
                              color: Colors.brown.shade300.withOpacity(0.7)),
                        ),
                        SizedBox(width: 90),
                        Icon(
                          Ionicons.heart,
                          color: Colors.red,
                          size: 30,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "2.3k",
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              fontSize: 16,
                              color: Colors.brown.shade300.withOpacity(0.7)),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget listElements(String imagePath, String logoPath) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(38),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: AssetImage(logoPath),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Container(
          height: 30,
          width: 75,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.brown,
          ),
          child: Center(
            child: Text(
              "Follow",
              style: TextStyle(
                fontFamily: "Montserrat",
                fontSize: 14,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
