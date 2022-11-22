import 'package:flutter/material.dart';


class PlaylistShow extends StatelessWidget {
  const PlaylistShow({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.white12,
            appBar: PreferredSize(preferredSize: const Size.fromHeight(55.0),
              child: AppBar(
                elevation: 0,
                backgroundColor: Colors.transparent,
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back, size: 25,),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                actions: [
                  IconButton(
                      icon: const Icon(Icons.add, size: 25,),
                      onPressed: () {}
                  ),],
              ),
            ),
            body: Padding(padding: const EdgeInsets.all(2),
                child: Container(
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.white10,
                            Colors.white12,
                            Colors.black12,
                            Colors.black26,
                            Colors.black38,
                            Colors.black45,
                            Colors.black54,
                            Colors.black87,
                            Colors.black,
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        )
                    ),

                    child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image.asset('assets/Cover-13v4-small.jpg',
                                  height: 200,
                                  width: 200,
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: const [
                                Text('NAZWA PLAYLISTY',style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.w900),)
                              ],
                            ),
                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                    icon: const Icon(Icons.compare_arrows_rounded, size: 55,color: Colors.white,),
                                    onPressed: () {}
                                ),
                                const SizedBox(width: 30,),
                                IconButton(
                                    icon: const Icon(Icons.play_circle, size: 55,color: Colors.green,),
                                    onPressed: () {}
                                ),
                              ],
                            ),
                            const SizedBox(height: 30),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                IconButton(
                                  splashRadius: 45,
                                  icon: Container(
                                      decoration: const BoxDecoration(
                                        color: Colors.teal,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.white,
                                            blurRadius: 4, // Shadow position
                                          ),
                                        ],
                                      ),
                                      child: Image.asset('assets/Cover-13v4-small.jpg')
                                  ),
                                  iconSize: 65,
                                  onPressed: () {
                                    Navigator.pushNamed(context,'Home');
                                  },
                                ),

                                SizedBox(
                                  width: 220,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text('makapaka',style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w500,),
                                      ),
                                      Text('gienek',style: TextStyle(fontSize: 12,color: Colors.white,fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),

                                ),
                                IconButton(
                                    icon: const Icon(Icons.more_vert_rounded, size: 25,color: Colors.white,),
                                    onPressed: () {}
                                )
                              ],
                            ),
                            const SizedBox(height: 10),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                IconButton(
                                  splashRadius: 45,
                                  icon: Container(
                                      decoration: const BoxDecoration(
                                        color: Colors.teal,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.white,
                                            blurRadius: 4, // Shadow position
                                          ),
                                        ],
                                    ),
                                      child: Image.asset('assets/Cover-13v4-small.jpg')
                                  ),
                                  iconSize: 65,
                                  onPressed: () {
                                    Navigator.pushNamed(context,'Home');
                                  },
                                ),

                                SizedBox(
                                  width: 220,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text('makapaka',style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w500,),
                                      ),
                                      Text('makapaka',style: TextStyle(fontSize: 12,color: Colors.white,fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),

                                ),
                                IconButton(
                                    icon: const Icon(Icons.more_vert_rounded, size: 25,color: Colors.white,),
                                    onPressed: () {}
                                )
                              ],
                            ),
                            const SizedBox(height: 10),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                IconButton(
                                  splashRadius: 45,
                                  icon: Container(
                                      decoration: const BoxDecoration(
                                        color: Colors.teal,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.white,
                                            blurRadius: 4, // Shadow position
                                          ),
                                        ],
                                      ),
                                      child: Image.asset('assets/Cover-13v4-small.jpg')
                                  ),
                                  iconSize: 65,
                                  onPressed: () {
                                    Navigator.pushNamed(context,'Home');
                                  },
                                ),

                                SizedBox(
                                  width: 220,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text('makapaka',style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w500,),
                                      ),
                                      Text('makapaka',style: TextStyle(fontSize: 12,color: Colors.white,fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),

                                ),
                                IconButton(
                                    icon: const Icon(Icons.more_vert_rounded, size: 25,color: Colors.white,),
                                    onPressed: () {}
                                )
                              ],
                            ),
                            const SizedBox(height: 10),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                IconButton(
                                  splashRadius: 45,
                                  icon: Container(
                                      decoration: const BoxDecoration(
                                        color: Colors.teal,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.white,
                                            blurRadius: 4, // Shadow position
                                          ),
                                        ],
                                      ),
                                      child: Image.asset('assets/Cover-13v4-small.jpg')
                                  ),
                                  iconSize: 65,
                                  onPressed: () {
                                    Navigator.pushNamed(context,'Home');
                                  },
                                ),

                                SizedBox(
                                  width: 220,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text('makapaka',style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w500,),
                                      ),
                                      Text('makapaka',style: TextStyle(fontSize: 12,color: Colors.white,fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),

                                ),
                                IconButton(
                                    icon: const Icon(Icons.more_vert_rounded, size: 25,color: Colors.white,),
                                    onPressed: () {}
                                )
                              ],
                            ),
                            const SizedBox(height: 10),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                IconButton(
                                  splashRadius: 45,
                                  icon: Container(
                                      decoration: const BoxDecoration(
                                        color: Colors.teal,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.white,
                                            blurRadius: 4, // Shadow position
                                          ),
                                        ],
                                      ),
                                      child: Image.asset('assets/Cover-13v4-small.jpg')
                                  ),
                                  iconSize: 65,
                                  onPressed: () {
                                    Navigator.pushNamed(context,'Home');
                                  },
                                ),

                                SizedBox(
                                  width: 220,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text('makapaka',style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w500,),
                                      ),
                                      Text('makapaka',style: TextStyle(fontSize: 12,color: Colors.white,fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),

                                ),
                                IconButton(
                                    icon: const Icon(Icons.more_vert_rounded, size: 25,color: Colors.white,),
                                    onPressed: () {}
                                )
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Text('Polecamy również',style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.w600),)
                              ],
                            ),
                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                IconButton(
                                  icon: Container(
                                      decoration: const BoxDecoration(
                                        color: Colors.teal,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.white,
                                            blurRadius: 4, // Shadow position
                                          ),
                                        ],
                                      ),
                                      child: Image.asset('assets/Cover-13v4-small.jpg')
                                  ),
                                  iconSize: 150,
                                  onPressed: () {},
                                ),
                                IconButton(
                                  icon: Container(
                                      decoration: const BoxDecoration(
                                        color: Colors.teal,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.white,
                                            blurRadius: 4, // Shadow position
                                          ),
                                        ],
                                      ),
                                      child: Image.asset('assets/Cover-13v4-small.jpg')
                                  ),
                                  iconSize: 150,
                                  onPressed: () {},
                                ),
                              ],
                            ),
                            const SizedBox(height: 30),
                          ],
                        )
                    )
                )
            )
        )
    );
  }
}
