import 'package:flutter/material.dart';

class HelpMeView extends StatelessWidget {
  const HelpMeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text(
          "Yardım",
          style: TextStyle(color: Colors.white, fontSize: 22),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.orangeAccent,
              borderRadius: BorderRadius.circular(20),
            ),
            height: MediaQuery.of(context).size.height / 3.5,
            width: MediaQuery.of(context).size.width / 1.2,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Uygulama ile alakalı sorunlarınız için bize şu numaradan ulaşabilirsiniz ;",
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "0555 555 55 55",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Farklı sorunlar ve istekleriniz için mail veya sosyal medya hesaplarımız üzerinden bize ulaşabilirsiniz ;",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "İnstagram : @43numara",
                    ),
                    Text(
                      "Email : 43numara@gmail.com",
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}