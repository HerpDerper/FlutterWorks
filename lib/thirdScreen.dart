import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF039EA2),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(25, 100, 25, 10),
              child: Image.asset(
                "assets/medinow.png",
                width: 150,
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(25, 5, 25, 10),
              child: Center(
                child: Text(
                  "Meditate With Us!",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 50, 25, 10),
              child: MaterialButton(
                minWidth: double.infinity,
                height: 50,
                onPressed: () {},
                child: Center(
                  child: Text(
                    "Sign in with Apple",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(25, 5, 25, 10),
              child: MaterialButton(
                minWidth: double.infinity,
                height: 50,
                onPressed: () {},
                child: Text(
                  "Continue with Email or Phone",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                color: Color(0xFFCDFDFE),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(25, 5, 25, 10),
              child: Center(
                child: InkWell(
                  onTap: () {},
                  child: Text(
                    "Continue With Google",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(25, 5, 25, 10),
              child: Center(
                child: Image.asset(
                  "assets/image2.png",
                  width: double.infinity,
                  height: 325,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
