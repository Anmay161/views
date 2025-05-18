import 'package:flutter/material.dart';
import 'detail_page.dart';
import 'items.dart';

class GridviewPage extends StatelessWidget {

  const GridviewPage({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView"),
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.white,
      ),
      body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: myItems.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              child: Card(
                color: Colors.blueGrey,
                child: SizedBox(
                  height: 150,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        myItems[index]['img']!,
                        width: 150,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(myItems[index]['title']!)
                    ],
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => DetailPage(item: myItems[index]))  
                );
              },
            );
          }),
    );
  }
}
