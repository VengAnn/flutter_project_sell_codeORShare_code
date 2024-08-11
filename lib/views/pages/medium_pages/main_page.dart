import 'package:flutter/material.dart';
import 'package:share_code/components/my_custom_overlay.dart';
import 'package:share_code/utils/app_color.dart';
import 'package:share_code/utils/dimensions.dart';
import 'package:share_code/widgets/my_text_widget.dart';
import 'package:flutter_portal/flutter_portal.dart';

import '../../../utils/app_constant.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool _isOverlayVisible = false;

  void _toggleOverlay() {
    setState(() {
      _isOverlayVisible = !_isOverlayVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    final dimensions = Dimensions(context);
    return Scaffold(
      body: SafeArea(
        // all in this container like app bar (mobile) or nav bar in web
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              AppColor.colorGreen,
              AppColor.colorGreen1,
            ], begin: Alignment.centerLeft, end: Alignment.centerRight),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: dimensions.width5 / 2),
            child: Row(
              children: [
                const Image(
                  width: 50,
                  image: AssetImage("${AppConstant.assetImage}/logo_share.png"),
                ),
                const MyTextWidget(text: "ShareCode"),
                const Spacer(),

                MyCustomOverlay(
                  isOverlayVisible: _isOverlayVisible,
                  text: "Category",
                  toggleOverlay: _toggleOverlay,
                ),

                SizedBox(width: dimensions.width5),
                MyTextWidget(
                  text: "TopSource",
                  fontSize: dimensions.fontSize20,
                  onTap: () {},
                ),
                SizedBox(width: dimensions.width5),
                MyTextWidget(
                  text: "Programing knowledge free",
                  fontSize: dimensions.fontSize20,
                  onTap: () {},
                ),
                SizedBox(width: dimensions.width5),
                MyTextWidget(
                  text: "Sign in",
                  fontSize: dimensions.fontSize20,
                  onTap: () {},
                ),
                SizedBox(width: dimensions.width5),
                // here for searching
                Container(
                  width: dimensions.width20 * 2,
                  height: dimensions.height20 * 1.5,
                  decoration: BoxDecoration(
                    color: AppColor.colorLightGrey,
                    borderRadius: BorderRadius.all(
                      Radius.circular(dimensions.radius10),
                    ),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search...",
                      contentPadding: EdgeInsets.only(
                        top: 0,
                        bottom: 0,
                        left: dimensions.width5 / 3,
                      ),
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(dimensions.radius10),
                        borderSide: BorderSide.none,
                      ),
                      suffixIcon: const Icon(Icons.search),
                      suffixIconColor: AppColor.colorDarkGrey,
                    ),
                  ),
                ),
                SizedBox(width: dimensions.width5),
                // change light and dark mode
                Container(
                  width: dimensions.width20 * 1.2,
                  height: dimensions.height20 * 2,
                  decoration: BoxDecoration(
                    color: AppColor.colorGreen,
                    borderRadius: BorderRadius.circular(dimensions.radius10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          height: double.maxFinite,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius:
                                BorderRadius.circular(dimensions.radius10),
                          ),
                          child: Icon(Icons.light_mode),
                        ),
                      ),
                      //SizedBox(width: dimensions.width5 / 3),
                      Expanded(
                          child: Container(
                              height: double.maxFinite,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius:
                                    BorderRadius.circular(dimensions.radius10),
                              ),
                              child: const Icon(Icons.dark_mode))),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
