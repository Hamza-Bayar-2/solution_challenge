import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:solution_challenge/content/app_colors.dart';

  Widget mainWidget(
      BuildContext context,
      Color color,
      String header,
      String measurement,
      Widget icon,
      Widget graphic,
      Widget previousMeasurementClassName,
      String pushedPageName)
  {
    var customColors = AppColors();
    var phoneWidht = MediaQuery.of(context).size.width;
    var phoneHeight = MediaQuery.of(context).size.height;

    return Center(
      child: Container(
        width: phoneWidht * 0.9,
        height: phoneHeight * 0.80,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: customColors.darkBlue.withOpacity(0.5),
                offset: Offset(4, 4),
                blurRadius: 3,
              )
            ]
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 15, bottom: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    header,
                    style: TextStyle(
                        color: customColors.darkBlue,
                        fontSize: 35,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                  Text(
                    "Last Measurement",
                    style: TextStyle(
                      color: customColors.darkBlue,
                      fontSize: 13,
                    ),
                  )
                ],
              ), /// header
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  icon,
                  SizedBox(width: 10,),
                  Text(
                    measurement,
                    style: const TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ],
              ), /// icon and measurement
              graphic, /// graphic
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => previousMeasurementClassName),
                  );
                  print("selam");
                },
                child: Text(
                  pushedPageName,
                  style: const TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                ),
              ) /// previous page button
            ],
          ),
        ),
      ),
    );
  }
