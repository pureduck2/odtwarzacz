import 'package:flutter/material.dart';

class PlaylistShow extends StatelessWidget {
  const PlaylistShow({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white12,
        appBar: PreferredSize(preferredSize: const Size.fromHeight(65.0),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
            leading: IconButton(
               icon: const Icon(Icons.arrow_back, size: 35,),
               onPressed: () {},
            ),
            actions: [
                IconButton(
               icon: const Icon(Icons.add, size: 35,),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                              icon: const Icon(Icons.compare_arrows_rounded, size: 35,color: Colors.white,),
                              onPressed: () {}
                          ),
                          IconButton(
                              icon: const Icon(Icons.play_circle, size: 35,color: Colors.green,),
                              onPressed: () {}
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            icon: Image.asset('assets/Cover-13v4-small.jpg'),
                            iconSize: 65,
                            onPressed: () {},
                          ),
                          IconButton(
                              icon: const Icon(Icons.play_circle, size: 35,color: Colors.white,),
                              onPressed: () {}
                          ),
                          const Text('makapaka',style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.w500),
                          ),
                          IconButton(
                              icon: const Icon(Icons.more_vert_rounded, size: 35,color: Colors.white,),
                              onPressed: () {}
                          )
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            icon: Image.asset('assets/Cover-13v4-small.jpg'),
                            iconSize: 65,
                            onPressed: () {},
                          ),
                          IconButton(
                              icon: const Icon(Icons.play_circle, size: 35,color: Colors.white,),
                              onPressed: () {}
                          ),
                          const Text('makapaka',style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.w500),
                          ),
                          IconButton(
                              icon: const Icon(Icons.more_vert_rounded, size: 35,color: Colors.white,),
                              onPressed: () {}
                          )
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            icon: Image.asset('assets/Cover-13v4-small.jpg'),
                            iconSize: 65,
                            onPressed: () {},
                          ),
                          IconButton(
                              icon: const Icon(Icons.play_circle, size: 35,color: Colors.white,),
                              onPressed: () {}
                          ),
                          const Text('makapaka',style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.w500),
                          ),
                          IconButton(
                              icon: const Icon(Icons.more_vert_rounded, size: 35,color: Colors.white,),
                              onPressed: () {}
                          )
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                          icon: Image.asset('assets/Cover-13v4-small.jpg'),
                            iconSize: 65,
                            onPressed: () {},
                          ),
                          IconButton(
                              icon: const Icon(Icons.play_circle, size: 35,color: Colors.white,),
                              onPressed: () {}
                          ),
                          const Text('makapaka',style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.w500),
                          ),
                          IconButton(
                              icon: const Icon(Icons.more_vert_rounded, size: 35,color: Colors.white,),
                              onPressed: () {}
                          )
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            icon: Image.asset('assets/Cover-13v4-small.jpg'),
                            iconSize: 65,
                            onPressed: () {},
                          ),
                          IconButton(
                              icon: const Icon(Icons.play_circle, size: 35,color: Colors.white,),
                              onPressed: () {}
                          ),
                          const Text('makapaka',style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.w500),
                          ),
                          IconButton(
                              icon: const Icon(Icons.more_vert_rounded, size: 35,color: Colors.white,),
                              onPressed: () {}
                          )
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text('to może ci się podobać!!!',style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.w600),)
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            icon: Image.asset('assets/Cover-13v4-small.jpg'),
                            iconSize: 150,
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Image.asset('assets/Cover-13v4-small.jpg'),
                            iconSize: 150,
                            onPressed: () {},
                          ),
                        ],
                      ),
                  ],
                 )
           )
                )
        )
      )
    );
  }
}
