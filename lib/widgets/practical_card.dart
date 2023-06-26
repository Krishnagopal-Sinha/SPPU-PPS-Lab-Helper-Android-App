import 'package:flutter/material.dart';
import 'package:pps_practicals/widgets/practical_page.dart';

class PracticalCard extends StatelessWidget {
  final int practNumber;
  final String practTitle;
  final String practAim;
  final String practCode;
  const PracticalCard(
      {required this.practNumber,
      required this.practTitle,
      required this.practAim,
      required this.practCode,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width / 100;
    TextStyle tStyle = practNumber == 16
        ? TextStyle(
            color: Colors.black,
            fontSize: screenWidth * 3.8,
            fontFamily: 'Quicksand')
        : TextStyle(
            color: Colors.white,
            fontSize: screenWidth * 4.2,
            fontFamily: 'Quicksand',
            letterSpacing: 0.5);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PracticalPage(
                practNum: practNumber,
                practAim: practAim,
                practCode: practCode,
              ),
            ),
          );
        },
        child: Stack(children: [
          Hero(
            tag: '$practNumber',
            child: Container(
              height: 210,
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    image: AssetImage('assets/pract$practNumber.jpg'),
                    fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(12.0),
                // boxShadow: themeProvider.isDarkMode
                //     ? null
                //     : [
                //         BoxShadow(
                //           color: Colors.grey.shade800,
                //           blurRadius: 5.0,
                //         ),
                //          ]
              ),
            ),
          ),
          Positioned(
            bottom: 10.0,
            right: 10.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Practical No. $practNumber',
                  style: tStyle,
                ),
                Text(
                  practTitle,
                  style: tStyle,
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                  maxLines: 2,
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
