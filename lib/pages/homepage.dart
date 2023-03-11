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
        ],
      )),
    );
  }
}
