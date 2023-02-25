import 'package:flutter/material.dart';

class note extends StatefulWidget {
  const note({Key? key}) : super(key: key);

  @override
  State<note> createState() => _noteState();
}

class _noteState extends State<note> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            width: double.infinity,
            color: Colors.white,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 30,
            ),
            child: Text(
              "Fast and Professional",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 30,
            ),
            child: Text(
              "Onlion Invoice Maker",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 30,
              right: 30,
            ),
            child: Text(
              "Wix Invoice Generator lets you create custom invoice for your bussiness - free. Enter your contact info, add client details and describe your billing items. When you're done, send your invoice directly to clients or download a PHOTO copy from your email.",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 20,
              ),
            ),
          ),
          Spacer(),
          Row(
            children: [
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(15),
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'data');
                  },
                  child: Container(
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Center(
                      child: Text(
                        "Create Your Invoice",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
