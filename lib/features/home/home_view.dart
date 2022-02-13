import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:kirkuc_numara/constants/color_constant.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kirkuc_numara/models/card_model.dart';
import '../../core/base/base_view.dart';
import 'home_view_model.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<HomeViewModel>(
      viewModel: HomeViewModel(),
      onViewModelReady: (viewModel) {
        viewModel.setContext(context);
        viewModel.init();
      },
      builder: (BuildContext context, HomeViewModel viewModel) {
        return Scaffold(
          body: Observer(
            builder: (BuildContext context) {
              if (viewModel.isLoading) {
                return Center(child: CircularProgressIndicator());
              } else {
                if (viewModel.cardData == null) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.add),
                        Text('Kart Ekle'),
                      ],
                    ),
                  );
                } else {
                  return Center(
                    child: Container(
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
                                color: kBlueColor),
                            child: Stack(
                              children: <Widget>[
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
                                    viewModel.cardData!.cardNumber.toString(),
                                    style: GoogleFonts.inter(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                        color: kWhiteColor),
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
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  );
                }
              }
            },
          ),
        );
      },
    );
  }
}
