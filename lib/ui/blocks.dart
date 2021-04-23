// import 'dart:convert';
// import 'dart:typed_data';
// import 'dart:ui' as ui;

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:task_webapp/components/components.dart';
// import 'package:task_webapp/utils/utils.dart';
// import 'package:responsive_framework/responsive_framework.dart';

// class GetStarted extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 15.0),
//       child: Container(
//         decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(4),
//             border: Border.all(color: border)),
//         margin: blockMargin,
//         padding: EdgeInsets.all(40),
//         child: Align(
//           alignment: Alignment.center,
//           child: Container(
//             constraints: BoxConstraints(maxWidth: 780),
//             child: Column(
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Text("Services",
//                         style:
//                             headlineSecondaryTextStyle.copyWith(fontSize: 24)),
//                     // Padding(
//                     //   padding: EdgeInsets.only(top: 5),
//                     //   child: Image.asset("assets/images/google_logo.png",
//                     //       width: 75, height: 24, fit: BoxFit.fill),
//                     // ),
//                   ],
//                 ),
//                 Padding(
//                   padding: EdgeInsets.symmetric(vertical: 32),
//                   child: RichText(
//                     text: TextSpan(
//                       children: [
//                         TextSpan(
//                             text:
//                                 "FlatX - Application to find the best pharmacies, supported across platforms ",
//                             style: headlineSecondaryTextStyle),
//                         TextSpan(
//                             recognizer: TapGestureRecognizer()
//                               ..onTap = () {
//                                 openUrl("https://flutter.dev/docs");
//                               },
//                             text: "mobile",
//                             style: headlineSecondaryTextStyle.copyWith(
//                                 color: primary)),
//                         TextSpan(text: ", ", style: headlineSecondaryTextStyle),
//                         TextSpan(
//                             recognizer: TapGestureRecognizer()
//                               ..onTap = () {
//                                 openUrl("https://flutter.dev/web");
//                               },
//                             text: "web",
//                             style: headlineSecondaryTextStyle.copyWith(
//                                 color: primary)),
//                         TextSpan(
//                             text: ", and ", style: headlineSecondaryTextStyle),
//                         TextSpan(
//                             recognizer: TapGestureRecognizer()
//                               ..onTap = () {
//                                 openUrl("https://flutter.dev/desktop");
//                               },
//                             text: "desktop",
//                             style: headlineSecondaryTextStyle.copyWith(
//                                 color: primary)),
//                         TextSpan(
//                             text: " from a single codebase.",
//                             style: headlineSecondaryTextStyle),
//                       ],
//                     ),
//                     textAlign: TextAlign.center,
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(bottom: 32),
//                   child: ResponsiveRowColumn(
//                     rowColumn:
//                         !ResponsiveWrapper.of(context).isSmallerThan(DESKTOP),
//                     rowMainAxisAlignment: MainAxisAlignment.center,
//                     rowCrossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       ResponsiveRowColumnItem(
//                         child: TextButton(
//                           onPressed: () => openUrl(
//                               "https://flutter.dev/docs/get-started/install"),
//                           style: ButtonStyle(
//                               backgroundColor:
//                                   MaterialStateProperty.all<Color>(primary),
//                               overlayColor:
//                                   MaterialStateProperty.resolveWith<Color>(
//                                 (Set<MaterialState> states) {
//                                   if (states.contains(MaterialState.hovered))
//                                     return buttonPrimaryDark;
//                                   if (states.contains(MaterialState.focused) ||
//                                       states.contains(MaterialState.pressed))
//                                     return buttonPrimaryDarkPressed;
//                                   return primary;
//                                 },
//                               ),
//                               // Shape sets the border radius from default 3 to 0.
//                               shape: MaterialStateProperty.resolveWith<
//                                   OutlinedBorder>(
//                                 (Set<MaterialState> states) {
//                                   if (states.contains(MaterialState.focused) ||
//                                       states.contains(MaterialState.pressed))
//                                     return RoundedRectangleBorder(
//                                         borderRadius: BorderRadius.all(
//                                             Radius.circular(0)));
//                                   return RoundedRectangleBorder(
//                                       borderRadius:
//                                           BorderRadius.all(Radius.circular(0)));
//                                 },
//                               ),
//                               padding:
//                                   MaterialStateProperty.all<EdgeInsetsGeometry>(
//                                       EdgeInsets.symmetric(
//                                           vertical: 32, horizontal: 84)),
//                               // Side adds pressed highlight outline.
//                               side:
//                                   MaterialStateProperty.resolveWith<BorderSide>(
//                                       (Set<MaterialState> states) {
//                                 if (states.contains(MaterialState.focused) ||
//                                     states.contains(MaterialState.pressed))
//                                   return BorderSide(
//                                       width: 3,
//                                       color: buttonPrimaryPressedOutline);
//                                 // Transparent border placeholder as Flutter does not allow
//                                 // negative margins.
//                                 return BorderSide(
//                                     width: 3, color: Colors.white);
//                               })),
//                           child: Text(
//                             "Get started",
//                             style: buttonTextStyle.copyWith(fontSize: 18),
//                           ),
//                         ),
//                       ),
//                       ResponsiveRowColumnItem(
//                         child: Padding(
//                           padding: EdgeInsets.symmetric(horizontal: 8),
//                           child: FlatButton(
//                             onPressed: () => {},
//                             shape: RoundedRectangleBorder(
//                                 borderRadius:
//                                     BorderRadius.all(Radius.circular(0))),
//                             padding: EdgeInsets.symmetric(
//                                 vertical: 20, horizontal: 20),
//                             child: Row(
//                               mainAxisSize: MainAxisSize.min,
//                               children: [
//                                 Padding(
//                                   padding: EdgeInsets.only(right: 8),
//                                   child: Icon(
//                                     Icons.play_circle_filled,
//                                     size: 24,
//                                     color: primary,
//                                   ),
//                                 ),
//                                 Text(
//                                   "Watch video",
//                                   style: buttonTextStyle.copyWith(
//                                       fontSize: 16, color: primary),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(bottom: 16),
//                   child: RichText(
//                     text: TextSpan(children: [
//                       TextSpan(
//                           text: "Coming from another platform? Docs: ",
//                           style: bodyTextStyle),
//                       TextSpan(
//                           recognizer: TapGestureRecognizer()
//                             ..onTap = () {
//                               openUrl(
//                                   "https://flutter.dev/docs/get-started/flutter-for/ios-devs");
//                             },
//                           text: "iOS",
//                           style: bodyLinkTextStyle),
//                       TextSpan(text: ", ", style: bodyTextStyle),
//                       TextSpan(
//                           recognizer: TapGestureRecognizer()
//                             ..onTap = () {
//                               openUrl(
//                                   "https://flutter.dev/docs/get-started/flutter-for/android-devs");
//                             },
//                           text: "Android",
//                           style: bodyLinkTextStyle),
//                       TextSpan(text: ", ", style: bodyTextStyle),
//                       TextSpan(
//                           recognizer: TapGestureRecognizer()
//                             ..onTap = () {
//                               openUrl(
//                                   "https://flutter.dev/docs/get-started/flutter-for/web-devs");
//                             },
//                           text: "Web",
//                           style: bodyLinkTextStyle),
//                       TextSpan(text: ", ", style: bodyTextStyle),
//                       TextSpan(
//                           recognizer: TapGestureRecognizer()
//                             ..onTap = () {
//                               openUrl(
//                                   "https://flutter.dev/docs/get-started/flutter-for/react-native-devs");
//                             },
//                           text: "React Native",
//                           style: bodyLinkTextStyle),
//                       TextSpan(text: ", ", style: bodyTextStyle),
//                       TextSpan(
//                           recognizer: TapGestureRecognizer()
//                             ..onTap = () {
//                               openUrl(
//                                   "https://flutter.dev/docs/get-started/flutter-for/xamarin-forms-devs");
//                             },
//                           text: "Xamarin",
//                           style: bodyLinkTextStyle),
//                       TextSpan(text: ".", style: bodyTextStyle),
//                     ]),
//                     textAlign: TextAlign.center,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class Features extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(4),
//           border: Border.all(color: border)),
//       margin: blockMargin,
//       child: ResponsiveRowColumn(
//         rowColumn: !ResponsiveWrapper.of(context).isSmallerThan(DESKTOP),
//         rowCrossAxisAlignment: CrossAxisAlignment.start,
//         columnCrossAxisAlignment: CrossAxisAlignment.center,
//         columnMainAxisSize: MainAxisSize.min,
//         rowPadding: EdgeInsets.symmetric(horizontal: 80, vertical: 80),
//         columnPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 50),
//         columnSpacing: 50,
//         rowSpacing: 50,
//         children: [
//           ResponsiveRowColumnItem(
//             rowFlex: 1,
//             rowFit: FlexFit.tight,
//             child: Column(
//               children: <Widget>[
//                 Padding(
//                   padding: EdgeInsets.only(bottom: 32),
//                   child: buildMaterialIconCircle(
//                       "assets/images/icon_development.png", 68),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(bottom: 16),
//                   child: Text("Fast Development",
//                       style: headlineSecondaryTextStyle,
//                       textAlign: TextAlign.center),
//                 ),
//                 Text(
//                     "Paint your app to life in milliseconds with Stateful Hot Reload. Use a rich set of fully-customizable widgets to build native interfaces in minutes.",
//                     style: bodyTextStyle,
//                     textAlign: TextAlign.center),
//               ],
//             ),
//           ),
//           ResponsiveRowColumnItem(
//             rowFlex: 1,
//             rowFit: FlexFit.tight,
//             child: Column(
//               children: <Widget>[
//                 Padding(
//                   padding: EdgeInsets.only(bottom: 32),
//                   child:
//                       buildMaterialIconCircle("assets/images/icon_ui.png", 68),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(bottom: 16),
//                   child: Text("Expressive and Flexible UI",
//                       style: headlineSecondaryTextStyle,
//                       textAlign: TextAlign.center),
//                 ),
//                 Text(
//                     "Quickly ship features with a focus on native end-user experiences. Layered architecture allows for full customization, which results in incredibly fast rendering and expressive and flexible designs.",
//                     style: bodyTextStyle,
//                     textAlign: TextAlign.center),
//               ],
//             ),
//           ),
//           ResponsiveRowColumnItem(
//             rowFlex: 1,
//             rowFit: FlexFit.tight,
//             child: Column(
//               children: <Widget>[
//                 Padding(
//                   padding: EdgeInsets.only(bottom: 32),
//                   child: buildMaterialIconCircle(
//                       "assets/images/icon_performance.png", 68),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(bottom: 16),
//                   child: Text("Native Performance",
//                       style: headlineSecondaryTextStyle,
//                       textAlign: TextAlign.center),
//                 ),
//                 RichText(
//                   text: TextSpan(
//                     style: bodyTextStyle,
//                     children: [
//                       TextSpan(
//                           text:
//                               "Flutter’s widgets incorporate all critical platform differences such as scrolling, navigation, icons and fonts, and your Flutter code is compiled to native ARM machine code using "),
//                       TextSpan(
//                           recognizer: TapGestureRecognizer()
//                             ..onTap = () {
//                               openUrl("https://dart.dev/platforms");
//                             },
//                           text: "Dart's native compilers",
//                           style: bodyLinkTextStyle),
//                       TextSpan(text: "."),
//                     ],
//                   ),
//                   textAlign: TextAlign.center,
//                 )
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class FastDevelopment extends StatefulWidget {
//   @override
//   _FastDevelopmentState createState() => _FastDevelopmentState();
// }

// class _FastDevelopmentState extends State<FastDevelopment> {
//   VideoPlayerController videoController;
//   Future<void> initializeVideoPlayerFuture;

//   @override
//   void initState() {
//     super.initState();
//     videoController = VideoPlayerController.asset("assets/videos/FastDev.mp4");
//     videoController.setVolume(0);
//     videoController.setLooping(true);
//     initializeVideoPlayerFuture = videoController.initialize().then((_) {
//       if (this.mounted) {
//         // Display the first frame of the video before playback.
//         setState(() {});
//         videoPlay();
//       }
//     });
//   }

//   @override
//   void dispose() {
//     videoController.dispose();
//     super.dispose();
//   }

//   void videoPlay() {
//     videoController.play();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(4),
//           border: Border.all(color: border)),
//       margin: blockMargin,
//       padding: blockPadding(context),
//       child: ResponsiveRowColumn(
//         rowColumn: !ResponsiveWrapper.of(context).isSmallerThan(DESKTOP),
//         rowCrossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           ResponsiveRowColumnItem(
//             rowFlex: 2,
//             child: FutureBuilder(
//               future: initializeVideoPlayerFuture,
//               builder: (context, snapshot) {
//                 if (snapshot.connectionState == ConnectionState.done) {
//                   // If the VideoPlayerController has finished initialization, use
//                   // the data it provides to limit the aspect ratio of the VideoPlayer.
//                   return AspectRatio(
//                     aspectRatio: videoController.value.aspectRatio,
//                     child: RepaintBoundary(child: VideoPlayer(videoController)),
//                   );
//                 } else {
//                   // If the VideoPlayerController is still initializing, show a
//                   // isloading spinner.
//                   return Container();
//                 }
//               },
//             ),
//           ),
//           ResponsiveRowColumnItem(
//             rowFlex: 1,
//             child: Padding(
//               padding: EdgeInsets.fromLTRB(25, 32, 25, 0),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   Padding(
//                     padding: EdgeInsets.only(bottom: 16),
//                     child: buildMaterialIconCircle(
//                         "assets/images/icon_development.png", 68),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.only(bottom: 32),
//                     child: Text("Fast Development", style: headlineTextStyle),
//                   ),
//                   RichText(
//                     text: TextSpan(
//                       style: bodyTextStyle,
//                       children: [
//                         TextSpan(text: "Flutter's "),
//                         TextSpan(
//                             text: "hot reload",
//                             style: bodyTextStyle.copyWith(
//                                 fontStyle: FontStyle.italic)),
//                         TextSpan(
//                             text:
//                                 " helps you quickly and easily experiment, build UIs, add features, and fix bugs faster. Experience sub-second reload times, without losing state, on emulators, simulators, and hardware for iOS and Android."),
//                         TextSpan(text: "\n\n"),
//                         TextSpan(
//                             recognizer: TapGestureRecognizer()
//                               ..onTap = () {
//                                 openUrl(
//                                     "https://flutter.dev/docs/development/tools/hot-reload");
//                               },
//                             text: "Learn more",
//                             style: bodyLinkTextStyle)
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class BeautifulUI extends StatefulWidget {
//   @override
//   _BeautifulUIState createState() => _BeautifulUIState();
// }

// class _BeautifulUIState extends State<BeautifulUI> {
//   VideoPlayerController videoController;
//   Future<void> initializeVideoPlayerFuture;

//   @override
//   void initState() {
//     super.initState();
//     videoController =
//         VideoPlayerController.asset("assets/videos/BeautifulUI.mp4");
//     videoController.setVolume(0);
//     videoController.setLooping(true);
//     initializeVideoPlayerFuture = videoController.initialize().then((_) {
//       if (this.mounted) {
//         // Display the first frame of the video before playback.
//         setState(() {});
//         videoPlay();
//       }
//     });
//   }

//   @override
//   void dispose() {
//     videoController.dispose();
//     super.dispose();
//   }

//   void videoPlay() {
//     videoController.play();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(4),
//           border: Border.all(color: border)),
//       margin: blockMargin,
//       padding: blockPadding(context),
//       child: ResponsiveRowColumn(
//         rowColumn: !ResponsiveWrapper.of(context).isSmallerThan(DESKTOP),
//         rowCrossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           ResponsiveRowColumnItem(
//             rowFlex: 1,
//             columnOrder: 2,
//             child: Padding(
//               padding: EdgeInsets.fromLTRB(25, 32, 25, 0),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   Padding(
//                     padding: EdgeInsets.only(bottom: 16),
//                     child: buildMaterialIconCircle(
//                         "assets/images/icon_ui.png", 68),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.only(bottom: 32),
//                     child: Text("Expressive, beautiful UIs",
//                         style: headlineTextStyle),
//                   ),
//                   RichText(
//                     text: TextSpan(
//                       style: bodyTextStyle,
//                       children: [
//                         TextSpan(
//                             text:
//                                 "Delight your users with Flutter's built-in beautiful Material Design and Cupertino (iOS-flavor) widgets, rich motion APIs, smooth natural scrolling, and platform awareness."),
//                         TextSpan(text: "\n\n"),
//                         TextSpan(
//                             recognizer: TapGestureRecognizer()
//                               ..onTap = () {
//                                 openUrl(
//                                     "https://flutter.dev/docs/development/ui/widgets/catalog");
//                               },
//                             text: "Browse the widget catalog",
//                             style: bodyLinkTextStyle),
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//           ResponsiveRowColumnItem(
//             rowFlex: 2,
//             columnOrder: 1,
//             child: FutureBuilder(
//               future: initializeVideoPlayerFuture,
//               builder: (context, snapshot) {
//                 if (snapshot.connectionState == ConnectionState.done) {
//                   // If the VideoPlayerController has finished initialization, use
//                   // the data it provides to limit the aspect ratio of the VideoPlayer.
//                   return AspectRatio(
//                     aspectRatio: videoController.value.aspectRatio,
//                     child: RepaintBoundary(child: VideoPlayer(videoController)),
//                   );
//                 } else {
//                   // If the VideoPlayerController is still initializing, show a
//                   // isloading spinner.
//                   return Container();
//                 }
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class NativePerformance extends StatefulWidget {
//   @override
//   _NativePerformanceState createState() => _NativePerformanceState();
// }

// class _NativePerformanceState extends State<NativePerformance> {
//   VideoPlayerController videoController;
//   Future<void> initializeVideoPlayerFuture;

//   @override
//   void initState() {
//     super.initState();
//     videoController =
//         VideoPlayerController.asset("assets/videos/NativePerformance.mp4");
//     videoController.setVolume(0);
//     videoController.setLooping(true);
//     initializeVideoPlayerFuture = videoController.initialize().then((_) {
//       if (this.mounted) {
//         // Display the first frame of the video before playback.
//         setState(() {});
//         videoPlay();
//       }
//     });
//   }

//   @override
//   void dispose() {
//     videoController.dispose();
//     super.dispose();
//   }

//   void videoPlay() {
//     videoController.play();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(4),
//           border: Border.all(color: border)),
//       margin: blockMargin,
//       padding: blockPadding(context),
//       child: ResponsiveRowColumn(
//         rowColumn: !ResponsiveWrapper.of(context).isSmallerThan(DESKTOP),
//         rowCrossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           ResponsiveRowColumnItem(
//             rowFlex: 2,
//             child: FutureBuilder(
//               future: initializeVideoPlayerFuture,
//               builder: (context, snapshot) {
//                 if (snapshot.connectionState == ConnectionState.done) {
//                   // If the VideoPlayerController has finished initialization, use
//                   // the data it provides to limit the aspect ratio of the VideoPlayer.
//                   return AspectRatio(
//                     aspectRatio: videoController.value.aspectRatio,
//                     child: RepaintBoundary(child: VideoPlayer(videoController)),
//                   );
//                 } else {
//                   // If the VideoPlayerController is still initializing, show a
//                   // isloading spinner.
//                   return Container();
//                 }
//               },
//             ),
//           ),
//           ResponsiveRowColumnItem(
//             rowFlex: 1,
//             child: Padding(
//               padding: EdgeInsets.fromLTRB(25, 32, 25, 0),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   Padding(
//                     padding: EdgeInsets.only(bottom: 16),
//                     child: buildMaterialIconCircle(
//                         "assets/images/icon_performance.png", 68),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.only(bottom: 32),
//                     child: Text("Native Performance", style: headlineTextStyle),
//                   ),
//                   RichText(
//                     text: TextSpan(
//                       style: bodyTextStyle,
//                       children: [
//                         TextSpan(
//                             text:
//                                 "Flutter’s widgets incorporate all critical platform differences such as scrolling, navigation, icons and fonts to provide full native performance on both iOS and Android."),
//                         TextSpan(text: "\n\n"),
//                         TextSpan(
//                             recognizer: TapGestureRecognizer()
//                               ..onTap = () {
//                                 openUrl("https://flutter.dev/showcase");
//                               },
//                             text: "Examples of apps built with Flutter",
//                             style: bodyLinkTextStyle),
//                         TextSpan(text: "\n\n"),
//                         TextSpan(
//                             text: "Demo design inspired by ",
//                             style: bodyTextStyle.copyWith(fontSize: 12)),
//                         TextSpan(
//                             recognizer: TapGestureRecognizer()
//                               ..onTap = () {
//                                 openUrl("https://dribbble.com/aureliensalomon");
//                               },
//                             text: "Aurélien Salomon",
//                             style: bodyTextStyle.copyWith(
//                                 fontSize: 12, color: primary)),
//                         TextSpan(
//                             text: "'s ",
//                             style: bodyTextStyle.copyWith(fontSize: 12)),
//                         TextSpan(
//                             recognizer: TapGestureRecognizer()
//                               ..onTap = () {
//                                 openUrl(
//                                     "https://dribbble.com/shots/2940231-Google-Newsstand-Navigation-Pattern");
//                               },
//                             text: "Google Newsstand Navigation Pattern",
//                             style: bodyTextStyle.copyWith(
//                                 fontSize: 12, color: primary)),
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class LearnFromDevelopers extends StatefulWidget {
//   @override
//   _LearnFromDevelopersState createState() => _LearnFromDevelopersState();
// }

// class _LearnFromDevelopersState extends State<LearnFromDevelopers> {
//   final String videoUrl = "https://www.youtube.com/embed/W1pNjxmNHNQ";
//   final double videoAspectRatio = 1.78;
//   UniqueKey webViewKey = UniqueKey();

//   @override
//   void initState() {
//     super.initState();
//     webViewKey = UniqueKey();
//     // TODO: Breaks mobile builds. Official Flutter WebView plugin is working on Web support.
//     // TODO: Resets iframe on scroll. Wait for official Flutter fix.
//     // ignore: undefined_prefixed_name
//     ui.platformViewRegistry.registerViewFactory(
//         webViewKey.toString(),
//         (viewId) => html.IFrameElement()
//           ..width = "1080"
//           ..height = "606"
//           ..src = videoUrl
//           ..style.border = "none");
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(4),
//           border: Border.all(color: border)),
//       margin: blockMargin,
//       padding: blockPadding(context),
//       child: ResponsiveRowColumn(
//         rowColumn: !ResponsiveWrapper.of(context).isSmallerThan(DESKTOP),
//         rowCrossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           ResponsiveRowColumnItem(
//             rowFlex: 1,
//             columnOrder: 2,
//             child: Padding(
//               padding: EdgeInsets.fromLTRB(25, 32, 25, 0),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   Padding(
//                     padding: EdgeInsets.only(bottom: 32),
//                     child:
//                         Text("Learn from developers", style: headlineTextStyle),
//                   ),
//                   RichText(
//                     text: TextSpan(
//                       style: bodyTextStyle,
//                       children: [
//                         TextSpan(
//                             text:
//                                 "Watch these videos to learn from Google and developers as you build with Flutter."),
//                         TextSpan(text: "\n\n"),
//                         TextSpan(
//                             recognizer: TapGestureRecognizer()
//                               ..onTap = () {
//                                 openUrl("https://www.youtube.com/flutterdev");
//                               },
//                             text: "Visit our YouTube playlist",
//                             style: bodyLinkTextStyle),
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//           ResponsiveRowColumnItem(
//             rowFlex: 2,
//             columnOrder: 1,
//             child: Padding(
//               padding: EdgeInsets.symmetric(horizontal: 25),
//               child: AspectRatio(
//                 aspectRatio: videoAspectRatio,
//                 child: (kIsWeb)
//                     ? Image.asset(
//                         "assets/images/video_thumbnail_learn_from_developers.png",
//                         fit: BoxFit.contain)
//                     // TODO: Disable multiple embedded iframes to prevent flicker.
// //                HtmlElementView(
// //                        key: webViewKey,
// //                        viewType: webViewKey.toString(),
// //                      )
//                     : WebView(
//                         key: webViewKey,
//                         initialUrl: videoUrl,
//                       ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class WhoUsesFlutter extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(4),
//           border: Border.all(color: border)),
//       margin: blockMargin,
//       padding: blockPadding(context),
//       child: ResponsiveRowColumn(
//         rowColumn: !ResponsiveWrapper.of(context).isSmallerThan(DESKTOP),
//         rowCrossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           ResponsiveRowColumnItem(
//             rowFlex: 5,
//             columnOrder: 2,
//             child: Padding(
//               padding: EdgeInsets.fromLTRB(25, 24, 25, 0),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   Padding(
//                     padding: EdgeInsets.only(bottom: 16),
//                     child:
//                         Text("Who's using Flutter?", style: headlineTextStyle),
//                   ),
//                   RichText(
//                     text: TextSpan(
//                       style: bodyTextStyle,
//                       children: [
//                         TextSpan(
//                             text:
//                                 "Organizations around the world are building apps with Flutter."),
//                         TextSpan(text: "\n\n"),
//                         TextSpan(
//                             recognizer: TapGestureRecognizer()
//                               ..onTap = () {
//                                 openUrl("https://flutter.dev/showcase");
//                               },
//                             text: "See what’s being created",
//                             style: bodyLinkTextStyle),
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//           ResponsiveRowColumnItem(
//               rowFlex: 7,
//               columnOrder: 1,
//               child: Image.asset("assets/images/companies_using_flutter.png",
//                   fit: BoxFit.contain)),
//         ],
//       ),
//     );
//   }
// }

// class FlutterNewsRow extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: blockMargin,
//       child: ResponsiveRowColumn(
//         rowColumn: !ResponsiveWrapper.of(context).isSmallerThan(DESKTOP),
//         rowCrossAxisAlignment: CrossAxisAlignment.start,
//         rowSpacing: 25,
//         columnSpacing: 32,
//         children: [
//           ResponsiveRowColumnItem(
//             rowFlex: 1,
//             rowFit: FlexFit.tight,
//             child: FlutterNewsCard(
//               title: "Announcing Flutter 1.12",
//               imagePath: "assets/images/news_flutter_1.12.png",
//               linkUrl:
//                   "https://developers.googleblog.com/2019/12/flutter-ui-ambient-computing.html",
//             ),
//           ),
//           ResponsiveRowColumnItem(
//             rowFlex: 1,
//             rowFit: FlexFit.tight,
//             child: FlutterNewsCard(
//               title: "CodePen now supports Flutter",
//               imagePath: "assets/images/news_flutter_codepen.png",
//               linkUrl:
//                   "https://medium.com/flutter/announcing-codepen-support-for-flutter-bb346406fe50",
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class FlutterNewsCard extends StatelessWidget {
//   final String title;
//   final String imagePath;
//   final String linkUrl;

//   const FlutterNewsCard(
//       {Key key,
//       @required this.title,
//       @required this.imagePath,
//       @required this.linkUrl})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(4),
//           border: Border.all(color: border)),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           Container(
//             constraints: BoxConstraints(maxHeight: 400),
//             child: Image.asset(imagePath, fit: BoxFit.fitWidth),
//           ),
//           Padding(
//             padding: EdgeInsets.fromLTRB(40, 40, 40, 40),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 Padding(
//                   padding: EdgeInsets.only(bottom: 16),
//                   child: Text("News",
//                       style: bodyTextStyle.copyWith(
//                           fontSize: 12, color: Color(0xFF6C757D))),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(bottom: 16),
//                   child: Text(title, style: headlineSecondaryTextStyle),
//                 ),
//                 GestureDetector(
//                   onTap: () => openUrl(linkUrl),
//                   child: Text("Read More", style: bodyLinkTextStyle),
//                 )
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// class FlutterCodelab extends StatefulWidget {
//   @override
//   _FlutterCodelabState createState() => _FlutterCodelabState();
// }

// class _FlutterCodelabState extends State<FlutterCodelab>
//     with AutomaticKeepAliveClientMixin<FlutterCodelab> {
//   static List<String> codelabIds = ["Spinning Flutter", "Fibonacci", "Counter"];
//   static List<String> codelabUrls = [
//     "https://dartpad.dev/embed-flutter.html?id=c0450ca427127acfb710a31c99761f1a",
//     "https://dartpad.dev/embed-flutter.html?id=38311b87e4b3c76329812077c82323b4",
//     "https://dartpad.dev/embed-flutter.html?id=7b5710b344431457753253625a596158"
//   ];
//   String codelabSelected = codelabIds[0];
//   String codelabUrlSelected = codelabUrls[0];
//   final double videoAspectRatio = 1.75;

//   Map<String, Widget> codelabExamples;
//   // TODO: Breaks mobile builds. Official Flutter WebView plugin is working on Web support.
//   HtmlElementView codelabHtmlElementView;
//   UniqueKey webViewKey = UniqueKey();

//   @override
//   void initState() {
//     super.initState();
//     codelabExamples = <String, Widget>{
//       codelabIds[0]: getCupertinoSelectionWidget(codelabIds[0]),
//       codelabIds[1]: getCupertinoSelectionWidget(codelabIds[1]),
//       codelabIds[2]: getCupertinoSelectionWidget(codelabIds[2]),
//     };
//     setCodelabHtmlElementView();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(4),
//           border: Border.all(color: border)),
//       margin: blockMargin,
//       padding: blockPadding(context),
//       child: Align(
//         alignment: Alignment.center,
//         child: Container(
//           constraints: BoxConstraints(maxWidth: 1000),
//           child: Column(
//             children: [
//               Padding(
//                 padding: EdgeInsets.only(bottom: 16),
//                 child: Text("Try Flutter in your browser",
//                     style: headlineTextStyle),
//               ),
//               CupertinoSlidingSegmentedControl(
//                 groupValue: codelabSelected,
//                 onValueChanged: (value) => setCodelabSelected(value),
//                 children: codelabExamples,
//               ),
//               RepaintBoundary(
//                 key: webViewKey,
//                 child: Padding(
//                   padding: EdgeInsets.fromLTRB(25, 16, 25, 16),
//                   child: AspectRatio(
//                     aspectRatio: videoAspectRatio,
//                     child: (kIsWeb)
//                         ? Container(
//                             decoration: BoxDecoration(
//                               border: Border.all(
//                                   color: Color(0xFFD3D3D3), width: 1),
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(0)),
//                             ),
//                             child: HtmlElementView(
//                               key: webViewKey,
//                               viewType: codelabSelected,
//                             ),
//                           )
//                         : WebView(
//                             key: webViewKey,
//                             initialUrl: codelabUrlSelected,
//                           ),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.only(top: 16, bottom: 16),
//                 child: RichText(
//                   text: TextSpan(
//                     style: headlineSecondaryTextStyle,
//                     children: [
//                       TextSpan(text: "Want more practice? "),
//                       TextSpan(
//                           recognizer: TapGestureRecognizer()
//                             ..onTap = () {
//                               openUrl("https://flutter.dev/codelabs");
//                             },
//                           text: "Try a codelab",
//                           style: headlineSecondaryTextStyle.copyWith(
//                               color: primary)),
//                       TextSpan(text: ".")
//                     ],
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   bool get wantKeepAlive => true;

//   void setCodelabSelected(String codelab) {
//     codelabSelected = codelab;
//     codelabUrlSelected = codelabUrls[codelabIds.indexOf(codelab)];
//     setCodelabHtmlElementView();
//     setState(() {});
//   }

//   void setCodelabHtmlElementView() {
//     // ignore: undefined_prefixed_name
//     ui.platformViewRegistry.registerViewFactory(
//         codelabSelected,
//         (viewId) => html.IFrameElement()
//           ..width = "1080"
//           ..height = "617"
//           ..src = codelabUrlSelected
//           ..style.border = "none");
//   }

//   Widget getCupertinoSelectionWidget(String text) {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 24),
//       child: Text(text, style: bodyTextStyle),
//     );
//   }
// }

// class InstallFlutter extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(4),
//           border: Border.all(color: border)),
//       margin: blockMargin,
//       padding: blockPadding(context),
//       child: Align(
//         alignment: Alignment.center,
//         child: Container(
//           constraints: BoxConstraints(maxWidth: 800),
//           child: Column(
//             children: [
//               Padding(
//                 padding: EdgeInsets.only(bottom: 16),
//                 child: Text("Install Flutter today.", style: headlineTextStyle),
//               ),
//               Padding(
//                 padding: EdgeInsets.only(bottom: 16),
//                 child: Text("It’s free and open source.",
//                     style: bodyTextStyle.copyWith(fontSize: 24)),
//               ),
//               Padding(
//                 padding: EdgeInsets.only(top: 32),
//                 child: TextButton(
//                   onPressed: () =>
//                       openUrl("https://flutter.dev/docs/get-started/install"),
//                   style: ButtonStyle(
//                       backgroundColor:
//                           MaterialStateProperty.all<Color>(primary),
//                       overlayColor: MaterialStateProperty.resolveWith<Color>(
//                         (Set<MaterialState> states) {
//                           if (states.contains(MaterialState.hovered))
//                             return buttonPrimaryDark;
//                           if (states.contains(MaterialState.focused) ||
//                               states.contains(MaterialState.pressed))
//                             return buttonPrimaryDarkPressed;
//                           return primary;
//                         },
//                       ),
//                       // Shape sets the border radius from default 3 to 0.
//                       shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
//                         (Set<MaterialState> states) {
//                           if (states.contains(MaterialState.focused) ||
//                               states.contains(MaterialState.pressed))
//                             return RoundedRectangleBorder(
//                                 borderRadius:
//                                     BorderRadius.all(Radius.circular(0)));
//                           return RoundedRectangleBorder(
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(0)));
//                         },
//                       ),
//                       padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
//                           EdgeInsets.symmetric(vertical: 32, horizontal: 90)),
//                       // Side adds pressed highlight outline.
//                       side: MaterialStateProperty.resolveWith<BorderSide>(
//                           (Set<MaterialState> states) {
//                         if (states.contains(MaterialState.focused) ||
//                             states.contains(MaterialState.pressed))
//                           return BorderSide(
//                               width: 3, color: buttonPrimaryPressedOutline);
//                         // Transparent border placeholder as Flutter does not allow
//                         // negative margins.
//                         return BorderSide(width: 3, color: Colors.white);
//                       })),
//                   child: Text(
//                     "Get started",
//                     style: buttonTextStyle.copyWith(fontSize: 18),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class Footer extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: backgroundDark,
//       width: double.infinity,
//       padding: EdgeInsets.symmetric(horizontal: 25),
//       child: ResponsiveRowColumn(
//         rowColumn: !ResponsiveWrapper.of(context).isMobile,
//         columnMainAxisSize: MainAxisSize.min,
//         children: [
//           ResponsiveRowColumnItem(
//             child: Padding(
//               padding: EdgeInsets.fromLTRB(0, 20, 20, 20),
//               child: Image.asset("assets/images/logo_flatx.png",
//                   height: 100, fit: BoxFit.contain),
//             ),
//           ),
//           ResponsiveRowColumnItem(
//             rowFit: FlexFit.loose,
//             columnFit: FlexFit.loose,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 RichText(
//                   textAlign: TextAlign.left,
//                   text: TextSpan(
//                     style: bodyTextStyle.copyWith(
//                         fontSize: 14, color: Colors.white, height: 2),
//                     children: [
//                       TextSpan(
//                           recognizer: TapGestureRecognizer()
//                             ..onTap = () {
//                               openUrl(
//                                   "https://groups.google.com/forum/#!forum/flutter-dev");
//                             },
//                           text: "flutter-dev@"),
//                       TextSpan(text: "  •  "),
//                       TextSpan(
//                           recognizer: TapGestureRecognizer()
//                             ..onTap = () {
//                               openUrl("https://flutter.dev/tos");
//                             },
//                           text: "terms"),
//                       TextSpan(text: "  •  "),
//                       TextSpan(
//                           recognizer: TapGestureRecognizer()
//                             ..onTap = () {
//                               openUrl("https://flutter.dev/security");
//                             },
//                           text: "security"),
//                       TextSpan(text: "  •  "),
//                       TextSpan(
//                           recognizer: TapGestureRecognizer()
//                             ..onTap = () {
//                               openUrl(
//                                   "https://www.google.com/intl/en/policies/privacy");
//                             },
//                           text: "privacy"),
//                       TextSpan(text: "  •  "),
//                       TextSpan(
//                           recognizer: TapGestureRecognizer()
//                             ..onTap = () {
//                               openUrl("https://flutter-es.io/");
//                             },
//                           text: "español"),
//                       TextSpan(text: "  •  "),
//                       TextSpan(
//                           recognizer: TapGestureRecognizer()
//                             ..onTap = () {
//                               openUrl("https://flutter.cn/");
//                             },
//                           text: "社区中文资源"),
//                     ],
//                   ),
//                 ),
//                 RichText(
//                   textAlign: TextAlign.left,
//                   text: TextSpan(
//                       style: bodyTextStyle.copyWith(
//                           fontSize: 14, color: Colors.white, height: 1),
//                       children: [
//                         TextSpan(text: '\n'),
//                         TextSpan(
//                             text:
//                                 "Except as otherwise noted, this work is licensed under a Creative Commons Attribution 4.0 International License, and code samples are licensed under the BSD License.",
//                             style: bodyTextStyle.copyWith(
//                                 fontSize: 10, color: Colors.white)),
//                         TextSpan(text: '\n'),
//                         TextSpan(text: '\n'),
//                         TextSpan(text: '\n'),
//                       ]),
//                 )
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// class OCRUI extends StatefulWidget {
//   @override
//   _OCRUIState createState() => _OCRUIState();
// }

// class _OCRUIState extends State<OCRUI> {
//   DropzoneViewController controller;
//   String message = 'Drag image file here or\nBrownse from your computer';
//   bool highlighted = false;
//   bool isloading = false;
//   bool isloaded = false;
//   bool isCallApi = false;
//   String img = '';
//   String imgName = '';

//   Widget buildZone(BuildContext context) => Builder(
//         builder: (context) => DropzoneView(
//           operation: DragOperation.copy,
//           cursor: CursorType.grab,
//           onCreated: (ctrl) => controller = ctrl,
//           onLoaded: () {
//             print('Zone loaded');
//             setState(() {
//               isloading = true;
//             });
//           },
//           onError: (ev) {
//             print('Zone error: $ev');
//             setState(() {
//               isloading = false;
//             });
//           },
//           onHover: () {
//             setState(() => highlighted = true);
//             print('Zone hovered');
//           },
//           onLeave: () {
//             setState(() => highlighted = false);
//             print('Zone left');
//           },
//           onDrop: (ev) async {
//             print('Zone drop: ${ev.name}');
//             await controller
//                 .getFileData(ev)
//                 .then((value) => img = base64Encode(value));
//             setState(() {
//               message = '${ev.name}';
//               imgName = '${ev.name}';
//               highlighted = false;
//               isloading = false;
//               isloaded = true;
//               isCallApi = true;
//             });
//             await Future.delayed(new Duration(milliseconds: 500), () {
//               setState(() {
//                 isCallApi = false;
//               });
//             });
//           },
//         ),
//       );

//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   void dispose() {
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(4),
//           border: Border.all(color: border)),
//       margin: blockMargin,
//       padding: blockPadding(context),
//       child: ResponsiveRowColumn(
//         rowColumn: !ResponsiveWrapper.of(context).isSmallerThan(DESKTOP),
//         rowCrossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           ResponsiveRowColumnItem(
//             rowFlex: 1,
//             columnOrder: 2,
//             child: Padding(
//               padding: EdgeInsets.fromLTRB(25, 32, 25, 0),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   Padding(
//                     padding: EdgeInsets.only(bottom: 16),
//                     child: buildMaterialIconCircle(
//                         "assets/images/icon_ui.png", 68),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.only(bottom: 32),
//                     child: Text("OCR, Prescription scanning API",
//                         style: headlineTextStyle),
//                   ),
//                   RichText(
//                     text: TextSpan(
//                       style: bodyTextStyle,
//                       children: [
//                         TextSpan(
//                             text:
//                                 "Google Cloud’s Vision API offers powerful pre-trained machine learning models through REST and RPC APIs. Assign labels to images and quickly classify them into millions of predefined categories. Detect objects and faces, read printed and handwritten text, and build valuable metadata into your image catalog."),
//                         TextSpan(text: "\n\n"),
//                         TextSpan(
//                             recognizer: TapGestureRecognizer()
//                               ..onTap = () {
//                                 openUrl("https://cloud.google.com/vision");
//                               },
//                             text: "Browse Google Vision",
//                             style: bodyLinkTextStyle),
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//           ResponsiveRowColumnItem(
//               rowFlex: 2,
//               columnOrder: 1,
//               child: isloaded ? rawDroped(img) : rawDropzone()),
//         ],
//       ),
//     );
//   }

//   Widget rawDropzone() {
//     return Container(
//       color: Colors.grey[200],
//       height: MediaQuery.of(context).size.height / 5,
//       width: MediaQuery.of(context).size.width,
//       child: AspectRatio(
//         aspectRatio: 1.0,
//         child:
//             // RepaintBoundary(child: VideoPlayer(videoController)),
//             Stack(
//           children: [
//             buildZone(this.context),
//             Center(
//                 child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Icon(
//                   Icons.image,
//                   size: MediaQuery.of(context).size.height / 18,
//                   color: Colors.grey[400],
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(top: 8.0),
//                   child: RichText(
//                     text: TextSpan(
//                       children: [
//                         TextSpan(
//                           text: message,
//                           style: bodyTextStyle,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             )),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget rawDroped(String img) {
//     Uint8List bytes = base64Decode(img);
//     return Column(
//       children: [
//         Container(
//           height: MediaQuery.of(context).size.height / 1.2,
//           color: Colors.grey[200],
//           child: AspectRatio(
//             aspectRatio: 1.0,
//             child: Stack(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(3.0),
//                   child: Column(
//                     children: [
//                       Container(
//                         color: Colors.green[200],
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           children: [
//                             Container(
//                               child: Image.memory(
//                                 bytes,
//                                 height:
//                                     MediaQuery.of(context).size.height / 1.5,
//                                 width: MediaQuery.of(context).size.width / 4.7,
//                               ),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Container(
//                                 color: Colors.red[200],
//                                 child: Center(
//                                     child: isCallApi
//                                         ? CircularProgressIndicator()
//                                         : Container(
//                                             height: MediaQuery.of(context)
//                                                     .size
//                                                     .height /
//                                                 1.5,
//                                             child: datatable())),
//                               ),
//                             )
//                           ],
//                         ),
//                       ),
//                       Text(imgName),
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Container(
//                           child: MaterialButton(
//                             color: Colors.grey[200],
//                             onPressed: () {
//                               setState(() {
//                                 isloaded = false;
//                                 message =
//                                     'Drag image file here or\nBrownse from your computer';
//                               });
//                             },
//                             child: Text('RESET'),
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   Widget datatable() {
//     return DataTable(
//       columnSpacing: 15.0,
//       columns: const <DataColumn>[
//         DataColumn(
//           label: Text(
//             'STT',
//             style: TextStyle(fontStyle: FontStyle.italic),
//           ),
//         ),
//         DataColumn(
//           label: Text(
//             'Name',
//             style: TextStyle(fontStyle: FontStyle.italic),
//           ),
//         ),
//         DataColumn(
//           label: Text(
//             'Quantity',
//             style: TextStyle(fontStyle: FontStyle.italic),
//           ),
//         ),
//         DataColumn(
//           label: Text(
//             'Unit',
//             style: TextStyle(fontStyle: FontStyle.italic),
//           ),
//         ),
//         DataColumn(
//           label: Text(
//             'Note',
//             style: TextStyle(fontStyle: FontStyle.italic),
//           ),
//         ),
//       ],
//       rows: const <DataRow>[
//         DataRow(
//           cells: <DataCell>[
//             DataCell(Text('1')),
//             DataCell(Text('Sarah')),
//             DataCell(Text('19')),
//             DataCell(Text('Box')),
//             DataCell(Text('None')),
//           ],
//         ),
//         DataRow(
//           cells: <DataCell>[
//             DataCell(Text('2')),
//             DataCell(Text('Janine')),
//             DataCell(Text('43')),
//             DataCell(Text('Pill')),
//             DataCell(Text('None')),
//           ],
//         ),
//         DataRow(
//           cells: <DataCell>[
//             DataCell(Text('3')),
//             DataCell(Text('William')),
//             DataCell(Text('27')),
//             DataCell(Text('Pill')),
//             DataCell(Text('None')),
//           ],
//         ),
//         DataRow(
//           cells: <DataCell>[
//             DataCell(Text('4')),
//             DataCell(Text('William')),
//             DataCell(Text('27')),
//             DataCell(Text('Pill')),
//             DataCell(Text('None')),
//           ],
//         ),
//         DataRow(
//           cells: <DataCell>[
//             DataCell(Text('5')),
//             DataCell(Text('William')),
//             DataCell(Text('27')),
//             DataCell(Text('Pill')),
//             DataCell(Text('None')),
//           ],
//         ),
//         DataRow(
//           cells: <DataCell>[
//             DataCell(Text('6')),
//             DataCell(Text('William')),
//             DataCell(Text('27')),
//             DataCell(Text('Pill')),
//             DataCell(Text('None')),
//           ],
//         ),
//       ],
//     );
//   }
// }
