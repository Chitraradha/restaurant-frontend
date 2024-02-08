import 'package:flutter/material.dart';
import 'package:restaurant_app/services/restservices.dart';

class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  TextEditingController OrderID=new TextEditingController();
  TextEditingController CustomerName=new TextEditingController();
  TextEditingController CustPhoneNo=new TextEditingController();
  TextEditingController FoodDetails=new TextEditingController();
  TextEditingController Price=new TextEditingController();
  void RestValueAdd() async{
    final response=await ResApi().sendData(OrderID.text, CustomerName.text, CustPhoneNo.text, FoodDetails.text, Price.text);
    if(response["status"]=="success")
    {
      print("Successfully Added");
    }
    else{
      print("Error");
    }

  }
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
              controller: OrderID,
              decoration: InputDecoration(
                  labelText: "OrderId",
                  border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              controller: CustomerName,
              decoration: InputDecoration(
                  labelText: "CusName",
                  border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              controller: CustPhoneNo,
              decoration: InputDecoration(
                  labelText: "CusNumber",
                  border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              controller: FoodDetails,
              decoration: InputDecoration(
                  labelText: "Food Details",
                  border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              controller: Price,
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
                    onPressed: RestValueAdd, child: Text("Submit")))
          ],
        ),
      ),
    );
  }
}
