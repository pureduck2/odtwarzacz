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

  final duplicateItems = List<String>.generate(69, (i) => "Item $i");
  var items = <String>[];

  @override
  void initState() {
    items.addAll(duplicateItems);
    super.initState();
  }

  void filterSearchResults(String query) {
    List<String> dummySearchList = <String>[];
    dummySearchList.addAll(duplicateItems);
    if(query.isNotEmpty) {
      List<String> dummyListData = <String>[];
      for (var item in dummySearchList) {
        if(item.contains(query)) {
          dummyListData.add(item);
        }
      }
      setState(() {
        items.clear();
        items.addAll(dummyListData);
      });
      return;
    } else {
      setState(() {
        items.clear();
        items.addAll(duplicateItems);
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
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
                customSearchBar =  ListTile(
                  leading: const Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 28,
                  ),
                  title: TextField(
                    onChanged: (value){
                      filterSearchResults(value);
                    },
                    decoration: const InputDecoration(
                      hintText: 'Szukaj...',
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontStyle: FontStyle.italic,
                      ),
                      border: InputBorder.none,
                    ),
                    style: const TextStyle(
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

   ListView.builder(
    padding: const EdgeInsets.all(8),
    itemCount: items.length,
     shrinkWrap: true,
     physics: const NeverScrollableScrollPhysics(),
     itemBuilder: (BuildContext context, int index){





      return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
               const Icon(Icons.folder_outlined, color: Colors.white, size: 50),
            SizedBox(
              width: 275,
              child: Text(items[index],style: const TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w500),
              ),
            ),
          ],
        );
     },

   )




   // ...List<Widget>.generate(100, (i) => Text("chuj $i")),


//        Row(
//          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//          children: [
//            IconButton(
//              icon: const Icon(Icons.folder_outlined, color: Colors.white),
//              iconSize: 50,
//              onPressed: () {},
//            ),
//            SizedBox(
//              width: 275,
//              child: Column(
//                crossAxisAlignment: CrossAxisAlignment.start,
//                children: const [
//                  Text('jeden',style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w500),
//                  ),
//                ],
//              ),
//            ),
//          ],
//        ),
      ],
    )
    )
    ),
    );
    }
}