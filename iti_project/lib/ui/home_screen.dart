import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.brown[500],
          title: const Text("App Store", style: TextStyle(color: Colors.white)),
          centerTitle: true,
          leading: IconButton(icon: const Icon(Icons.add_alert_rounded, color: Colors.white, size: 30), onPressed: () {}),
          actions: const [Padding(padding: EdgeInsets.only(right: 15), child: Icon(Icons.share_location_outlined, color: Colors.white))]),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
          child: Center(
            child: Container(
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        alignment: Alignment.topLeft,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadiusDirectional.only(
                              bottomEnd: Radius.zero, topEnd: Radius.circular(25), topStart: Radius.circular(25)),
                        ),
                        child: Image.network(
                            "https://media.istockphoto.com/id/1367828290/photo/a-group-of-preschoolers-running-on-the-grass-in-the-park.jpg?s=612x612&w=0&k=20&c=o9JDZA6UOnjpFuDu8iVeSwQQZBPI0Dq3cLpc5nk71gM="),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(23), border: Border.all(style: BorderStyle.solid), color: Colors.white),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.favorite_border_sharp,
                              size: 35,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.black12,
                        borderRadius: BorderRadiusDirectional.only(
                            bottomEnd: Radius.circular(15), topEnd:Radius.zero , topStart: Radius.zero,bottomStart: Radius.circular(15))),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("خبير فى التخطيط السلكى لتصميم",
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Color.fromARGB(255, 13, 71, 161))),
                        SizedBox(
                          width: 270,
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(" ريال 48",
                                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Color.fromARGB(255, 13, 71, 161))),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                " 70 ",
                                style: TextStyle(decoration: TextDecoration.lineThrough, fontSize: 15),
                              ),
                              Spacer(),
                              Text(" اسم المركز", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Colors.pink)),
                            ],
                          ),
                        ),
                        Divider(
                          color: Colors.black,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8,vertical: 10),
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 30,
                              ),
                              SizedBox(width: 3),
                              Text("5.4",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black26
                                  )),
                              Spacer(),
                              Text(" 5 مقاعد متبقية ",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black26
                                  )),
                              SizedBox(width: 3),
                              Icon(
                                Icons.groups_rounded,
                                color: Colors.black,
                                size: 30,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
