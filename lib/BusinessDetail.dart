import 'package:TestFlutter/Color.dart';
import 'package:TestFlutter/Model/BusinessModel.dart';
import 'package:flutter/material.dart';

class BusinessDetail extends StatelessWidget {

  final BusinessModel model;
  BusinessDetail(this.model);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          title: Text("Detail"),
          backgroundColor: PrimaryColor,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: body(),
      ),
    );
  }

  Widget body(){
    return Container(
      padding: EdgeInsets.only(left: 10,right: 10),
        child: Column(children: <Widget>[
          SizedBox(height: 20),
          Text(model.title,
            textAlign: TextAlign.start,
            style: TextStyle(color: PrimaryColor, fontSize: 16),
          ),
          SizedBox(height: 15),
          Row(
            children: <Widget>[
              Icon(Icons.date_range, color: SecondaryColor),
              SizedBox(width: 5),
              Text(model.date,
                style: TextStyle(color: SecondaryColor),
              )
            ],
          ),
          SizedBox(height: 10),
          Text(model.description,
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(height: 15,),
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Image.network((model.imageUrl),
              fit: BoxFit.fill, // use this
            ),
          ),
        ],),
    );
  }
}
