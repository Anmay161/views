import 'package:flutter/material.dart';
import 'detail_page.dart';
import 'items.dart';

class ListviewPage extends StatelessWidget {
  const ListviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView"),
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
          itemCount: myItems.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              child: Card(
                color: Colors.blueGrey,
                child: SizedBox(
                  height: 150,
                  child: Row(
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
