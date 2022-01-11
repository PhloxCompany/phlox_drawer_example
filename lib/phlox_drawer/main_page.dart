import 'package:flutter/material.dart';
import 'package:phlox_drawer/controller/phlox_drawer_controller.dart';
import 'package:phlox_drawer/controller/phlox_drawer_option.dart';
import 'package:phlox_drawer/phlox_drawer.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;
  PhloxDrawerController controller = PhloxDrawerController();
  @override
  Widget build(BuildContext context) {
    return PhloxDrawer(
      options: PhloxDrawerOption.oneScreen(),
      controller: controller,
      context: context,
      drawerPage: Scaffold(
        backgroundColor: const Color(0xff0a174b),
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              FloatingActionButton(
                onPressed: () => controller.toggle(),
                child: const Icon(Icons.close),
              )
            ],
          ),
        ),
      ),
      duration: const Duration(
        seconds: 3
      ),
      mainPage: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: Colors.black,
          leading: const Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(
                  'https://cdn.dribbble.com/users/906258/screenshots/16671606/media/de163457978ad12c9944b066d94aa59b.png?compress=1&resize=800x600'),
            ),
          ),
          centerTitle: true,
          title: const Text(
            'Feed',
            style: TextStyle(
                color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              padding: const EdgeInsets.all(16.0),
              onPressed: () {
                controller.toggle();
              },
              icon: const Icon(
                Icons.menu_outlined,
                color: Colors.white,
                size: 36,
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                child: ListView.builder(
                  itemCount: 18,
                  itemBuilder: (context, index) {
                    return itemList();
                  },
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const ClampingScrollPhysics(),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                childAspectRatio: 1 / .9,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 4),
                    child: Stack(
                      children: [
                        Card(
                          color: Colors.transparent,
                          margin: const EdgeInsets.only(top: 40),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                              side: const BorderSide(
                                  width: 1, color: Color(0xFF616161))),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 60,
                                ),
                                const Text(
                                  'Mars',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.visibility,
                                      color: Colors.grey[800],
                                      size: 18,
                                    ),
                                    const SizedBox(
                                      width: 2,
                                    ),
                                    Text(
                                      '279 views',
                                      style: TextStyle(
                                          color: Colors.grey[800], fontSize: 12),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Align(
                            alignment: Alignment.topCenter,
                            child: Image.asset(
                              'assets/images/mars.png',
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 4, right: 20),
                    child: Stack(
                      children: [
                        Card(
                          color: Colors.transparent,
                          margin: const EdgeInsets.only(top: 40),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                              side: const BorderSide(
                                  width: 1, color: Color(0xFF616161))),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 60,
                                ),
                                const Text(
                                  'TrES-2b',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.visibility,
                                      color: Colors.grey[800],
                                      size: 18,
                                    ),
                                    const SizedBox(
                                      width: 2,
                                    ),
                                    Text(
                                      '176 views',
                                      style: TextStyle(
                                          color: Colors.grey[800], fontSize: 12),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Align(
                            alignment: Alignment.topCenter,
                            child: Image.asset(
                              'assets/images/tres_2b.png',
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 220,
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage('assets/images/cassini.png'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(30)),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Text(
                        'Cassini\non Saturn',
                        style: TextStyle(
                            color: Colors.white, fontSize: 24, height: 1),
                      ),
                      Expanded(child: SizedBox()),
                      Icon(
                        Icons.visibility,
                        color: Colors.grey,
                        size: 18,
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Text(
                        '279 views',
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),
              GridView.count(
                crossAxisCount: 2,
                padding: const EdgeInsets.only(bottom: 100),
                shrinkWrap: true,
                childAspectRatio: 1 / .9,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 4),
                    child: Stack(
                      children: [
                        Card(
                          color: Colors.transparent,
                          margin: const EdgeInsets.only(top: 40),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                              side: const BorderSide(
                                  width: 1, color: Color(0xFF616161))),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 60,
                                ),
                                const Text(
                                  'Sun',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.visibility,
                                      color: Colors.grey[800],
                                      size: 18,
                                    ),
                                    const SizedBox(
                                      width: 2,
                                    ),
                                    Text(
                                      '301 views',
                                      style: TextStyle(
                                          color: Colors.grey[800], fontSize: 12),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Align(
                            alignment: Alignment.topCenter,
                            child: Image.asset(
                              'assets/images/sun.png',
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 4, right: 20),
                    child: Stack(
                      children: [
                        Card(
                          color: Colors.transparent,
                          margin: const EdgeInsets.only(top: 40),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                              side: const BorderSide(
                                  width: 1, color: Color(0xFF616161))),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 60,
                                ),
                                const Text(
                                  'HD-1997',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.visibility,
                                      color: Colors.grey[800],
                                      size: 18,
                                    ),
                                    const SizedBox(
                                      width: 2,
                                    ),
                                    Text(
                                      '254 views',
                                      style: TextStyle(
                                          color: Colors.grey[800], fontSize: 12),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Align(
                            alignment: Alignment.topCenter,
                            child: Image.asset(
                              'assets/images/HD_1997.png',
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (value) => setState(() {
            index = value;
          }),
          backgroundColor: Colors.black,
          showSelectedLabels: false,
          iconSize: 28,
          selectedFontSize: 0,
          unselectedFontSize: 0,
          showUnselectedLabels: false,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_filled,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.add_circle,
                  color: Colors.white,
                  size: 50,
                ),
                label: ''),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search_sharp,
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }

  Widget itemList() {
    return Card(
      color: Colors.transparent,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: const BorderSide(width: 1, color: Color(0xFF616161))),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 14),
        child: Center(
          child: Text(
            'Comets',
            style: TextStyle(color: Colors.grey[700]),
          ),
        ),
      ),
    );
  }
}
