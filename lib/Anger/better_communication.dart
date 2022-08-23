import 'package:flutter/material.dart';
import '../design_course_app_theme.dart';

class BetterCommunication extends StatefulWidget {
  @override
  _BetterCommunicationState createState() => _BetterCommunicationState();
}

class _BetterCommunicationState extends State<BetterCommunication>
    with TickerProviderStateMixin {
  final double infoHeight = 364.0;
  AnimationController? animationController;
  Animation<double>? animation;
  double opacity1 = 0.0;
  double opacity2 = 0.0;
  double opacity3 = 0.0;
  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);
    animation = Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        parent: animationController!,
        curve: Interval(0, 1.0, curve: Curves.fastOutSlowIn)));
    setData();
    super.initState();
  }

  Future<void> setData() async {
    animationController?.forward();
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    setState(() {
      opacity1 = 1.0;
    });
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    setState(() {
      opacity2 = 1.0;
    });
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    setState(() {
      opacity3 = 1.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    final double tempHeight = MediaQuery.of(context).size.height -
        (MediaQuery.of(context).size.width / 1.2) +
        24.0;
    return Container(
      color: DesignCourseAppTheme.nearlyWhite,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 1.2,
                  child: FittedBox(
                    child: Image.asset('assets/images/communication.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
            Positioned(
              top: (MediaQuery.of(context).size.width / 1.2) - 24.0,
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: DesignCourseAppTheme.nearlyWhite,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(32.0),
                      topRight: Radius.circular(32.0)),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: DesignCourseAppTheme.grey.withOpacity(0.2),
                        offset: const Offset(1.1, 1.1),
                        blurRadius: 10.0),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: SingleChildScrollView(
                    child: Container(
                      constraints: BoxConstraints(
                          minHeight: infoHeight,
                          maxHeight: tempHeight > infoHeight
                              ? tempHeight
                              : infoHeight),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 32.0, left: 18, right: 16),
                            child: Text(
                              'Better communication',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 30,
                                letterSpacing: 0.27,
                                color: DesignCourseAppTheme.darkerText,
                              ),
                            ),
                          ),
                          AnimatedOpacity(
                            duration: const Duration(milliseconds: 500),
                            opacity: opacity1,
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Row(
                                children: <Widget>[
                                  //getTimeBoxUI('5min', 'Practice'),
                                  //getTimeBoxUI('1 time', 'Day'),
                                  //getTimeBoxUI('', 'Seat'),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: AnimatedOpacity(
                              duration: const Duration(milliseconds: 500),
                              opacity: opacity2,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 16, right: 16, top: 8, bottom: 8),
                                child: SingleChildScrollView(
                                  child: Text(
                                    'Anger is a difficult emotion to process, and many people deal with it in unhealthy ways that can end up being detrimental to themselves or others.\n\nTo express yourself clearly, we’ve suggested a few healthy ways to communicate and process anger\n\n1. Understand your core emotion\n\nA wonderful and healthy way to communicate anger is by thinking “p before s”—processing before speaking.\nOnce you’ve figured out the core emotion which can help you better communicate your feelings\n\n2. Take a break\n\nAnother important step is taking your "me-time" (about 20 minutes)  understanding your feelings and calming your mind.\n\n3. Write it out\n\nIf you find yourself consistently angry, it may be a good idea to journal every night before bed, to ensure better emotional health.\n\n4. Use “I feel” statements\n\nWhen you have processed your core emotions and other underlying feelings, it may be time to talk to the other person. Prioritize the "I feel" statement to let the other person know what you are going through\n\n5. Stick to the subject\n\nAmy Bellows, Ph.D., wrote in a PsychCentral piece about how important it is to stick to the subject when you’re talking to someone while you’re angry.\nRemember that it is not productive to bring everything that’s ever bothered you in a conversation; it can put both parties on edge and flare emotions.\n\n6. Prepare to listen\n\n There is a chance that both are emotional at this point. You need to start listening to stop creating a cyclical fight.\n Listen with the intention of being open to opinions. Hopefully, this will help from keeping a similar argument from happening again.',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w200,
                                      fontSize: 14,
                                      letterSpacing: 0.27,
                                      color: DesignCourseAppTheme.grey,
                                    ),
                                    maxLines: 50,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          // AnimatedOpacity(
                          //   duration: const Duration(milliseconds: 500),
                          //   opacity: opacity3,
                          //   child: Padding(
                          //     padding: const EdgeInsets.only(
                          //         left: 16, bottom: 16, right: 16),
                          //     child: Row(
                          //       mainAxisAlignment: MainAxisAlignment.center,
                          //       crossAxisAlignment: CrossAxisAlignment.center,
                          //       children: <Widget>[
                          //         Container(
                          //           width: 48,
                          //           height: 48,
                          //           child: Container(
                          //             decoration: BoxDecoration(
                          //               color: DesignCourseAppTheme.nearlyWhite,
                          //               borderRadius: const BorderRadius.all(
                          //                 Radius.circular(16.0),
                          //               ),
                          //               border: Border.all(
                          //                   color: DesignCourseAppTheme.grey
                          //                       .withOpacity(0.2)),
                          //             ),
                          //             // child: Icon(
                          //             //   Icons.add,
                          //             //   color: DesignCourseAppTheme.nearlyBlue,
                          //             //   size: 28,
                          //             // ),
                          //           ),
                          //         ),
                          //         const SizedBox(
                          //           width: 16,
                          //         ),
                          //         Expanded(
                          //           child: Container(
                          //             height: 48,
                          //             decoration: BoxDecoration(
                          //               color: DesignCourseAppTheme.nearlyBlue,
                          //               borderRadius: const BorderRadius.all(
                          //                 Radius.circular(16.0),
                          //               ),
                          //               boxShadow: <BoxShadow>[
                          //                 BoxShadow(
                          //                     color: DesignCourseAppTheme
                          //                         .nearlyBlue
                          //                         .withOpacity(0.5),
                          //                     offset: const Offset(1.1, 1.1),
                          //                     blurRadius: 10.0),
                          //               ],
                          //             ),
                          //             child: Center(
                          //               child: Text(
                          //                 'Take Session',
                          //                 textAlign: TextAlign.left,
                          //                 style: TextStyle(
                          //                   fontWeight: FontWeight.w600,
                          //                   fontSize: 18,
                          //                   letterSpacing: 0.0,
                          //                   color: DesignCourseAppTheme
                          //                       .nearlyWhite,
                          //                 ),
                          //               ),
                          //             ),
                          //           ),
                          //         )
                          //       ],
                          //     ),
                          //   ),
                          // ),
                          SizedBox(
                            height: MediaQuery.of(context).padding.bottom,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: (MediaQuery.of(context).size.width / 1.2) - 24.0 - 35,
              right: 35,
              child: ScaleTransition(
                alignment: Alignment.center,
                scale: CurvedAnimation(
                    parent: animationController!, curve: Curves.fastOutSlowIn),
                child: Card(
                  color: DesignCourseAppTheme.nearlyBlue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0)),
                  elevation: 10.0,
                  child: Container(
                    width: 60,
                    height: 60,
                    child: Center(
                      child: Icon(
                        Icons.favorite,
                        color: DesignCourseAppTheme.nearlyWhite,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
              child: SizedBox(
                width: AppBar().preferredSize.height,
                height: AppBar().preferredSize.height,
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius:
                        BorderRadius.circular(AppBar().preferredSize.height),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: DesignCourseAppTheme.nearlyBlack,
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget getTimeBoxUI(String text1, String txt2) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: DesignCourseAppTheme.nearlyWhite,
          borderRadius: const BorderRadius.all(Radius.circular(16.0)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: DesignCourseAppTheme.grey.withOpacity(0.2),
                offset: const Offset(1.1, 1.1),
                blurRadius: 8.0),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(
              left: 18.0, right: 18.0, top: 12.0, bottom: 12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                text1,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  letterSpacing: 0.27,
                  color: DesignCourseAppTheme.nearlyBlue,
                ),
              ),
              Text(
                txt2,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                  fontSize: 14,
                  letterSpacing: 0.27,
                  color: DesignCourseAppTheme.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
