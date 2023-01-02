import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Row(
          children: const [
            Text("Settings"),
          ],
        ),
      ),
      body: Column(
        children: [
          Image.asset(
            "assets/img6.png",
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.001,
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Scanning Hand',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              const Spacer(),
              // Here, default theme colors are used for activeBgColor, activeFgColor, inactiveBgColor and inactiveFgColor
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ToggleSwitch(
                  initialLabelIndex: 0,
                  totalSwitches: 2,
                  labels: const ['Left', 'Right'],
                  onToggle: (index) {},
                ),
              ),
            ],
          ),
          const Divider(
            color: Colors.black,
            height: 20,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.001,
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Scanning Hand',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              const Spacer(),
              // Here, default theme colors are used for activeBgColor, activeFgColor, inactiveBgColor and inactiveFgColor
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ToggleSwitch(
                  initialLabelIndex: 0,
                  totalSwitches: 1,
                  labels: const ['Chinese'],
                  onToggle: (index) {},
                ),
              ),
            ],
          ),
          const Divider(
            color: Colors.black,
            height: 20,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.001,
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Connect to Marker Cloud',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              const Spacer(),
              // Here, default theme colors are used for activeBgColor, activeFgColor, inactiveBgColor and inactiveFgColor
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ToggleSwitch(
                  initialLabelIndex: 0,
                  totalSwitches: 2,
                  labels: const ['Off', 'On'],
                  onToggle: (index) {},
                ),
              ),
            ],
          ),
          const Divider(
            color: Colors.black,
            height: 20,
          ),

          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Turning Cloud scanning off will slow down scanning speed considerably. Turn off when internet connection is slow.',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
