import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/constants/color.dart';

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
          SizedBox(height: Screenheight * 0.1),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: Screenheight * 0.15,
              width: Screenwidth,
              decoration: const BoxDecoration(
                color: TColors.containerColor,
                borderRadius: BorderRadius.all(Radius.circular(30)),
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
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'Welcome to your\nsmart home !',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
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
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            "23 July 2025",
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
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
        ],
      ),
    );
  }
}
