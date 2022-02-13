import 'package:flutter/material.dart';
import 'package:flutter_application_7/constants/color_constant.dart';

class BellWidget extends StatelessWidget {
  const BellWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: const EdgeInsets.all(7),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey.shade200,
          ),
        ),
        Positioned(
          right: -3,
          top: -3,
          child: Container(
            alignment: Alignment.center,
            height: 15,
            width: 15,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffF24F4F),
            ),
            child: Text(
              '3',
              style: TextStyle(
                color: kWhiteColor,
                fontSize: size.width * 0.03,
              ),
            ),
          ),
        )
      ],
    );
  }
}
