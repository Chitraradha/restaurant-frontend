import 'package:flutter/material.dart';

class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ADD Details"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  labelText: "OrderId",
                  border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              decoration: InputDecoration(
                  labelText: "CusName",
                  border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              decoration: InputDecoration(
                  labelText: "CusNumber",
                  border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              decoration: InputDecoration(
                  labelText: "Food Details",
                  border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              decoration: InputDecoration(
                  labelText: "Price",
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
                    onPressed: (){}, child: Text("Submit")))
          ],
        ),
      ),
    );
  }
}
