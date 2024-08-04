import 'package:flutter/material.dart';

import '../widgets/widget_support.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int a = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: EdgeInsets.only(top: 5.0, left: 20.0, right: 20.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.black,
          ),
        ),
        Image.asset(
          "images/esteh.png",
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 2.5,
          fit: BoxFit.fill,
        ),
        SizedBox(
          height: 15.0,
        ),
        Row(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Es Teh",
                style: AppWidget.semiBoldTextFeildStyle(),
              ),
              Text(
                "Tawar atau Manis",
                style: AppWidget.boldTextFeildStyle(),
              ),
            ],
          ),
          Spacer(),
          GestureDetector(
            onTap: () {
              if (a > 1) {
                --a;
              }
              setState(() {});
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(8)),
              child: Icon(Icons.remove, color: Colors.white),
            ),
          ),
          SizedBox(
            width: 20.0,
          ),
          Text(
            a.toString(),
            style: AppWidget.semiBoldTextFeildStyle(),
          ),
          SizedBox(
            width: 20.0,
          ),
          GestureDetector(
            onTap: () {
              ++a;
              setState(() {});
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(8)),
              child: Icon(Icons.add, color: Colors.white),
            ),
          )
        ]),
        SizedBox(
          height: 20.0,
        ),
        Text(
          "Bahkan jika kamu orang yang paling sibuk, selalu ada waktu untuk minum es teh",
          maxLines: 3,
          style: AppWidget.LightTextFeildStyle(),
        ),
        SizedBox(
          height: 30.0,
        ),
        Row(
          children: [
            Text("Waktu Pengantaran",
                style: AppWidget.semiBoldTextFeildStyle()),
            SizedBox(
              width: 20.0,
            ),
            Icon(Icons.alarm, color: Colors.black54),
            SizedBox(width: 5.0),
            Text(
              "15 min",
              style: AppWidget.semiBoldTextFeildStyle(),
            )
          ],
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.only(bottom: 40.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  "Total Price",
                  style: AppWidget.semiBoldTextFeildStyle(),
                ),
                Text(
                  "Rp. 30.000,-",
                  style: AppWidget.HeadLineFeildStyle(),
                ),
              ]),
              Container(
                width: MediaQuery.of(context).size.width / 2,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Tambah ke keranjang",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 10.0,
                            fontFamily: 'Poppins')),
                    SizedBox(
                      width: 20.0,
                    ),
                    Container(
                        padding: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(8)),
                        child: Icon(Icons.shopping_cart_outlined,
                            color: Colors.white)),
                    SizedBox(
                      width: 10.0,
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ]),
    ));
  }
}
