import 'package:flutter/material.dart';

class SecretsOfAtlantis extends StatefulWidget {
  const SecretsOfAtlantis({Key? key}) : super(key: key);

  @override
  State<SecretsOfAtlantis> createState() => _SecretsOfAtlantisState();
}

class _SecretsOfAtlantisState extends State<SecretsOfAtlantis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xFFFAF6F5),
          ),
          child: Column(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFF01C3FF),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      width: double.infinity,
                      height: 307,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.asset(
                        "assets/whale.png",
                        width: double.infinity,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 258, 0, 0),
                    child: Image.asset("assets/halfcircle.png"),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 210, 0, 0),
                    child: Center(
                      child: MaterialButton(
                        onPressed: () {},
                        child: Stack(
                          children: [
                            Image.asset("assets/circle.png"),
                            Padding(
                              padding: EdgeInsets.fromLTRB(40, 30, 0, 0),
                              child: Image.asset("assets/tri.png"),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                child: Text(
                  "Secrets of Atlantis",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: MaterialButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Color(0xFFFE7A15), width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  minWidth: 120,
                  child: Text(
                    "Follow",
                    style: TextStyle(color: Color(0xFFFE7A15), fontSize: 20),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                child: Stack(
                  children: [
                    Image.asset(
                      "assets/more.png",
                      width: 325,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(90, 115, 0, 0),
                      child: Image.asset("assets/point.png"),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
                child: Stack(
                  children: [
                    Image.asset(
                      "assets/g1.png",
                      width: 275,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(13, 35, 0, 0),
                      child: Image.asset(
                        "assets/g2.png",
                        width: 30,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(53, 13, 0, 0),
                      child: Image.asset(
                        "assets/g4.png",
                        width: 50,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(125, 40, 0, 0),
                      child: Image.asset(
                        "assets/invite.png",
                        width: 90,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(235, 40, 0, 0),
                      child: Image.asset(
                        "assets/g3.png",
                        width: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
