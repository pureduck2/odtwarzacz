import 'package:flutter/material.dart';
//import 'package:odtwarzacz/widgets/cover.dart';

class Directories extends StatefulWidget {
  const Directories({super.key});

  @override
  State<Directories> createState() => _DirectoriesState();
}
class _DirectoriesState extends State<Directories> {
  Icon customIcon = const Icon(Icons.search);
  Widget customSearchBar = const Text('Katalogi',
    style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold),);
  @override
  Widget build(BuildContext context) {
    //return const Center(child: Text('Katalogi'));

    return MaterialApp(
    title: 'Directories',
    home: Scaffold(
      resizeToAvoidBottomInset: false,
    backgroundColor: Colors.black,
    appBar: PreferredSize(preferredSize: const Size.fromHeight(60),
    child: AppBar(
    backgroundColor: Colors.black,
    title: customSearchBar,
      automaticallyImplyLeading: false,
      actions: [
        IconButton(
          onPressed: () {
            setState(() {
              if (customIcon.icon == Icons.search) {
                customIcon = const Icon(Icons.cancel);
                customSearchBar = const ListTile(
                  leading: Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 28,
                  ),
                  title: TextField(
                    decoration: InputDecoration(
                      hintText: 'Szukaj...',
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontStyle: FontStyle.italic,
                      ),
                      border: InputBorder.none,
                    ),
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                );
              }  else {
                customIcon = const Icon(Icons.search);
                customSearchBar = const Text('Katalogi');
              }
            });
          },
          icon: customIcon,
        )],
      centerTitle: true,
    )
    ),
    body: Padding(padding: const EdgeInsets.fromLTRB(10, 7, 10, 7),
    child: SingleChildScrollView(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(height: 30),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: const Icon(Icons.folder_outlined, color: Colors.white),
              iconSize: 50,
              onPressed: () {},
            ),

            SizedBox(
              width: 275,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('jeden',style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w500),
                  ),
                ],
              ),

            ),
          ],
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: const Icon(Icons.folder_outlined, color: Colors.white),
              iconSize: 50,
              onPressed: () {},
            ),

            SizedBox(
              width: 275,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('dwa',style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w500),
                  ),
                ],
              ),

            ),
          ],
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: const Icon(Icons.folder_outlined, color: Colors.white),
              iconSize: 50,
              onPressed: () {},
            ),

            SizedBox(
              width: 275,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('trzy',style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w500,),
                  ),
                ],
              ),

            ),
          ],
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: const Icon(Icons.folder_outlined, color: Colors.white),
              iconSize: 50,
              onPressed: () {},
            ),

            SizedBox(
              width: 275,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('cztery',style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w500,),
                  ),
                ],
              ),

            ),
          ],
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: const Icon(Icons.folder_outlined, color: Colors.white),
              iconSize: 50,
              onPressed: () {},
            ),

            SizedBox(
              width: 275,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('pięć',style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w500,),
                  ),
                ],
              ),

            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: const Icon(Icons.folder_outlined, color: Colors.white),
              iconSize: 50,
              onPressed: () {},
            ),

            SizedBox(
              width: 275,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('sześć',style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w500,),
                  ),
                ],
              ),

            ),
          ],
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: const Icon(Icons.folder_outlined, color: Colors.white),
              iconSize: 50,
              onPressed: () {},
            ),

            SizedBox(
              width: 275,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('siedem',style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w500,),
                  ),
                ],
              ),

            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: const Icon(Icons.folder_outlined, color: Colors.white),
              iconSize: 50,
              onPressed: () {},
            ),

            SizedBox(
              width: 275,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('osiem',style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w500,),
                  ),
                ],
              ),

            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: const Icon(Icons.folder_outlined, color: Colors.white),
              iconSize: 50,
              onPressed: () {},
            ),

            SizedBox(
              width: 275,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('dziewięć',style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w500,),
                  ),
                ],
              ),

            ),
          ],
        ),
      ],
    )
    )
    ),
    )
    );
    }
}