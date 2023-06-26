import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pps_practicals/provider/theme_provider.dart';
import 'package:pps_practicals/widgets/practical_card.dart';
import 'package:provider/provider.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    double screenWidth = MediaQuery.of(context).size.width / 100;
    if (themeProvider.isDarkMode) {
      SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
          statusBarColor: Colors.black,
          statusBarIconBrightness: Brightness.light,
          systemNavigationBarColor: Colors.black,
          systemNavigationBarIconBrightness: Brightness.light));
    } else {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
          statusBarColor: Colors.grey.shade200,
          statusBarIconBrightness: Brightness.dark,
          systemNavigationBarColor: Colors.grey.shade200,
          systemNavigationBarIconBrightness: Brightness.dark));
    }
    return const SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.only(top: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PracticalCard(
              practNumber: 1,
              practTitle: 'Salary Calculation',
              practAim:
                  'To calculate salary of an employee given his basic pay (take as input from user). Calculate gross salary of employee. Let HRA be 10 % of basic pay and TA be 5% of basic pay. Let employee pay professional tax as 2% of total salary. Calculate net salary payable after deductions.',
              practCode:
                  'basic_pay = input("Enter your basic pay: ")\ntry:\n    basic_pay = float(basic_pay)\n    if basic_pay < 0:  # basic pay cannot be less than zero\n        print("Basic pay can\'t be negative.")\n        exit()\n    hra = basic_pay * 0.1  # hra is 10 % of basic pay\n    ta = basic_pay * 0.05  # ta is 5 % of basic pay\n    total_salary = basic_pay + hra + ta\n    professional_tax = total_salary * 0.02  # professional tax is 2 % of total salary\n    salary_payable = total_salary - professional_tax\n    print("Salary Payable is", salary_payable)\nexcept ValueError:\n    print("Enter amount in digits.")',
            ),
            PracticalCard(
              practNumber: 2,
              practTitle: 'Momentum Calculation',
              practAim:
                  'To accept an object mass in kilograms and velocity in meters per second and display its momentum. Momentum is calculated as e=mc^2 where m is the mass of the object and c is its velocity.',
              practCode:
                  'try:\n    mass = float(input("Enter mass in kgs: "))  # m is mass in kgs\n    velocity = float(input("Enter velocity in m/s: "))  # c is velocity in m/s\n    momentum = mass * (velocity ** 2)  # e=mc2\n    print("Momentum of object is", momentum)\nexcept ValueError:\n    print("Enter mass and velocity in int/float")',
            ),
            PracticalCard(
              practNumber: 3,
              practTitle: 'Finding Max No & Min No in List',
              practAim:
                  'To accept N numbers from user. Compute and display maximum in list, minimum in list, sum and average of numbers.',
              practCode:
                  'try:\n    n = int(input("Enter no of elements: "))\n    nos_list = []  # nos_list list is created\n    for i in range(n):  # for loop\n        num = int(input("Enter no: "))\n        nos_list.append(num)  # numbers are added in nos_list list\n    maxNo = max(nos_list)  # maximum number in list\n    minNo = min(nos_list)  # minimum number in list\n    sumNos = sum(nos_list)  # sum of numbers in list\n    average = sumNos / len(nos_list)  # average of numbers in list\n    print("Max no is ", maxNo)\n    print("Min no is ", minNo)\n    print("Count: ", len(nos_list))  # length of list\n    print("Sum of nos is ", sumNos)\n    print("Average of nos is ", average)\nexcept ValueError:\n    print("Enter n and all elements as integer.")',
            ),
            PracticalCard(
              practNumber: 4,
              practTitle: 'Student Result Calculation',
              practAim:
                  'To accept student’s five courses marks and compute his/her result. Student is passing if he/she scores marks equal to and above 40 in each course. If student scores aggregate greater than 75%, then the grade is distinction. If aggregate is 60>= and <75 then the grade if first division. If aggregate is 50>= and <60, then the grade is second division. If aggregate is 40>= and <50, then the grade is third division.',
              practCode:
                  'class Student:  # creation of class\n    def __init__(self):  #  __init__() function to assign values to object properties\n        self.marks = []\n        self.passed = True\n    def input(self):  # input function is defined using the def keyword.\n        # Self parameter is a reference to the current instance of the class, and is used to access variables that belong to the class.\n        try:\n            for i in range(5):\n                mark = float(input("Marks: "))\n                self.marks.append(mark)\n                if mark < 40:\n                    self.passed = False\n        except:\n            print("Enter marks in digits.")\n    def grade(self):  # grade function is defined\n        if self.passed:\n            average = sum(self.marks) / 5\n            if average > 75:\n                print("Distinction")\n            elif average >= 60 and 75 > average:\n                print("First Division")\n            elif average >= 50 and 60 > average:\n                print("Second Division")\n            else:\n                print("Third Division")\n        else:\n            print("Failed")\nif __name__ == "__main__":\n    student = Student()\n    student.input()  # function calling\n    student.grade()',
            ),
            PracticalCard(
              practNumber: 5,
              practTitle: 'Armstrong Number Checker',
              practAim:
                  'To check whether input number is Armstrong number of not. An Armstrong number is an integer with three digits such that the sum of the cubes of its digits is equal to the number itself.',
              practCode:
                  'def checkArmstrong(num):  # function definition\n    digits = [int(digit) for digit in str(num)]\n    sumOfDigits = 0\n    for digit in digits:  # for loop\n        sumOfDigits += digit ** 3  # sum of cubes of its digit\n    if num == sumOfDigits:  # if else condition\n        print(num, "is Armstrong number ")\n    else:\n        print(num, "is not Armstrong number")\nif __name__ == "__main__":\n    try:\n        num = int(input("Enter number: "))\n        checkArmstrong(num)  # function calling\n    except:\n        print("Enter integer only")',
            ),
            PracticalCard(
              practNumber: 6,
              practTitle: 'Simple Calculator',
              practAim:
                  'To simulate simple calculator that performs basic tasks such as addition, subtraction, multiplication and division with special operations like computing x^y and x!',
              practCode:
                  'import math\ndef add(x, y):\n    return x + y\ndef sub(x, y):\n    return x - y\ndef mult(x, y):\n    return x * y\ndef div(x, y):\n    return x / y\ndef x_pow_y(x, y):\n    return math.pow(x, y)\ndef x_factorial(x):\n    factorial = 1\n    if x == 0:\n        return factorial\n    else:\n        for i in range(1, x + 1):\n            factorial = factorial * i\n    return factorial\nwhile True:\n    print("Main Menu")\n    print("1.Add")\n    print("2.Subtract")\n    print("3.Multiply")\n    print("4.Divide")\n    print("5.x^y")\n    print("6.x!")\n    print("7.Exit")\n    print("Enter your choice")\n    choice = int(input())\n    if choice == 1:\n        print("Enter first number")\n        num1 = int(input())\n        print("Enter second number: ")\n        num2 = int(input())\n        print(num1, "+", num2, "=", add(num1, num2))\n    elif choice == 2:\n        print("Enter first number")\n        num1 = int(input())\n        print("Enter second number: ")\n        num2 = int(input())\n        print(num1, "-", num2, "=", sub(num1, num2))\n    elif choice == 3:\n        print("Enter first number")\n        num1 = int(input())\n        print("Enter second number: ")\n        num2 = int(input())\n        print(num1, "*", num2, "=", mult(num1, num2))\n    elif choice == 4:\n        print("Enter first number")\n        num1 = int(input())\n        print("Enter second number: ")\n        num2 = int(input())\n        print(num1, "/", num2, "=", div(num1, num2))\n    elif choice == 5:\n        print("Enter first number")\n        num1 = int(input())\n        print("Enter second number: ")\n        num2 = int(input())\n        print(num1, "^", num2, "=", x_pow_y(num1, num2))\n    elif choice == 6:\n        print("Enter a number")\n        num1 = int(input())\n        print(num1, "! = ", x_factorial(num1))\n    else:\n        print("Exiting")\n        break',
            ),
            PracticalCard(
              practNumber: 7,
              practTitle: 'Number Computation',
              practAim:
                  'To accept the number and compute: \na) square root of a number \nb) Square of number \nc) Cube of a number \nd) Check for prime \ne) factorial of number \nf) prime factors',
              practCode:
                  'import math\ndef sqrt_num(x):\n    return math.sqrt(x)\ndef sq_num(x):\n    return x * x\ndef cube_num(x):\n    return x * x * x\ndef isPrime(x):\n    if x > 1:\n        # check for factors\n        for i in range(2, x):\n            if (x % i) == 0:  # factors exists\n                return False  # hence it is not prime\n            else:\n                return True\n    else:\n        return False\ndef x_factorial(x):\n    factorial = 1\n    if x == 0:\n        return factorial\n    else:\n        for i in range(1, x + 1):\n            factorial = factorial * i  # multipying by subsequent number\n    return factorial\ndef prime_factors(x):\n    # Print the number of two\'s that divide x\n    while x % 2 == 0:\n        print("2")\n        x = x / 2\n    # x must be odd at this point\n    # so a skip of 2 ( i = i + 2) can be used\n    for i in range(3, int(math.sqrt(x)) + 1, 2):\n        # while i divides x , print i and divide x\n        while x % i == 0:\n            print(i)\n            x = x / i\n    # Condition if n is a prime\n    # number greater than 2\n    if x > 2:\n        print(x)\nwhile True:\n    print("Main Menu")\n    print("1.Square root")\n    print("2.Square")\n    print("3.Cube")\n    print("4.Check for Prime")\n    print("5.Factorial")\n    print("6.Prime Factors")\n    print("7.Exit")\n    print("Enter your choice")\n    choice = int(input())\n    if choice == 1:\n        print("Enter a number")\n        num = int(input())\n        print("Square Root of ", num, "is: ", sqrt_num(num))\n    elif choice == 2:\n        print("Enter a number")\n        num = int(input())\n        print("Square of ", num, "is: ", sq_num(num))\n    elif choice == 3:\n        print("Enter a number")\n        num = int(input())\n        print("Cube of ", num, "is: ", cube_num(num))\n    elif choice == 4:\n        print("Enter a number")\n        num = int(input())\n        if isPrime(num):\n            print(num, " is a prime number")\n        else:\n            print(num, " is not a prime number")\n    elif choice == 5:\n        print("Enter a number")\n        num = int(input())\n        print("Factorial of ", num, " is: ", x_factorial(num))\n    elif choice == 6:\n        print("Enter a number")\n        num = int(input())\n        prime_factors(num)\n    else:\n        print("Exiting...")\n        break',
            ),
            PracticalCard(
              practNumber: 8,
              practTitle: 'Smallest & Greatest Common Divisor',
              practAim:
                  'To accept two numbers from user and compute Smallest Common Divisor and Greatest Common Divisor of these two numbers',
              practCode:
                  'def smallestDivisor(num1, num2):  # function definition\n    for i in range(2, min(num1, num2)):\n        if (num1 % i == 0) and (num2 % i == 0):\n            print("Smallest Common Divisor is ", i)\n            return\n    print("No smallest common divisor")\ndef greatestDivisor(num1, num2):  # function definition\n    for i in range(min(num1, num2), 2, -1):\n        if num1 % i == 0 and num2 % i == 0:\n            print("Greatest Common Divisor is ", i)\n            return\n    print("No greatest common divisor")\ntry:\n    num1 = int(input("Enter 1st number: "))\n    num2 = int(input("Enter 2nd number: "))\n    smallestDivisor(num1, num2)  # function calling\n    greatestDivisor(num1, num2)  # function calling\nexcept ValueError:\n    print("Enter numbers as integers only.")',
            ),
            PracticalCard(
              practNumber: 9,
              practTitle: 'Reverse the Order of Numbers',
              practAim:
                  'To accept numbers from user and print digits of number in reverse order.',
              practCode:
                  'Number = int(input("Please Enter any Number: "))\nReverse = 0\nwhile Number > 0:\n    Reminder = Number % 10\n    Reverse = (Reverse * 10) + Reminder\n    Number = Number // 10\nprint("\n Reverse of entered number is = %d" % Reverse)',
            ),
            PracticalCard(
              practNumber: 10,
              practTitle: 'Binary to Decimal Conversion',
              practAim:
                  'To input binary number from user and convert it to decimal number',
              practCode:
                  'print("Enter a binary number: ")\nbinary = list(input())\nvalue = 0\nfor i in range(len(binary)):\n    digit = binary.pop()  # reading each digit of binary number from LSB\n    if digit == "1":  # if it is 1\n        value = value + pow(2, i)  # then get 2^i and add it to value\nprint("The decimal value of the number is", value)',
            ),
            PracticalCard(
              practNumber: 11,
              practTitle: 'Random Number Generator',
              practAim: 'To generate pseudo random numbers',
              practCode:
                  'import random\ntry:\n    start = int(input("Enter start point: "))\n    end = int(input("Enter end point: "))\n    num = random.randint(start, end)\n    print("The Randomly Generated No. between", start, "&", end, "is:", num)\nexcept:\n    print("Enter start and end point as integer")',
            ),
            PracticalCard(
              practNumber: 12,
              practTitle: 'Separate Odd & Even Nos',
              practAim:
                  'To accept list of N integers and partition list into two sub lists even and odd numbers',
              practCode:
                  'numlist = []\nprint("Enter total number of elements: \t")\nn = int(input())\nfor i in range(1, n + 1):\n    print("Enter element:")\n    element = int(input())\n    numlist.append(element)\nevenlist = []\noddlist = []\nfor j in numlist:\n    if j % 2 == 0:\n        evenlist.append(j)\n    else:\n        oddlist.append(j)\nprint("Even numbers list:", evenlist)\nprint("Odd numbers list:", oddlist)',
            ),
            PracticalCard(
              practNumber: 13,
              practTitle: 'Sine Series Sum Calculator',
              practAim:
                  'To accept the numbers of terms and find sum of it\'s sine series',
              practCode:
                  'import math\nprint("Enter the value for x in degree : ")\nx = float(input())\nprint("Enter the value for n : ")\nn = int(input())\nx = x * 3.14159 / 180  # conversion of degree to radian\nprint("Angle is (in Radian): ", x)  # displaying angle in radian\nsum = 0  # initializing sum by zero\n# Loop to calculate the value of Sine\nfor i in range(n):\n    sign = (-1) ** i\n    sum = sum + ((x ** (2.0 * i + 1)) / math.factorial(2 * i + 1)) * sign\nprint("Sum of Sine series is: ", sum)',
            ),
            PracticalCard(
              practNumber: 14,
              practTitle: 'Fibonacci Series Finder',
              practAim:
                  'To accept from user the number of Fibonacci numbers to be generated and print the Fibonacci series.',
              practCode:
                  'nterms = int(input("How many terms? "))\n# first two terms\nn1 = 0\nn2 = 1\ncount = 0\n# check if the number of terms is valid\nif nterms <= 0:\n    print("Please enter a positive integer")\nelif nterms == 1:\n    print("Fibonacci sequence upto", nterms, ":")\n    print(n1)\nelse:\n    print("Fibonacci sequence upto", nterms, ":")\n    while count < nterms:\n        print(n1, end=" , ")\n        nth = n1 + n2\n        # update values\n        n1 = n2\n        n2 = nth\n        count += 1',
            ),
            PracticalCard(
              practNumber: 15,
              practTitle: 'String Operations',
              practAim:
                  'Write a python program that accepts a string from user and perform following string operations: \ni) Calculate length of string\nii) String reversal\niii) Equality check of two strings\niv) Check palindrome\nv) Check substring',
              practCode:
                  'def main():\n    s = input("Enter a string: ")\n    while 1:\n        print(\n            "1.Length\n2.Reverse\n3.Equality of two strings\n4.Check Palindrome\n5.Check substring"\n        )\n        choice = int(input("Enter your choice: "))\n        if choice == 1:\n            print("Length of string is ", len(s))\n        elif choice == 2:\n            print("Reverse string is ", s[::-1])\n        elif choice == 3:\n            s2 = input("Enter string to compare: ")\n            if s == s2:\n                print("Equal")\n            else:\n                print("Not equal")\n        elif choice == 4:\n            if s == s[::-1]:\n                print("Palindrome")\n            else:\n                print("Not palindome")\n        elif choice == 5:\n            s2 = input("Enter substring to check: ")\n            if s2 in s:\n                print("Substring present")\n            else:\n                print("Substring absent")\n        else:\n            print("Invalid Choice")\nif __name__ == "__main__":\n    main()',
            ),
            PracticalCard(
              practNumber: 16,
              practTitle:
                  'Character Conversion from UPPER to lower Case & Vice-Versa',
              practAim:
                  'To copy contents of one file to another. While copying \na) all full stops are replaced with commas \nb) lower case are replaced by upper case \nc) upper case are to be replaced with lower case.',
              practCode:
                  'try:\n    fin = open("input.txt", "r")  # file open in read mode\n    fout = open("output.txt", "w")  # file created\n    for line in fin:\n        line = line.swapcase()  # Replace lower case with upper and upper with lower\n        line = line.replace(".", ",")  # Replace full stops with comma\n        fout.write(line)\nexcept:\n    print("File error occured")',
            ),
            PracticalCard(
              practNumber: 17,
              practTitle: 'File\'s String Related Details',
              practAim:
                  'To count total characters in file, total words in file, total lines in file and frequency of given word in file',
              practCode:
                  'from collections import Counter\ndef word_count(fname):\n    count = 0\n    with open(fname, "r") as f:\n        for line in f:\n            word = line.split()\n            count += len(word)\n    f.close()\n    return count\ndef char_count(fname):\n    count = 0\n    with open(fname, "r") as f:\n        for line in f:\n            word = line.split()\n            count += len(line)\n    f.close()\n    return count\ndef line_count(fname):\n    count = 0\n    with open(fname, "r") as f:\n        for line in f:\n            word = line.split()\n            count += 1\n    f.close()\n    return count\ndef freq_word_count(fname):\n    with open(fname) as f:\n        return Counter(f.read().split())\nprint("Number of characters in the file :\n", char_count("d:\\input.txt"))\nprint("Number of words in the file :\n", word_count("d:\\input.txt"))\nprint("Number of lines in the file :\n", line_count("d:\\input.txt"))\nprint(\n    "Number of words with frequency count in the file :\n",\n    freq_word_count("d:\\input.txt"),\n)',
            ),
            PracticalCard(
              practNumber: 18,
              practTitle: 'Classes in Python',
              practAim:
                  'Create class EMPLOYEE for storing details(Name, designation, gender, Date of joining and Salary). Define function members to compute: \na) total number of employees in an organization \nb) Count of male and female employee \nc) Employee with salary more than 10,000 \nd) Employee with designation “Asst Manager”',
              practCode:
                  'class Employee:\n    count = 0\n    female_count = 0\n    male_count = 0\n    salary_count = 0\n    desig_count = 0\n    def __init__(self, name, desig, gender, doj, salary):\n        self.name = name\n        self.desig = desig\n        self.gender = gender\n        self.doj = doj\n        self.salary = salary\n        Employee.count += 1\n        if self.gender == "F":\n            Employee.female_count += 1\n        else:\n            Employee.male_count += 1\n        if self.salary > 10000:\n            Employee.salary_count += 1\n        if self.desig == "Asst_manager":\n            Employee.desig_count += 1\n    def display_emp_count(self):\n        print("There are", Employee.count, "employees in the organization")\n    def count_gender(self):\n        print(\n            "There are", Employee.female_count, "female employees in the organization"\n        )\n        print("There are", Employee.male_count, "male employees in the organization")\n    def count_big_salary(self):\n        print(\n            "There are",\n            Employee.salary_count,\n            "employees in the organization having salary >10000",\n        )\n    def count_desig(self):\n        print(\n            "There are",\n            Employee.desig_count,\n            "employees in the organization with designation \'Asst_manager\' ",\n        )\n# Entering data for Employee class\ne1 = Employee("Krish", "Manager", "M", "24-11-2001", 80000)\ne2 = Employee("Darshan", "Asst_manager", "M", "20-11-2001", 65000)\ne3 = Employee("Sanketi", "Accountant", "F", "10-10-2001", 60000)\ne4 = Employee("Sumit", "HR", "M", "17-2-2002", 70000)\ne5 = Employee("Pradeep", "Asst_manager", "M", "13-8-2002", 65000)\ne6 = Employee("Divya", "Planner", "F", "03-1-2001", 75000)\ne6.display_emp_count()\ne6.count_gender()\ne6.count_big_salary()\ne6.count_desig()',
            ),
            PracticalCard(
              practNumber: 19,
              practTitle: 'Store Application using Classes',
              practAim:
                  'Create a class STORE to keep track of Products(product Code, Name and price).Display menu of all products to user. Generate bill as per order.',
              practCode:
                  'itemCount = int(input("Enter total number of Products:"))\nclass STORE:\n    __product_code = []\n    __name = []\n    __price = []\n    def input_data(self):\n        for i in range(itemCount):\n            self.__product_code.append(int(input("Enter the code of product: ")))\n            self.__name.append(input("Enter the name of product: "))\n            self.__price.append(float(input("Enter the price of product: ")))\n    def display_data(self):\n        print("Product code\t Name \t Price")\n        for i in range(itemCount):\n            print(\n                self.__product_code[i],\n                "\t\t",\n                self.__name[i],\n                "\t\t\t",\n                self.__price[i],\n            )\n    def generate_bill(self, qty):\n        total_amount = 0\n        for i in range(itemCount):\n            total_amount = total_amount + self.__price[i] * qty[i]\n        print("\t\t###### BILL #######")\n        print("Code \t Name\t Price \t Qty \t Subtotal")\n        for i in range(itemCount):\n            print(\n                self.__product_code[i],\n                "\t",\n                self.__name[i],\n                "\t\t",\n                self.__price[i],\n                "\t",\n                qty[i],\n                "\t",\n                self.__price[i] * qty[i],\n            )\n        print("----------------------------------------------------")\n        print("Total = ", total_amount)\ns = STORE()\ns.input_data()\ns.display_data()\nqty = []\nfor i in range(itemCount):\n    print("Enter the quantity for product")\n    qty.append(int(input()))\ns.generate_bill(qty)',
            ),
            PracticalCard(
              practNumber: 21,
              practTitle: 'Rolling Dice Simulator',
              practAim:
                  'Program that simulates rolling dice. When the program runs, it will randomly choose the numbers between 1 and 6(or other integer you prefer). Print that number. Request user to roll again. Set the min and max number that dice can show. For the average die, that means a minimum of 1 and maximum of 6.',
              practCode:
                  'import random\nmin = 1\nmax = 6\nroll_again = "yes"\nwhile roll_again == "yes" or roll_again == "y":\n    print("Rolling the dice...")\n    print("The value is....")\n    print(random.randint(min, max))\n    roll_again = input("Do you want to Roll the dice again?")',
            ),
            PracticalCard(
              practNumber: 23,
              practTitle: 'Number Guessing Game',
              practAim:
                  'Guess Number: Randomly generate a number unknown to the user. The user needs to guess what that number is. If user’s guess is wrong, the program should return some sort of indication as to how wrong(e.g. the number is too high or too low). If the user guesses correctly, a positive indication should appear. Write functions to check if the user input is an actual number, to see the difference between the inputted number and the randomly generated numbers and to then compare the numbers',
              practCode:
                  'import random\nrandomNumber = random.randrange(0, 100)\nprint("Random number has been generated")\nguessed = False\nwhile guessed == False:\n    num = int(input("Enter some guess: "))\n    if num == randomNumber:\n        guessed = True\n        print("Well done!You have guessed a number correctly!!!")\n    elif num > 100 and num < 0:\n        print("Our guess is not between 0 and 100")\n    elif num > randomNumber:\n        print("Number is high")\n    elif num < randomNumber:\n        print("Number is low")',
            ),
          ],
        ),
      ),
    );
  }
}
