import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kirkuc_numara/drawer.dart';
import 'package:kirkuc_numara/notifications.dart';

import '../constants/color_constant.dart';
import '../models/card_model.dart';
import '../models/operation_model.dart';
import '../models/transaction_model.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Current selected
  int current = 0;

  // Handle Indicator
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawerWidget(),
      appBar: AppBar(
        leadingWidth: 80,
        actions: [
          IconButton(
            padding: const EdgeInsets.only(right: 40),
            icon: const Icon(
              Icons.notification_add_sharp,
              color: kBlueColor,
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
        systemOverlayStyle: SystemUiOverlayStyle.dark, //veli hocam :)
        elevation: 0,
        iconTheme: const IconThemeData(color: kBlueColor, size: 40),
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(top: 8),
          child: ListView(
            physics: const ClampingScrollPhysics(),
            children: <Widget>[
              // Custom AppBar

              // Card Section
              const SizedBox(
                height: 25,
              ),

              Padding(
                padding: const EdgeInsets.only(left: 16, bottom: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Günaydın',
                      style: GoogleFonts.inter(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: kBlackColor),
                    ),
                    Text(
                      'Kırküç Numara',
                      style: GoogleFonts.inter(
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                          color: kBlackColor),
                    )
                  ],
                ),
              ),

              Container(
                height: 199,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(left: 16, right: 6),
                  itemCount: cards.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(right: 10),
                      height: 199,
                      width: 344,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(28),
                        color: Color(cards[index].cardBackground),
                      ),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            child:
                                SvgPicture.asset(cards[index].cardElementTop),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: SvgPicture.asset(
                                cards[index].cardElementBottom),
                          ),
                          Positioned(
                            left: 29,
                            top: 48,
                            child: Text(
                              'KART NUMAARASI',
                              style: GoogleFonts.inter(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: kWhiteColor),
                            ),
                          ),
                          Positioned(
                            left: 29,
                            top: 65,
                            child: Text(
                              cards[index].cardNumber,
                              style: GoogleFonts.inter(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: kWhiteColor),
                            ),
                          ),
                          Positioned(
                            right: 21,
                            top: 35,
                            child: Image.asset(
                              cards[index].cardType,
                              width: 27,
                              height: 27,
                            ),
                          ),
                          Positioned(
                            left: 29,
                            bottom: 45,
                            child: Text(
                              'KART SAHİBİ',
                              style: GoogleFonts.inter(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: kWhiteColor),
                            ),
                          ),
                          Positioned(
                            left: 29,
                            bottom: 21,
                            child: Text(
                              cards[index].user,
                              style: GoogleFonts.inter(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: kWhiteColor),
                            ),
                          ),
                          Positioned(
                            left: 202,
                            bottom: 45,
                            child: Text(
                              'SKT',
                              style: GoogleFonts.inter(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: kWhiteColor),
                            ),
                          ),
                          Positioned(
                            left: 202,
                            bottom: 21,
                            child: Text(
                              cards[index].cardExpired,
                              style: GoogleFonts.inter(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: kWhiteColor),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),

              // Operation Section
              Padding(
                padding: const EdgeInsets.only(
                    left: 16, bottom: 13, top: 29, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Operation',
                      style: GoogleFonts.inter(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: kBlackColor),
                    ),
                    Row(
                      children: map<Widget>(
                        datas,
                        (index, selected) {
                          return Container(
                            alignment: Alignment.centerLeft,
                            height: 9,
                            width: 9,
                            margin: const EdgeInsets.only(right: 6),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: current == index
                                    ? kBlueColor
                                    : kTwentyBlueColor),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),

              Container(
                height: 123,
                child: ListView.builder(
                  itemCount: datas.length,
                  padding: const EdgeInsets.only(left: 16),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          current = index;
                        });
                      },
                      child: OperationCard(
                          operation: datas[index].name!,
                          selectedIcon: datas[index].selectedIcon!,
                          unselectedIcon: datas[index].unselectedIcon!,
                          isSelected: current == index,
                          context: this),
                    );
                  },
                ),
              ),

              // Transaction Section
              Padding(
                padding: const EdgeInsets.only(
                    left: 16, bottom: 13, top: 29, right: 10),
                child: Text(
                  'Transaction Histories',
                  style: GoogleFonts.inter(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: kBlackColor),
                ),
              ),
              ListView.builder(
                itemCount: transactions.length,
                padding: const EdgeInsets.only(left: 16, right: 16),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    height: 76,
                    margin: const EdgeInsets.only(bottom: 13),
                    padding: const EdgeInsets.only(
                        left: 24, top: 12, bottom: 12, right: 22),
                    decoration: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const [
                        BoxShadow(
                          color: kTenBlackColor,
                          blurRadius: 10,
                          spreadRadius: 5,
                          offset: Offset(8.0, 8.0),
                        )
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              height: 57,
                              width: 57,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(transactions[index].photo!),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 13,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  transactions[index].name!,
                                  style: GoogleFonts.inter(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: kBlackColor),
                                ),
                                Text(
                                  transactions[index].date!,
                                  style: GoogleFonts.inter(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: kGreyColor),
                                )
                              ],
                            )
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              transactions[index].amount!,
                              style: GoogleFonts.inter(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                  color: kBlueColor),
                            )
                          ],
                        )
                      ],
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class OperationCard extends StatefulWidget {
  final String operation;
  final String selectedIcon;
  final String unselectedIcon;
  final bool isSelected;
  _HomeScreenState context;

  OperationCard(
      {required this.operation,
      required this.selectedIcon,
      required this.unselectedIcon,
      required this.isSelected,
      required this.context});

  @override
  _OperationCardState createState() => _OperationCardState();
}

class _OperationCardState extends State<OperationCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      width: 123,
      height: 123,
      decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: kTenBlackColor,
              blurRadius: 10,
              spreadRadius: 5,
              offset: Offset(8.0, 8.0),
            )
          ],
          borderRadius: BorderRadius.circular(15),
          color: widget.isSelected ? kBlueColor : kWhiteColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SvgPicture.asset(
              widget.isSelected ? widget.selectedIcon : widget.unselectedIcon),
          const SizedBox(
            height: 9,
          ),
          Text(
            widget.operation,
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: widget.isSelected ? kWhiteColor : kBlueColor),
          )
        ],
      ),
    );
  }
}
