import 'package:flutter/material.dart';
import 'package:restaurant_app/models/restmodels.dart';
import 'package:restaurant_app/services/restservices.dart';

class ViewPage extends StatefulWidget {
  const ViewPage({super.key});

  @override
  State<ViewPage> createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  Future<List<Restaurant>>?data;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data=ResApi().getRes();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
          future: data,
          builder: (context,snapshot){
            if(snapshot.hasData && snapshot.data!.isNotEmpty)
            {
              return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (value,index){
                    return Card(
                      child: Column(
                        children: [
                          ListTile(
                            title: Text("Name:"+snapshot.data![index].orderId.toString()),
                            subtitle: Text("cus No:"+snapshot.data![index].customerName .toString()+"\n"+
                                "CusNo:"+snapshot.data![index].custPhoneNo .toString()+"\n"+
                                "FoodDetails:"+snapshot.data![index].foodDetails .toString()+"\n"+
                                "Price:"+snapshot.data![index].price.toString()
                            ),
                          )
                        ],
                      ),
                    );
                  });
            }
            else
            {
              return Text("Loading..........");
            }
          }),
    );
  }
}
