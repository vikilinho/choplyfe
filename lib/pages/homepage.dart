import '../components/app_imports.dart';
import '../components/custom_container.dart';

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
