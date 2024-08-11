import 'package:flutter/material.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:share_code/utils/dimensions.dart';

import '../widgets/my_text_widget.dart';

class MyCustomOverlay extends StatelessWidget {
  final bool isOverlayVisible;
  final String text;
  final VoidCallback toggleOverlay;

  const MyCustomOverlay({
    super.key,
    required this.isOverlayVisible,
    required this.text,
    required this.toggleOverlay,
  });

  @override
  Widget build(BuildContext context) {
    final dimensions = Dimensions(context);
    return Portal(
      child: PortalTarget(
        visible: isOverlayVisible,
        anchor: const Aligned(
          follower: Alignment.topLeft,
          target: Alignment.bottomLeft,
        ),
        portalFollower: Material(
          elevation: 8,
          child: SizedBox(
            width: dimensions.width20 * 7.5,
            child: GridView.builder(
              // shrinkWrap: true => Allows the GridView to shrink to fit its content
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, // Number of columns
                crossAxisSpacing: dimensions.width5,
                childAspectRatio: dimensions.screenWidth /
                    (dimensions.screenWidth - (dimensions.width20 * 15)),
              ),
              itemCount: 20,
              itemBuilder: (context, index) {
                return Center(
                  child: Container(
                    decoration: const BoxDecoration(
                      //color: Colors.amber,
                      color: Colors.transparent,
                    ),
                    child: MyTextWidget(
                      text: "Option  $index",
                      textAlign: TextAlign.left,
                      maxLine: 1,
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        child: GestureDetector(
          onTap: toggleOverlay,
          child: MyTextWidget(
            text: text,
          ),
        ),
      ),
    );
  }
}
