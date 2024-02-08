import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: "Search here",
                border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(
                width: 200,
                height: 40,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.indigoAccent,foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius:BorderRadius.zero
                        )
                    ),
                    onPressed: (){}, child: Text("Search")))
          ],
        ),
      ),
    );
  }
}
