import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 40, 25, 10),
              child: Stack(
                children: [
                  Image.asset(
                    "assets/image.png",
                    width: double.infinity,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                    child: Image.asset(
                      "assets/image1.png",
                      width: double.infinity,
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(25, 10, 25, 0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Peter Mach",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(25, 5, 25, 0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Mind Deep Relax",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(25, 10, 25, 0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Join the Community as we prepare over 33 days to relax and feel joy with the mind and happnies session across the World.",
                  style: TextStyle(fontSize: 19),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 30, 25, 10),
              child: MaterialButton(
                minWidth: double.infinity,
                height: 50,
                onPressed: () {},
                child: Padding(
                  padding: EdgeInsets.fromLTRB(60, 0, 60, 0),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/shape.png",
                        width: 20,
                      ),
                      Text(
                        "Play Next Session",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ),
                color: Color(0xFF039EA2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 15, 25, 0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    MaterialButton(
                      onPressed: () {},
                      child: Image.asset("assets/shape.png"),
                      color: const Color(0xFF2F80ED),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      minWidth: 40,
                      height: 40,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 3),
                            child: Text(
                              "Sweet Memories",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                            child: Text(
                              "December 29 Pre-Launch",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        "···",
                        style: TextStyle(
                          color: Color.fromARGB(128, 158, 158, 158),
                          fontWeight: FontWeight.w900,
                          fontSize: 50,
                        ),
                      ),
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 15, 25, 0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    MaterialButton(
                      onPressed: () {},
                      child: Image.asset("assets/shape.png"),
                      color: const Color(0xFF039EA2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      minWidth: 40,
                      height: 40,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 25, 3),
                            child: Text(
                              "A Day Dream",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                            child: Text(
                              "December 29 Pre-Launch",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        "···",
                        style: TextStyle(
                          color: Color.fromARGB(128, 158, 158, 158),
                          fontWeight: FontWeight.w900,
                          fontSize: 50,
                        ),
                      ),
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 15, 25, 0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    MaterialButton(
                      onPressed: () {},
                      child: Image.asset("assets/shape.png"),
                      color: const Color(0xFFF09235),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      minWidth: 40,
                      height: 40,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 25, 3),
                            child: Text(
                              "Mind Explore",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                            child: Text(
                              "December 29 Pre-Launch",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        "···",
                        style: TextStyle(
                          color: Color.fromARGB(128, 158, 158, 158),
                          fontWeight: FontWeight.w900,
                          fontSize: 50,
                        ),
                      ),
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
