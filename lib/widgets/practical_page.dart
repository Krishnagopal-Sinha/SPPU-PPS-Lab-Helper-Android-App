import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pps_practicals/provider/theme_provider.dart';
import 'package:pps_practicals/screens/imagescreen.dart';
import 'package:provider/provider.dart';

class PracticalPage extends StatefulWidget {
  final int practNum;
  final String practAim;
  final String practCode;
  const PracticalPage(
      {required this.practNum,
      required this.practAim,
      required this.practCode,
      Key? key})
      : super(key: key);

  @override
  _PracticalPageState createState() => _PracticalPageState();
}

class _PracticalPageState extends State<PracticalPage>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 300),
    vsync: this,
  )..forward(from: 0.0);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeIn,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final int practNum = widget.practNum;
    final String practAim = widget.practAim;
    final String practCode = widget.practCode;
    double screenWidth = MediaQuery.of(context).size.width / 100;
    TextStyle headingStyle = TextStyle(
        fontSize: screenWidth * 4.0, fontFamily: 'ZillaSlabHighlight');
    TextStyle tStyle =
        TextStyle(fontSize: screenWidth * 4.0, fontFamily: 'Quicksand');
    TextStyle codeStyle =
        TextStyle(fontSize: screenWidth * 2.3, fontFamily: 'RobotoMono');
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Practical No. $practNum',
          style: TextStyle(
              fontSize: screenWidth * 4.5,
              fontFamily: 'Quicksand',
              letterSpacing: 0.5),
        ),
        foregroundColor: themeProvider.isDarkMode ? Colors.white : Colors.black,
        backgroundColor:
            themeProvider.isDarkMode ? Colors.black : Colors.grey.shade100,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: '$practNum',
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              ImageScreen(practNmbr: practNum)));
                },
                child: Container(
                  height: 210,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    image: DecorationImage(
                        image: AssetImage('assets/pract$practNum.jpg'),
                        fit: BoxFit.fill),
                  ),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: FadeTransition(
                      opacity: _animation,
                      child: Container(
                        width: double.infinity,
                        height: 20.0,
                        decoration: BoxDecoration(
                            color: themeProvider.isDarkMode
                                ? Colors.black
                                : Colors.grey.shade200,
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(18.0),
                                topLeft: Radius.circular(18.0),
                                bottomRight: Radius.zero,
                                bottomLeft: Radius.zero),
                            //Getting rid of inherent border
                            border: Border.all(
                                width: 0.0,
                                color: themeProvider.isDarkMode
                                    ? Colors.black
                                    : Colors.grey.shade200),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  blurRadius: 5.0,
                                  offset: const Offset(0, -10)),
                            ]),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 10.0, right: 10.0, bottom: 5.0, top: 5.0),
              child: Text(
                'AIM:',
                style: headingStyle,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
              child: Text(
                practAim,
                style: tStyle,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10.0,
                    right: 10.0,
                  ),
                  child: Text(
                    'CODE:',
                    style: headingStyle,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: IconButton(
                    splashRadius: 0.1,
                    tooltip: 'Copy Code',
                    iconSize: screenWidth * 4.4,
                    onPressed: () {
                      const snackBar = SnackBar(
                        content: Text('Code copied to Clipboard!'),
                        duration: Duration(seconds: 1),
                      );

                      Clipboard.setData(ClipboardData(text: practCode))
                          .then((value) {
                        //only if ->
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }); //
                    },
                    icon: const Icon(Icons.copy),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 12.0, right: 12.0, bottom: 10.0, top: 0.0),
              child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: themeProvider.isDarkMode
                        ? Colors.grey.shade900
                        : Colors.grey.shade300.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 25.0, bottom: 25.0, left: 8.0, right: 8.0),
                        child: SelectableText(
                          practCode,
                          textAlign: TextAlign.left,
                          style: codeStyle,
                        ),
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
