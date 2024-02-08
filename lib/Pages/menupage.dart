import 'package:flutter/material.dart';
import 'package:restaurant_app/Pages/addPage.dart';
import 'package:restaurant_app/Pages/viewpage.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Restaurant APP",style: TextStyle(color: Colors.indigoAccent),),
        backgroundColor: Colors.white,
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.indigoAccent,Colors.white])
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                width: 200,
                height: 40,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.indigoAccent,foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        )
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder:
                      (context)=>AddPage()));
                    }, child: Text("ADD"))),
            SizedBox(height: 20,),
            SizedBox(
                width: 200,
                height: 40,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.indigoAccent,foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        )
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewPage()));
                    }, child: Text("VIEW"))),
            SizedBox(height: 20,),
            SizedBox(
                width: 200,
                height: 40,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.indigoAccent,foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        )
                    ),
                    onPressed: (){}, child: Text("Search"))),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
