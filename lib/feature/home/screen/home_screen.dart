import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smart_home_light/feature/home/widget/add_button.dart';
import '../../../utils/constants/color.dart';
import '../../../utils/constants/fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final Screenheight = MediaQuery.of(context).size.height;
    final Screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: TColors.backgroundColor,
      body: Column(
        children: [
          SizedBox(height: Screenheight * 0.09),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: Screenheight * 0.15,
              width: Screenwidth,
              decoration: const BoxDecoration(
                color: TColors.whiteColor,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 16,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Hi, Chris',
                            style: TextStyle(
                              color: TColors.blackColor,
                              fontSize: 30,
                              fontWeight: FontWeight.w400,
                              fontFamily: TFonts.roboto,
                            ),
                          ),
                          FittedBox(
                            child: Text(
                              'Welcome to your smart home !',
                              style: TextStyle(
                                color: TColors.blackColor,
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                fontFamily: TFonts.roboto,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SvgPicture.asset("assets/images/cloud.svg"),
                          Text(
                            "25°C",
                            style: TextStyle(
                              color: TColors.blackColor,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              fontFamily: TFonts.roboto,
                            ),
                          ),
                          FittedBox(
                            child: Text(
                              "23 July 2025",
                              style: TextStyle(
                                color: TColors.blackColor,
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                fontFamily: TFonts.roboto,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: Screenheight * 0.02),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Device",
                    style: TextStyle(
                      color: TColors.blackColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: TFonts.roboto,
                    ),
                  ),
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.more_horiz_rounded,
                  color: TColors.blackColor,
                  size: 30,
                ),
              ),
            ],
          ),
          Container(
            height: Screenheight * 0.37,
            width: Screenwidth,
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: TColors.whiteColor,
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: Screenheight * 0.02),
                  Container(
                    height: Screenheight * 0.1,
                    width: Screenwidth * 0.23,
                    decoration: BoxDecoration(color: Color(0xFFF4F4F4)),
                  ),
                  SizedBox(height: Screenheight * 0.05),
                  Text(
                    textAlign: TextAlign.center,
                    "Power on the device and get the network\nready.",
                    style: TextStyle(
                      color: Color(0xFFF8C8C8C),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontFamily: TFonts.roboto,
                    ),
                  ),
                  SizedBox(height: Screenheight * 0.05),
                  AddButton(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
