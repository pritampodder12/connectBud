//            THIS IS A DEMO CODE

// import 'package:flutter/material.dart';
// import 'package:connect_bud/Constants/constants.dart';

// Widget primaryButton(
//         {BuildContext context, String title, Function onPressed}) =>
//     Container(
//         height: 40,
//         width: double.infinity,
//         child: RaisedButton(
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(30.0),
//             ),
//             color: Colors.limeAccent[400],
//             elevation: 0,
//             highlightElevation: 0,
//             onPressed: onPressed,
//             child: Text(title,
//                 style: TextStyle(
//                     fontSize: 15,
//                     fontWeight: FontWeight.w700,
//                     fontFamily: "BlissPro"))));

// Widget titleAppBarWhite({String title}) => Text(
//       title,
//       style: TextStyle(
//           fontSize: 18,
//           color: Colors.white,
//           fontWeight: FontWeight.w600,
//           fontFamily: 'default'),
//     );

// Widget userIconButton(BuildContext context) {
//   return Material(
//       color: Colors.transparent,
//       child: InkWell(
//           customBorder: CircleBorder(),
//           child: Container(
//             padding: EdgeInsets.all(10),
//             width: 44,
//             height: 40,
//             child: Icon(
//               Icons.arrow_back,
//               size: 20,
//               color: Colors.white,
//             ),
//           ),
//           onTap: () {
//             Navigator.of(context).pop();
//           }));
// }

// Widget languageChangeIconButton(BuildContext context) => Material(
//     color: Colors.transparent,
//     child: InkWell(
//         customBorder: CircleBorder(),
//         child: Container(
//             padding: EdgeInsets.all(10),
//             width: 44,
//             height: 40,
//             child: Icon(
//               Icons.people_outline,
//               size: 20,
//               color: Colors.white,
//             )),
//         onTap: () {}));

// Widget mainAppBar(
//         {BuildContext context,
//         Widget leading,
//         Widget title,
//         List<Widget> actions,
//         Widget bottom}) =>
//     PreferredSize(
//         child: Container(
//           color: R.color.CBDarkBlue,
//           padding: EdgeInsets.only(
//               top: MediaQuery.of(context).padding.top,
//               bottom: 8,
//               left: 4,
//               right: 4),
//           child: Stack(
//             children: <Widget>[
//               Positioned(
//                   child:
//                       leading == null ? Container() : userIconButton(context),
//                   left: 0,
//                   bottom: 0),
//               Align(
//                 alignment: Alignment.bottomCenter,
//                 child: title == null
//                     ? Container()
//                     : Padding(
//                         padding:
//                             EdgeInsets.only(left: 20, right: 20, bottom: 10),
//                         child: title,
//                       ),
//               ),
//               Positioned(
//                   child: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     children: actions == null ? [] : actions,
//                   ),
//                   right: 0,
//                   bottom: 0)
//             ],
//           ),
//           //decoration: BoxDecoration(color: R.color.ZPPrimaryColor),
//         ),
//         preferredSize:
//             Size(MediaQuery.of(context).size.width, R.sizeUnits.appBarSize));
