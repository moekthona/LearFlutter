import 'package:TestFlutter/Color.dart';
import 'package:flutter/material.dart';
import 'package:TestFlutter/Model/BusinessModel.dart';

Widget itemBusiness(BusinessModel model) {
  return Container(
    padding: const EdgeInsets.all(10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        SizedBox(height: 10,),
        AspectRatio(
          aspectRatio: 16 / 9,
          child: Image.network((model.imageUrl),
            fit: BoxFit.fill, // use this
          ),
        ),
        SizedBox(height: 15),
        Text(model.title,
          textAlign: TextAlign.start,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
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
        SizedBox(height: 5),
        Text(model.description,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontSize: 14),
        ),
        SizedBox(height: 10,)
      ],
    ),
  );
}

List<BusinessModel> getData (){
  List<BusinessModel> model = new List();
  model.add(BusinessModel("https://www.prasac.com.kh/wp-content/uploads/2020/07/KB.jpeg",
      "PRASAC Receives USD 150 Million Credit Facilities from KB Kookmin Bank to Strengthen "
          "its Capital Base, Liquidity and Expand its Lending", "Phnom Penh: "
          "Despite the severe impact on business environment caused by COVID-19 pandemic, "
          "PRASAC, the largest financial institution in Cambodia, has taken further steps to secure its financial "
          "stability by successfully receiving a 7-year subordinated loan of USD 50 million and a 3-year committed "
          "credit facility in the amount of USD 100 million from KB Kookmin Bank, one of the leading commercial banks in "
          "South Korea and a new shareholder of PRASAC Microfinance Institution Plc. since April 2020.", "July 2, 2020"));
  model.add(BusinessModel("https://www.prasac.com.kh/wp-content/uploads/2020/07/Prey-Phdau_PR_600-x-800px.png",
      "PRASAC Launches its 181st Branch in Prey Phdau, Kampong Speu, to Provide Better Service", "To provide better "
          "financial services to valued customers, PRASAC MFI Plc. is pleased to inform our valued customers and the"
          " public that PRASAC has opened another new branch at Prey Phdau which is located about 30 meters at the east"
          " of Prey Phdau Primary School, along National Road 4, Prey Phdau village, Trapeang Korng commune, Somraong Tong "
          "district, Kampong Speu Province.", "July 2, 2020"));
  model.add(BusinessModel("https://www.prasac.com.kh/wp-content/uploads/2020/06/Instant-Card-ATM.jpg", "Get Free ATM Card Instantly upon Opening a Savings Account at PRASAC", "PRASAC continues its efforts in terms of "
      "innovation and providing advanced FinTech services to its customers, by launching the instant "
      "ATM card issuance service with the aim of making the process more convenient, "
      "simpler and faster.", "June 2, 2020"));

  return model;
}