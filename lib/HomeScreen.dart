import 'package:flutter/material.dart';

class DataEnter extends StatefulWidget {
  const DataEnter({Key? key}) : super(key: key);

  @override
  State<DataEnter> createState() => _DataEnterState();
}

class _DataEnterState extends State<DataEnter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 180,
              width: double.infinity,
              color: Colors.white,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 25,
                    right: 25,
                  ),
                  child: Text(
                    "Welcome",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 25,
                    right: 25,
                  ),
                  child: Text(
                    "Back",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 25,
                    right: 25,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Emain Address',
                      suffixIcon: Icon(
                        Icons.email,
                        color: Colors.black38,
                      ),
                      focusColor: Colors.blue,
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 25,
                    right: 25,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Password',
                      suffixIcon: Icon(
                        Icons.remove_red_eye_outlined,
                        color: Colors.black38,
                      ),
                      focusColor: Colors.blue,
                    ),
                  ),
                ),
                SizedBox(
                  height: 70,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 25,
                        right: 25,
                      ),
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 25),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, 'note');
                        },
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                          ),
                          child: Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      child: Image.asset("assets/images/google.png"),
                    ),
                    CircleAvatar(
                      child: Image.asset("assets/images/apple.png"),
                    ),
                    CircleAvatar(
                      child: Image.asset("assets/images/facebook.png"),
                    ),
                  ],
                ),
                SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 25),
                      child: Text(
                        "Forget password?",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
