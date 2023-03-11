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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Trending",
                    style: AppFonts.categoriesText,
                  ),
                  Text(
                    "View all",
                    style: AppFonts.normalText,
                  ),
                ],
              ),
              Container(
                width: 335.w,
                height: 70.h,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  border:
                      Border(bottom: BorderSide(color: Colors.grey, width: 1)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'images/img.png',
                      width: 40,
                      height: 40,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Feel The Beat',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 2.h),
                        Row(
                          children: [
                            const Icon(
                              Icons.schedule,
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              '8:00PM',
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 2.h),
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on,
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              'The house',
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: const Text(
                        'Free',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
