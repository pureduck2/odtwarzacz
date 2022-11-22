import 'package:flutter/material.dart';
//import 'package:odtwarzacz/widgets/cover.dart';

class Directories extends StatelessWidget {
  const Directories({super.key});

  @override
  Widget build(BuildContext context) {
    //return const Center(child: Text('Katalogi'));

    return MaterialApp(
    title: 'Directories',
    home: Scaffold(
    backgroundColor: Colors.black,
    appBar: PreferredSize(preferredSize: const Size.fromHeight(60),
    child: AppBar(
    backgroundColor: Colors.black,
    leading: IconButton(
    icon: const Icon(Icons.arrow_back, size: 35),
    onPressed: () {},
    ),
    title: const Text('Katalogi', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
    centerTitle: true,
    )
    ),
    body: Padding(padding: const EdgeInsets.fromLTRB(10, 7, 10, 7),
    child: Container(
    child: SingleChildScrollView(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(height: 30),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Image.network('https://media.pitchfork.com/photos/5e0f6f452ff48f0008f567cb/1:1/w_320,c_limit/jackboys_travis.jpg'),
              iconSize: 65,
              onPressed: () {},
            ),

            SizedBox(
              width: 220,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('tytul',style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w500,),
                  ),
                  Text('autor',style: TextStyle(fontSize: 12,color: Colors.white,fontWeight: FontWeight.w500),
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

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Image.network('https://media.pitchfork.com/photos/5e0f6f452ff48f0008f567cb/1:1/w_320,c_limit/jackboys_travis.jpg'),
              iconSize: 65,
              onPressed: () {},
            ),

            SizedBox(
              width: 220,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('tytul',style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w500,),
                  ),
                  Text('autor',style: TextStyle(fontSize: 12,color: Colors.white,fontWeight: FontWeight.w500),
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

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Image.network('https://media.pitchfork.com/photos/5e0f6f452ff48f0008f567cb/1:1/w_320,c_limit/jackboys_travis.jpg'),
              iconSize: 65,
              onPressed: () {},
            ),

            SizedBox(
              width: 220,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('tytul',style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w500,),
                  ),
                  Text('autor',style: TextStyle(fontSize: 12,color: Colors.white,fontWeight: FontWeight.w500),
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

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Image.network('https://media.pitchfork.com/photos/5e0f6f452ff48f0008f567cb/1:1/w_320,c_limit/jackboys_travis.jpg'),
              iconSize: 65,
              onPressed: () {},
            ),

            SizedBox(
              width: 220,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('tytul',style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w500,),
                  ),
                  Text('autor',style: TextStyle(fontSize: 12,color: Colors.white,fontWeight: FontWeight.w500),
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

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Image.network('https://media.pitchfork.com/photos/5e0f6f452ff48f0008f567cb/1:1/w_320,c_limit/jackboys_travis.jpg'),
              iconSize: 65,
              onPressed: () {},
            ),

            SizedBox(
              width: 220,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('tytul',style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w500,),
                  ),
                  Text('autor',style: TextStyle(fontSize: 12,color: Colors.white,fontWeight: FontWeight.w500),
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Image.network('https://media.pitchfork.com/photos/5e0f6f452ff48f0008f567cb/1:1/w_320,c_limit/jackboys_travis.jpg'),
              iconSize: 65,
              onPressed: () {},
            ),

            SizedBox(
              width: 220,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('tytul',style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w500,),
                  ),
                  Text('autor',style: TextStyle(fontSize: 12,color: Colors.white,fontWeight: FontWeight.w500),
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

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Image.network('https://media.pitchfork.com/photos/5e0f6f452ff48f0008f567cb/1:1/w_320,c_limit/jackboys_travis.jpg'),
              iconSize: 65,
              onPressed: () {},
            ),

            SizedBox(
              width: 220,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('tytul',style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w500,),
                  ),
                  Text('autor',style: TextStyle(fontSize: 12,color: Colors.white,fontWeight: FontWeight.w500),
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Image.network('https://media.pitchfork.com/photos/5e0f6f452ff48f0008f567cb/1:1/w_320,c_limit/jackboys_travis.jpg'),
              iconSize: 65,
              onPressed: () {},
            ),

            SizedBox(
              width: 220,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('tytul',style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w500,),
                  ),
                  Text('autor',style: TextStyle(fontSize: 12,color: Colors.white,fontWeight: FontWeight.w500),
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Image.network('https://media.pitchfork.com/photos/5e0f6f452ff48f0008f567cb/1:1/w_320,c_limit/jackboys_travis.jpg'),
              iconSize: 65,
              onPressed: () {},
            ),

            SizedBox(
              width: 220,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('tytul',style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w500,),
                  ),
                  Text('autor',style: TextStyle(fontSize: 12,color: Colors.white,fontWeight: FontWeight.w500),
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
      ],
    )
    )
    )
    ),
    )
    );
    }
    }