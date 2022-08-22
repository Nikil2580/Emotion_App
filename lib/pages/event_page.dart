import 'package:emotion_handling/Anger/better_communication.dart';
import 'package:emotion_handling/Anger/cognitive_reappraisal.dart';
import 'package:emotion_handling/Anger/cognitive_restructuring.dart';
import 'package:emotion_handling/Anger/relaxation.dart';
import 'package:emotion_handling/Anxiety/being_mindful.dart';
import 'package:emotion_handling/Anger/think_before_you_speak.dart';
import 'package:flutter/material.dart';

class EventsPage extends StatefulWidget {
  EventsPage({Key? key}) : super(key: key);

  @override
  State<EventsPage> createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  final titleStyle = const TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
  final subTitleStyle = const TextStyle(
    fontSize: 12,
    fontFamily: 'Roboto Thin',
    color: Color.fromRGBO(66, 66, 66, 1),
  );

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 108, 99, 254),
          title: Text('Events'),
          automaticallyImplyLeading: false,
          centerTitle: true,
          bottom: TabBar(tabs: [
            Tab(text: 'Sadness'),
            Tab(text: 'Anxiety'),
            Tab(text: 'Anger')
          ]),
        ),
        body: TabBarView(children: [
          Column(
            children: [
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Scrollbar(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    // child: TabBar(
                    // minWidth: 120.0,
                    // fontSize: 14,
                    // cornerRadius: 7.0,
                    // customWidths: _customWidhts,
                    // activeBgColors: _activebgcolors,
                    // activeFgColor: Colors.white,
                    // inactiveBgColor: Color.fromARGB(251, 251, 251, 251),
                    // inactiveFgColor: Colors.black,
                    // //initialLabelIndex: 0,
                    // //totalSwitches: 5,
                    // labels: _categories,
                    // radiusStyle: true,
                    // customTextStyles: [
                    //   TextStyle(fontSize: 11, fontWeight: FontWeight.w200)
                    // ],
                    // ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: ListView.builder(
                  itemCount: entries.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 3),
                      child: Card(
                        elevation: 5,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14)),
                        child: new InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => _pages[index],
                              ),
                            );
                          },
                          child: SizedBox(
                              height: 270,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 135,
                                      child: Stack(children: [
                                        Container(
                                          foregroundDecoration: BoxDecoration(
                                              image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/${entries[index]}'),
                                            fit: BoxFit.fitWidth,
                                          )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Align(
                                            alignment: Alignment.topRight,
                                            child: Container(
                                              height: 35,
                                              width: 35,
                                              decoration: const BoxDecoration(
                                                  color: Color.fromARGB(
                                                      95, 0, 0, 0),
                                                  shape: BoxShape.circle),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 10.0),
                                                child: IconButton(
                                                  icon: Icon(
                                                    _selections[index]
                                                        ? Icons
                                                            .favorite_border_sharp
                                                        : Icons.favorite_sharp,
                                                    color: _selections[index]
                                                        ? Colors.white
                                                        : Colors.red,
                                                    size: 20,
                                                  ),
                                                  onPressed: () {
                                                    setState(() {
                                                      _selections[index] =
                                                          !_selections[index];
                                                    });
                                                  },
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ]),
                                    ),
                                    Center(
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            14.0, 50, 0, 10),
                                        child: Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              rolesOrJobs[index],
                                              style: titleStyle,
                                            )),
                                      ),
                                    ),
                                  ])),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          Icon(Icons.car_crash, size: 350),
          Icon(Icons.bus_alert, size: 350)
        ]),
      ),
    );
  }
}

final List<String> entries = <String>[
  'relaxation.jpg',
  'restructuring.jpg',
  'think.jpg',
  'communication.jpg',
  'reappraisal.jpg'
];

final List<String> rolesOrJobs = <String>[
  'Relaxation Techniques',
  'Cognitive Restructuring',
  'Think Before You Speak',
  'Better Communication',
  'Cognitive Reappraisal',
];

final List<bool> _selections = List.generate(rolesOrJobs.length, (_) => true);

final List<Widget> _pages = [
  Relaxation(),
  CognitiveRestructuring(),
  ThinkSpeak(),
  BetterCommunication(),
  CognitiveReappraisal()
];
