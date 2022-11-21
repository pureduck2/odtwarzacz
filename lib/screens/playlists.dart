import 'package:flutter/material.dart';

class Playlists extends StatelessWidget {
  const Playlists({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Playlists',
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(preferredSize: const Size.fromHeight(60),
            child: AppBar(
              backgroundColor: Colors.blueGrey.shade800,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back, size: 35),
                onPressed: () {},
              ),
              title: const Text('Playlisty', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
              centerTitle: true,
              actions: [
                IconButton(
                    icon: const Icon(Icons.add, size: 35),
                    onPressed: () {}
                )
              ],
            )
        ),
        bottomNavigationBar: SizedBox (height: 70,
          child: BottomNavigationBar(
            backgroundColor: Colors.blueGrey.shade800,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white,
            items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_rounded), label: 'Główna'),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Biblioteka'),
            BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet_rounded), label: 'Katalogi'),
          ],),
           ),
        
          ),
         );
  }
}
