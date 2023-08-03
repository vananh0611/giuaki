import 'package:flutter/material.dart';
import 'package:gkbai2/Animation/fade_animation.dart';

void main() => runApp(
    const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage()
    )
);


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>
        [
          CustomScrollView(
            slivers: <Widget>
            [
              SliverAppBar(
                expandedHeight: 540,
                backgroundColor: Colors.black,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  background: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/pic8.jpg',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.bottomRight,
                              colors: [
                                Colors.black,
                                Colors.black.withOpacity(.3)
                              ]
                          )
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>
                          [
                            FadeAnimation(1,
                               Text('Geralt of rivia',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40,
                                ),
                              ),
                            ),
                             SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: <Widget>
                              [
                                FadeAnimation(1.2,
                                   Text(
                                    'The Witcher 3',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                 SizedBox(
                                  width: 45,
                                ),
                                FadeAnimation(
                                  1.3,
                                   Text(
                                    'The Wicther The Last Wish',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate([
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>
                      [
                        const FadeAnimation(1.6,
                           Text(
                            'Geralt of Rivia (Polish: Geralt z Rivii) is a fictional character and the protagonist of The Witcher series of short stories and novels by Polish author Andrzej Sapkowski. He is a magically enhanced monster-hunter known as a "witcher", who possesses supernatural abilities due to his mutations. He was described by Péter Apor as a character embodying "the neo-liberal anti-politics" spirit of Polish popular culture of the 1990s, following his debut in the books.',
                            style: TextStyle(
                              color: Colors.grey,
                              height: 1.4,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        const FadeAnimation(1.6,
                           Text(
                            'Major regions',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const FadeAnimation(1.6,
                           Text(
                            '15th 1990s, The Skellige Isles.',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const FadeAnimation(1.6,
                           Text(
                            'Best Secret Videos',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        FadeAnimation(1.8, SizedBox(
                          height: 200,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>
                            [
                              makeVideo(image: 'assets/images/pic9.jpg'),
                              makeVideo(image: 'assets/images/pic3.jpg'),
                              makeVideo(image: 'assets/images/pic7.jpg'),
                            ],
                          ),
                        ),
                        ),
                        const SizedBox(
                          height: 120,
                        )
                      ],
                    ),
                  ),
                ]
                ),
              ),
            ],
          ),
          Positioned.fill(
            bottom: 50,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: FadeAnimation(2,
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.deepPurpleAccent[700],
                  ),
                  child: const Align(
                    child: Text(
                      'Follow',
                      style: TextStyle(
                        color: Colors.white,

                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget makeVideo({image}) {
    return AspectRatio(
      aspectRatio: 1.5/ 1,
      child: Container(
        margin: const EdgeInsets.only(right: 20,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover
            )
        ),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  colors: [
                    Colors.black.withOpacity(.9),
                    Colors.black.withOpacity(.3)
                  ]
              )
          ),
          child: const Align(
            child: Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 50,
            ),
          ),
        ),
      ),
    );
  }
}

