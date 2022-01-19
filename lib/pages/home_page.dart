import 'package:flutter/material.dart';
import 'package:shop_app_ui/models/product_model.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List gridItems = [
    Product(image: "assets/images/image_0.jpg", isFavaourite: false,),
    Product(image: "assets/images/image_1.jpg", isFavaourite: false,),
    Product(image: "assets/images/image_2.jpg", isFavaourite: false,),
    Product(image: "assets/images/image_3.jpg", isFavaourite: false,),
    Product(image: "assets/images/image_4.jpg", isFavaourite: false,),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Apple Products"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.black,
        actions: [
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(vertical: 12.5, horizontal: 10),
            width: 30,
            decoration: BoxDecoration(
                color: Colors.grey.shade700,
                borderRadius: BorderRadius.circular(7.5)),
            child: Text(
              "7",
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          )
        ],
      ),
      drawer: const Drawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // #header
            Container(
              margin: const EdgeInsets.all(20),
              height: 225,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage("assets/images/image_2.jpg"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(25)),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.center,
                        colors: [
                          Colors.black.withOpacity(0.4),
                          Colors.black.withOpacity(0.2),
                          Colors.black.withOpacity(0.1),
                        ])),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // #lifestyle
                    const Expanded(
                        child: Align(
                      child: Text(
                        "Lifestyle safe",
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                      alignment: Alignment.bottomCenter,
                    )),

                    // #shop_now_button
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 25, horizontal: 35),
                      child: MaterialButton(
                        onPressed: () {},
                        height: 55,
                        minWidth: double.infinity,
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        child: const Text(
                          "Shop Now",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),

            // #body
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.all(20),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20),
                itemCount: 10,
                itemBuilder: (context, index){
                return gridItems[index%5];
                })
          ],
        ),
      ),
    );
  }

  Container _gridItem(int index) {
    return Container(
                  alignment: Alignment.bottomRight,
                  padding: const EdgeInsets.all(10),
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(
                      image: AssetImage('assets/images/image_${(index)%5}.jpg'),
                      fit: BoxFit.cover
                    )
                  ),
                  child: const Icon(Icons.star_border_outlined, size: 30, color: Colors.yellow,)
                );
  }
}
