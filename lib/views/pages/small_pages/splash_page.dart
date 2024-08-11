import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:share_code/routes/route_helper.dart';
import 'package:share_code/utils/app_constant.dart';
import 'package:share_code/utils/dimensions.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      Get.toNamed(RouteHelper.getMainPage());
    });
  }

  @override
  Widget build(BuildContext context) {
    final dimensions = Dimensions(context);
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              width: dimensions.width20 * 4,
              image:
                  const AssetImage("${AppConstant.assetImage}/logo_share.png"),
            ),
          ],
        ),
      ),
    );
  }
}
