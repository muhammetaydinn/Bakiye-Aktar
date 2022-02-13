import 'package:flutter/material.dart';
import 'package:kirkuc_numara/notifications.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leadingWidth: 80,
        leading: const Icon(
          Icons.menu,
          color: Colors.purple,
          size: 40,
        ),
        actions: [
          IconButton(
            padding: const EdgeInsets.only(right: 40),
            icon: const Icon(
              Icons.notification_add_sharp,
              color: Colors.purple,
              size: 40,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return NotificationPage();
                  },
                ),
              );
            },
          ),
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Container(
          width: size.width * 0.90,
          child: Column(
            children: [
              Container(
                height: size.height * 0.30,
                decoration: BoxDecoration(
                  color: Colors.purple.shade300,
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: size.height * 0.08,
                      width: size.width * 0.25,
                      child: const Text("aa"),
                      decoration: BoxDecoration(
                        color: Colors.purple.shade500,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Container(
                      height: size.height * 0.08,
                      width: size.width * 0.25,
                      child: const Text("aa"),
                      decoration: BoxDecoration(
                        color: Colors.purple.shade500,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Container(
                      width: size.width * 0.25,
                      height: size.height * 0.08,
                      child: const Text("aa"),
                      decoration: BoxDecoration(
                        color: Colors.purple.shade500,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
