import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import 'main_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          SvgPicture.asset('assets/svg/background_butter.svg'),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.0),
            child: Text(
              'Explore the universe',
              textAlign: TextAlign.center,
              style: TextStyle(
                  height: 1,
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Learn more about the\nuniverse where we all alive',
            textAlign: TextAlign.center,
            style:
            TextStyle(color: Colors.grey[700], fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 40,
          ),
          Stack(
            children: [
              const Center(
                child: SizedBox(
                  child: CircularProgressIndicator(
                    value: .9,
                  ),
                  width: 110,
                  height: 110,
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 9.4),
                  child: MaterialButton(
                    color: Colors.white,
                    onPressed: () {
                      print('click');
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => const MainPage(),));
                    },
                    padding: const EdgeInsets.all(28),
                    shape: const CircleBorder(),
                    child: const Icon(
                      Icons.play_arrow,
                      color: Colors.black,
                      size: 36,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );  }
}
