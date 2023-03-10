import '../components/app_imports.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4, //
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            leading: const Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: AssetImage("images/per.jpeg"),
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications,
                  color: Colors.black,
                ),
              )
            ],
          ),
          body: SafeArea(
              child: SizedBox(
            height: 100,
            width: 100,
            child: ListView(
              shrinkWrap: true,
              children: [
                const TabBar(
                  isScrollable: false, // make the tabs scrollable
                  tabs: [
                    Tab(text: 'Tab 1'),
                    Tab(text: 'Tab 2'),
                    Tab(text: 'Tab 3'),
                    Tab(text: 'Tab 4'),
                  ],
                ),
                SizedBox(
                  height: 50,
                  width: 30, // height of the TabBarView
                  child: TabBarView(children: [
                    Container(
                      color: Colors.red,
                      child: const Text("First"),
                    ),
                    Container(
                      height: 40,
                      width: 30,
                      color: Colors.green,
                    ),
                    Container(
                      height: 40,
                      width: 30,
                      color: Colors.blue,
                    ),
                    Container(
                      height: 40,
                      width: 30,
                      color: Colors.yellow,
                    ),
                  ]),
                )
              ],
            ),
          )),
        ));
  }
}
