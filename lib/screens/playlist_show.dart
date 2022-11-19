import 'package:flutter/material.dart';

class PlaylistShow extends StatelessWidget {
  const PlaylistShow({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: PreferredSize(preferredSize: const Size.fromHeight(65.0),
        child: AppBar(
          backgroundColor: Colors.black,
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
           bottomNavigationBar: SizedBox(height: 70,
             child: BottomNavigationBar(
               backgroundColor: Colors.white10,
               selectedItemColor: Colors.white,
               unselectedItemColor: Colors.white,
               items: const  <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home_rounded,size: 35,)
                , label: 'Główna'
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add,size: 35,),
                label: 'Biblioteka'
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_balance_wallet_rounded,size: 35,),
                 label: 'Katalogi'
              ),
            ],
           ),
         ),
          body: Padding(padding: EdgeInsets.all(2),
            child: Center(
              child: Material(
                elevation: 8,
                borderRadius: BorderRadius.circular(28),
                clipBehavior: Clip.antiAliasWithSaveLayer,
               child: InkWell(
                splashColor: Colors.white,
                 onTap: () {},
                child: Container(
                 decoration: BoxDecoration(
                 color: Colors.transparent,
                 border: Border.all(color: Colors.blue, width: 3),
                 borderRadius: BorderRadius.circular(28),
                 ),
                   child: Column(
                    children: [
                    Image.asset('assets/Cover-13v4-small.jpg',
                      height: 200,
                      width: 200,
                   ),
                  ],
                 )
                )
              )
            )
          )
        )
      )
    );
  }
}
