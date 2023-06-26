import 'package:flutter/material.dart';
import 'package:pps_practicals/provider/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width / 100;
    TextStyle headingTxt =
        TextStyle(fontWeight: FontWeight.bold, fontSize: screenWidth * 4.0);
    TextStyle bodyTxt =
        TextStyle(fontFamily: 'Quicksand', fontSize: screenWidth * 3.7);

    final themeProvider = Provider.of<ThemeProvider>(context);
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: double.infinity,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  highlightColor: Colors.white
                  ,
                  child:  Text('Click Here for Privacy Policy',
                    textAlign: TextAlign.left,
                    softWrap: true,
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: Colors.blue,
                      wordSpacing: 1.0,
                      letterSpacing: 1.0,
                      fontSize: screenWidth * 4.8,decoration: TextDecoration.underline,
                      overflow: TextOverflow.ellipsis,
                    ),),
                  onTap: ()=>launchUrl(Uri.parse("https://devchrissin.blogspot.com/2022/01/pps-practicals-sppus-privacy-policy.html")),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 8.0, right: 8.0, top: 10.0, bottom: 0.0),
                child: Text(
                  'INDEX',
                  style: TextStyle(
                      fontSize: screenWidth * 7.0, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 10.0, right: 10.0, bottom: 10.0),
                child: Text(
                  'Suggested List of Laboratory Experiments/Assignments (Do Any 6 to 8 laboratory assignments as per SPPU - 2019 Pattern)',
                  style: bodyTxt,
                  textAlign: TextAlign.center,
                ),
              ),
              Table(
                border: TableBorder.all(
                    color:
                        themeProvider.isDarkMode ? Colors.white : Colors.black,
                    style: BorderStyle.solid,
                    width: 2),
                columnWidths: const {
                  0: FlexColumnWidth(1),
                  1: FlexColumnWidth(4),
                },
                children: [
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Sr. No.',
                        style: headingTxt,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Experiments',
                        style: headingTxt,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '1',
                        style: bodyTxt.copyWith(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'To calculate salary of employee given his basic pay(take as input from user). Calculate gross salary of employee. Let HRA be 10% of basic pay and TA be 5% of the basic pay. Let employee pay professional tax as 2% of total salary. Calculate net salary payable after deductions',
                        style: bodyTxt,
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '2',
                        style: bodyTxt.copyWith(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'To accept an object mass in kilogram and velocity in meters per second and display its momentum. Momentum is calculated as e=mc^2 where m is the mass of the object and c is its velocity.',
                        style: bodyTxt,
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '3',
                        style: bodyTxt.copyWith(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'To accept N numbers from user. Compute and display maximum in list, minimum in list, sum and average of numbers.',
                        style: bodyTxt,
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '4',
                        style: bodyTxt.copyWith(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'To accept student’s five courses marks and compute his/her result. Student is passing if he/she scores marks equal to and above 40 in each course. If student scores aggregate greater than 75%, then the grade is distinction. If aggregate is 60>= and <75 then the grade is first division. If aggregate is 50>= and <60then the grade is second division. If aggregate is 40>= and <50 then the grade is third division.',
                        style: bodyTxt,
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '5',
                        style: bodyTxt.copyWith(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'To check whether input number is Armstrong number of not. An Armstrong number is an integer with three digits such that the sum of the cubes of its digits is equal to the number itself.',
                        style: bodyTxt,
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '6',
                        style: bodyTxt.copyWith(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'To simulate simple calculator that performs basic tasks such as addition, subtraction, multiplication and division with special operations like computing x^y and x!',
                        style: bodyTxt,
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '7',
                        style: bodyTxt.copyWith(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'To accept the number and compute: \na) square root of a number \nb) Square of number \nc) Cube of a number \nd) Check for prime \ne) factorial of number \nf) prime factors',
                        style: bodyTxt,
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '8',
                        style: bodyTxt.copyWith(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'To accept two numbers from user and compute smallest divisor and Greatest Common Divisor of these two numbers',
                        style: bodyTxt,
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '9',
                        style: bodyTxt.copyWith(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'To accept numbers from user and print digits of number in reverse order.',
                        style: bodyTxt,
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '10',
                        style: bodyTxt.copyWith(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'To input binary number from user and convert it to decimal number',
                        style: bodyTxt,
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '11',
                        style: bodyTxt.copyWith(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'To generate pseudo random numbers',
                        style: bodyTxt,
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '12',
                        style: bodyTxt.copyWith(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'To accept list of N integers and partition list into two sub lists even and odd numbers.',
                        style: bodyTxt,
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '13',
                        style: bodyTxt.copyWith(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'To accept a numbers of terms and find out the sum of it\'s sine series',
                        style: bodyTxt,
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '14',
                        style: bodyTxt.copyWith(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'To accept from user the number of Fibonacci numbers to be generated and print the Fibonacci series.',
                        style: bodyTxt,
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '15',
                        style: bodyTxt.copyWith(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Write a python program that accepts a string from user and perform following string operations: \ni) Calculate length of string\nii) String reversal\niii) Equality check of two strings\niv) Check palindrome\nv) Check substring',
                        style: bodyTxt,
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '16',
                        style: bodyTxt.copyWith(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'To copy contents of one file to another. While copying: \na) all full stops are replaced with commas \nb) lower case are replaced by upper case \nc) upper case are to be replaced with lower case.',
                        style: bodyTxt,
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '17',
                        style: bodyTxt.copyWith(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'To count total characters in file, total words in file, total lines in file and frequency of given word in file.',
                        style: bodyTxt,
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '18',
                        style: bodyTxt.copyWith(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Create class EMPLOYEE for storing details(Name, designation, gender, Date of joining and Salary). Define function members to compute: \na) total number of employees in an organization \nb) Count of male and female employee \nc) Employee with salary more than 10,000 \nd) Employee with designation “Asst Manager”',
                        style: bodyTxt,
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '19',
                        style: bodyTxt.copyWith(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Create a class STORE to keep track of Products(product Code, Name and price).Display menu of all products to user. Generate bill as per order.',
                        style: bodyTxt,
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '20\n\n[Mini\nProject]',
                        style: bodyTxt.copyWith(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Calculator with basic functions. Add more functionality such as graphic user interface and complex calculations.',
                        style: bodyTxt,
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '21\n\n[Mini\nProject]',
                        style: bodyTxt.copyWith(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Create a Program that simulates rolling dice. When the program runs, it will randomly choose the numbers between 1 and 6(or other integer you prefer). Print that number. Request user to roll again. Set the min and max number that dice can show. For the average die, that means a minimum of 1 and maximum of 6.',
                        style: bodyTxt,
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '22\n\n[Mini\nProject]',
                        style: bodyTxt.copyWith(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Use raspberry pi/or similar kit and python for:'
                        '\n- Room Temperature Monitoring System '
                        '\n- Motion Detection System '
                        '\n- Soil Moisture Sensor '
                        '\n- Home Automation System '
                        '\n- A robot '
                        '\n- Smart mirror or a smart clock. '
                        '\n- Smile Detection using Raspberry Pi Camera',
                        style: bodyTxt,
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '23\n\n[Mini\nProject]',
                        style: bodyTxt.copyWith(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Guess Number: Randomly generate a number unknown to the user. The user needs to guess what that number is. If user’s guess is wrong, the program should return some sort of indication as to how wrong(e.g. the number is too high or too low). If the user guesses correctly, a positive indication should appear. Write functions to check if the user input is an actual number, to see the difference between the inputted number and the randomly generated numbers and to then compare the numbers',
                        style: bodyTxt,
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ]),
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
