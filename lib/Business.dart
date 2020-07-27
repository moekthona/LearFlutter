import 'package:TestFlutter/BusinessDetail.dart';
import 'package:TestFlutter/Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'Model/BusinessModel.dart';
import 'Item/ItemBusiness.dart';

class Business extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: getData().length,
      itemBuilder: (context, index) {
        return GestureDetector(
          child: Card(
            margin: EdgeInsets.only(left: 5, right: 5),
            child: itemBusiness(getData()[index]),
          ),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => BusinessDetail(getData()[index])));
            print("Click on item"+index.toString());
          },
        );
      },
    );
  }
}
