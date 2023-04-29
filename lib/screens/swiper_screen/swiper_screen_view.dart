import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:swipeme/Widget/swiper/CardView.dart';
import 'package:swipeme/Widget/swiper/SwipeableCardSectionController.dart';
import 'package:swipeme/Widget/swiper/swipeable_card_stack.dart';
import 'package:swipeme/constant/app_image.dart';
import 'package:swipeme/constant/colors.dart';
import 'package:swipeme/screens/navigation_dashboard/dashboard_controller.dart';
import 'package:swipeme/screens/splash_screen/splash_screen_logic.dart';
import 'package:swipeme/screens/swiper_screen/swiper_screen_logic.dart';

class SwiperScreenView extends GetView<SwiperScreenLogic> {
  // const SwiperScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    int counter = 0;

    SwipeableCardSectionController cardController =
        SwipeableCardSectionController();

    final logic = Get.put(SwiperScreenLogic());
    // return Obx(() {
    return Scaffold(
        backgroundColor: cSwiperPageBg,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: w,
              height: h * 0.09,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              debugPrint("Open Drawer");
                              Get.find<DashboardLogic>()
                                  .scaffoldKey
                                  .currentState!
                                  .openDrawer();
                            },
                            child: Padding(
                              padding: EdgeInsets.only(left: w * 0.06),
                              child: SvgPicture.asset(
                                Assets.open_nav_side,
                                height: w * 0.03,
                                width: w * 0.03,
                              ),
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          debugPrint("Message Click");
                        },
                        child: Padding(
                          padding: EdgeInsets.only(right: w * 0.03),
                          child: SvgPicture.asset(
                            Assets.has_messages_icon,
                            height: w * 0.05,
                            width: w * 0.05,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: h * 0.01,
                  )
                ],
              ),
            ),
            SizedBox(
              height: h * 0.06,
            ),
            /*SizedBox(
                width: w,
                height: h * 0.70,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: w * 0.9,
                      height: h * 0.55,
                      decoration: BoxDecoration(
                          color: cWhite,
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                              color: cSwiperShadowColor,
                              offset: const Offset(5.0, 5.0),
                              blurRadius: 10.0,
                              spreadRadius: 8.0,
                            ),
                          ]),
                    ),
                    Container(
                      width: w * 0.83,
                      height: h * 0.60,
                      decoration: BoxDecoration(
                          color: cWhite,
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                              color: cSwiperShadowColor,
                              offset: const Offset(5.0, 5.0),
                              blurRadius: 10.0,
                              spreadRadius: 8.0,
                            ),
                          ]),
                    ),
                    Container(
                      width: w * 0.75,
                      height: h * 0.65,
                      decoration: BoxDecoration(
                          color: cWhite,
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                              color: cSwiperShadowColor,
                              offset: const Offset(5.0, 5.0),
                              blurRadius: 10.0,
                              spreadRadius: 8.0,
                            ),
                          ]),
                      // child: profileData(w, h),
                    ),
                  ],
                ),
              ),*/
            SwipeableCardsSection(
              cardController: cardController,
              context: context,
              //add the first 3 cards
              items: [
                CardView(text: "First card"),
                CardView(text: "Second card"),
                CardView(text: "Third card"),
              ],
              onCardSwiped: (dir, index, widget) {
                //Add the next card
                if (counter <= 20) {
                  cardController.addItem(CardView(text: "Card ${counter}"));
                  counter++;
                }

                if (dir == Direction.left) {
                  print('onDisliked ${(widget as CardView).text} $index');
                } else if (dir == Direction.right) {
                  print('onLiked ${(widget as CardView).text} $index');
                } else if (dir == Direction.up) {
                  print('onUp ${(widget as CardView).text} $index');
                } else if (dir == Direction.down) {
                  print('onDown ${(widget as CardView).text} $index');
                }
              },
              enableSwipeUp: false,
              enableSwipeDown: false,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  Assets.info_swiper,
                  width: w * 0.1,
                  height: w * 0.1,
                ),
                SizedBox(
                  width: w * 0.04,
                ),
                Image.asset(
                  Assets.bookmark_swiper,
                  width: w * 0.1,
                  height: w * 0.1,
                ),
                SizedBox(
                  width: w * 0.04,
                ),
                Image.asset(
                  Assets.heart_swiper,
                  width: w * 0.1,
                  height: w * 0.1,
                ),
                SizedBox(
                  width: w * 0.04,
                ),
                Image.asset(
                  Assets.share_swiper,
                  width: w * 0.1,
                  height: w * 0.1,
                ),
                SizedBox(
                  width: w * 0.04,
                ),
                GestureDetector(
                  onTap: () {
                    print("onINFOClick");
                    logic.openJobDetailsDialog(context);
                  },
                  child: Image.asset(
                    Assets.info_swiper,
                    width: w * 0.1,
                    height: w * 0.1,
                  ),
                ),
              ],
            ),
          ],
        ));
    // });
  }
}
