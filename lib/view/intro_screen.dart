import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Opacity(
              opacity: 0.82,
              child: Image.asset(
                "assets/images/introimage.jpg",
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
            const Positioned(
              bottom: 90,
              left: 20,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sip,Savor,Repeat",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 35),
                    ),
                    SizedBox(
                        width: 270,
                        child: Text(
                          "Discover the Art of Coffee - Where Passion Meets Perfection in Every Cup , Brewing Memories One Sip at a Time",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        )),
                    Divider(
                      color: Colors.transparent,
                      height: 40,
                    ),

                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 30,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: ElevatedButton(
                  onPressed: () {
                    Get.toNamed("/homepage");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(130, 68, 69, 1),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.symmetric(vertical: 11)
                  ),
                  child: const Text("Get started"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
