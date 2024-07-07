import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:package_exsample/screen/about_us_screen.dart';
import 'package:package_exsample/screen/calculation_screen.dart';
import 'package:package_exsample/screen/contact_us_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> sliders = [
    "images/slider_1.jpg",
    "images/slider_2.jpg",
    "images/slider_3.jpg",
    "images/slider_4.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 210, 246),
                image: DecorationImage(
                  image: AssetImage('images/slider_1.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Text("Drawer Header"),
            ),
            ListTile(
              title: Text("Home"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text("Search"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AboutUsScreen(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text("Profile"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AboutUsScreen(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text("Settings"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AboutUsScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(title: Text("Home")),
      body: Container(
        child: Swiper(
          autoplay: true,
          itemCount: sliders.length,
          itemBuilder: (context, index) => Image.asset(sliders[index]),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        onTap: (value) {
          switch (value) {
            case 1:
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => const CalculationScreen()),
              );
              break;
            default:
            break;
          }
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Color.fromARGB(255, 255, 210, 246)),
          BottomNavigationBarItem(
              icon: Icon(Icons.calculate),
              label: "calculate",
              backgroundColor: Color.fromARGB(255, 255, 210, 246)),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
              backgroundColor: Color.fromARGB(255, 255, 210, 246)),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
              backgroundColor: Color.fromARGB(255, 255, 210, 246)),
        ],
      ),
    );
  }
}
