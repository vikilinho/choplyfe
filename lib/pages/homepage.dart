import '../components/app_imports.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> _buildCustomContainers() {
    return [
      MyCustomContainer(
        iconData: Icons.music_note,
        text: 'Music',
        isSelected: _selectedIndex == 0,
        onTap: () => _onItemTapped(0),
      ),
      MyCustomContainer(
        iconData: Icons.coffee_rounded,
        text: 'Food',
        isSelected: _selectedIndex == 1,
        onTap: () => _onItemTapped(1),
      ),
      MyCustomContainer(
        iconData: Icons.beach_access,
        text: 'Beach',
        isSelected: _selectedIndex == 2,
        onTap: () => _onItemTapped(2),
      ),
      MyCustomContainer(
        iconData: Icons.sports_kabaddi,
        text: 'Dance',
        isSelected: _selectedIndex == 3,
        onTap: () => _onItemTapped(3),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Builder(builder: (context) {
          return GestureDetector(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: AssetImage("images/per.jpeg"),
              ),
            ),
          );
        }),
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
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: ListView(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              child: Column(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage("images/per.jpeg"),
                  ),
                  SizedBox(
                    height: 10.5.h,
                  ),
                  Text(
                    'Vikilinho',
                    style: AppFonts.subTextWhiteBold,
                  ),
                  SizedBox(
                    height: 22.5.h,
                  ),
                  const Expanded(
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1,
                      height: 10,
                      indent: 20,
                      endIndent: 20,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                DrawerRow(
                  onTap: () => null,
                  text: "Profile",
                  icon: Icons.person,
                ),
                SizedBox(
                  height: 12.5.h,
                ),
                DrawerRow(
                  onTap: () => null,
                  text: "Subscription",
                  icon: Icons.add_box,
                ),
                SizedBox(
                  height: 12.5.h,
                ),
                DrawerRow(
                  onTap: () => null,
                  text: "Wallet",
                  icon: Icons.wallet,
                ),
                SizedBox(
                  height: 12.5.h,
                ),
                DrawerRow(
                  onTap: () => null,
                  text: "My Ticket",
                  icon: Icons.airplane_ticket_rounded,
                ),
                SizedBox(
                  height: 12.5.h,
                ),
                DrawerRow(
                  onTap: () => null,
                  text: "Schedule",
                  icon: Icons.add_box,
                ),
                SizedBox(
                  height: 12.5.h,
                ),
                DrawerRow(
                  onTap: () => null,
                  text: "Feedback",
                  icon: Icons.chat,
                ),
                SizedBox(
                  height: 12.5.h,
                ),
                DrawerRow(
                  onTap: () => null,
                  text: "Settings",
                  icon: Icons.settings,
                )
              ],
            ),
            SizedBox(
              height: 80.5.h,
            ),
            Column(
              children: [
                Text(
                  "Reach us through:",
                  style: AppFonts.subTextWhite,
                ),
                SizedBox(
                  height: 12.5.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset("images/fb.png"),
                    Image.asset("images/inst.png"),
                    Image.asset("images/twit.png"),
                  ],
                )
              ],
            )
          ],
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Categories",
                      style: AppFonts.categoriesText,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: _buildCustomContainers(),
              ),
              const SizedBox(
                  height:
                      20), // add some spacing between the custom containers and the new container
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  height: 250.h,
                  width: 300.w,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset(
                    'images/amapi.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              const PromoText(
                mainText: 'Trending',
                subText: "View all",
              ),
              const EventCard(
                imagePath: 'images/img.png',
                title: 'Feel The Beat',
                time: '8:00PM',
                location: 'The house',
                isFree: true,
              ),
              SizedBox(height: 10.h),
              const EventCard(
                imagePath: 'images/img2.png',
                title: 'The house party',
                time: '8:00PM',
                location: 'The garden',
                isFree: true,
              ),
              SizedBox(
                height: 5.h,
              ),
              const PromoText(
                mainText: 'Upcoming',
                subText: "View all",
              ),
              SizedBox(
                height: 5.h,
              ),
              const EventCard(
                imagePath: 'images/img3.png',
                title: 'Paint & Sip',
                time: '2:00PM',
                location: 'Side walk',
                isFree: true,
              ),
              SizedBox(height: 10.h),
              const EventCard(
                imagePath: 'images/img4.png',
                title: 'Untamed',
                time: '4PM To 12AM',
                location: 'West Roxbury, MA',
                isFree: true,
              ),
              SizedBox(
                height: 5.h,
              ),
              const PromoText(
                mainText: 'Recent',
                subText: "View all",
              ),
              SizedBox(
                height: 5.h,
              ),
              const EventCard(
                imagePath: 'images/img3.png',
                title: 'Paint & Sip',
                time: '2:00PM',
                location: 'Side walk',
                isFree: true,
              ),
              SizedBox(height: 10.h),
              const EventCard(
                imagePath: 'images/img4.png',
                title: 'Untamed',
                time: '4PM To 12AM',
                location: 'West Roxbury, MA',
                isFree: true,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
