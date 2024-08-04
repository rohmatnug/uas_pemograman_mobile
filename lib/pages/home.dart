import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uas_pemograman_mobile/pages/details.dart';
import 'package:uas_pemograman_mobile/widgets/widget_support.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool minuman = false, makanan = false, cemilan = false, paketan = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 5.0, left: 20.0),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Hello Rohmat,", style: AppWidget.boldTextFeildStyle()),
                Container(
                  margin: EdgeInsets.only(right: 20.0),
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10)),
                  child: Icon(Icons.shopping_cart, color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Text("Kantin Kampus", style: AppWidget.HeadLineFeildStyle()),
            Text("Universitas Duta Bangsa Surakarta",
                style: AppWidget.LightTextFeildStyle()),
            SizedBox(
              height: 20.0,
            ),
            Container(margin: EdgeInsets.only(right: 20.0), child: showItem()),
            SizedBox(
              height: 20.0,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Details()));
                    },
                    child: Container(
                      margin: EdgeInsets.all(4),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "images/esteh.png",
                                  height: 150,
                                  width: 150,
                                  fit: BoxFit.cover,
                                ),
                                Text("Es Teh",
                                    style: AppWidget.semiBoldTextFeildStyle()),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text("Manis atau Tawar",
                                    style: AppWidget.LightTextFeildStyle()),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text("Rp. 3000,-",
                                    style: AppWidget.semiBoldTextFeildStyle()),
                              ]),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Details()));
                    },
                    child: Container(
                      margin: EdgeInsets.all(4),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "images/kopi.png",
                                  height: 150,
                                  width: 150,
                                  fit: BoxFit.cover,
                                ),
                                Text("Es Kopi",
                                    style: AppWidget.semiBoldTextFeildStyle()),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text("Gula Aren",
                                    style: AppWidget.LightTextFeildStyle()),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text("Rp. 5000,-",
                                    style: AppWidget.semiBoldTextFeildStyle()),
                              ]),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              margin: EdgeInsets.only(right: 20.0),
              child: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                    padding: EdgeInsets.all(5),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("images/esteh.png",
                              height: 100, width: 100, fit: BoxFit.cover),
                          SizedBox(
                            width: 20.0,
                          ),
                          Column(children: [
                            Container(
                                width: MediaQuery.of(context).size.width / 2,
                                child: Text("Es Teh",
                                    style: AppWidget.semiBoldTextFeildStyle())),
                            SizedBox(
                              height: 5.0,
                            ),
                            Container(
                                width: MediaQuery.of(context).size.width / 2,
                                child: Text("Manis atau Tawar",
                                    style: AppWidget.LightTextFeildStyle())),
                            SizedBox(
                              height: 5.0,
                            ),
                            Container(
                                width: MediaQuery.of(context).size.width / 2,
                                child: Text("Rp. 3000,-",
                                    style: AppWidget.semiBoldTextFeildStyle())),
                          ])
                        ])),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget showItem() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      GestureDetector(
        onTap: () {
          minuman = true;
          makanan = false;
          cemilan = false;
          paketan = false;
          setState(() {});
        },
        child: Material(
          elevation: 5.0,
          borderRadius: BorderRadius.circular(10),
          child: Container(
            decoration: BoxDecoration(
                color: minuman ? Colors.black : Colors.white,
                borderRadius: BorderRadius.circular(10)),
            padding: EdgeInsets.all(10),
            child: Image.asset(
              "images/minuman.png",
              height: 50,
              width: 50,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
          minuman = false;
          makanan = true;
          cemilan = false;
          paketan = false;
          setState(() {});
        },
        child: Material(
          elevation: 5.0,
          borderRadius: BorderRadius.circular(10),
          child: Container(
            decoration: BoxDecoration(
                color: makanan ? Colors.black : Colors.white,
                borderRadius: BorderRadius.circular(10)),
            padding: EdgeInsets.all(10),
            child: Image.asset(
              "images/makanan.png",
              height: 50,
              width: 50,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
          minuman = false;
          makanan = false;
          cemilan = true;
          paketan = false;
          setState(() {});
        },
        child: Material(
          elevation: 5.0,
          borderRadius: BorderRadius.circular(10),
          child: Container(
            decoration: BoxDecoration(
                color: cemilan ? Colors.black : Colors.white,
                borderRadius: BorderRadius.circular(10)),
            padding: EdgeInsets.all(10),
            child: Image.asset(
              "images/cemilan.png",
              height: 50,
              width: 50,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
          minuman = false;
          makanan = false;
          cemilan = false;
          paketan = true;
          setState(() {});
        },
        child: Material(
          elevation: 5.0,
          borderRadius: BorderRadius.circular(10),
          child: Container(
            decoration: BoxDecoration(
                color: paketan ? Colors.black : Colors.white,
                borderRadius: BorderRadius.circular(10)),
            padding: EdgeInsets.all(10),
            child: Image.asset(
              "images/paketan.png",
              height: 50,
              width: 50,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    ]);
  }
}
