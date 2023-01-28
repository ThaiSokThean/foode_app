import 'package:flutter/material.dart';
import 'package:practices_homework/views/demo_sliver_lesson.dart';
import 'package:practices_homework/views/login.dart';
import 'package:practices_homework/views/popular_menu_page.dart';
import 'package:practices_homework/views/popular_restaurant_page.dart';

import '../components/constants.dart';
import '../components/restaurant_item_card.dart';
import 'package:practices_homework/components/search_and_filter_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String routeName = '/home_page';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: _buildDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTopSection(),
            const SearchAndFilterWidget(),
            _buildBannerWidget(context),
            _TitleSectionWidget(
              leadingText: 'Popular Restaurants',
              trailingText: 'View All',
              onTap: () {
                Navigator.pushNamed(
                  context,
                  PopularRestaurantListPage.routeName,
                );
              },
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  RestaurantItemCard(
                    index: 0,
                    title: 'Lovy Food',
                    subtitle: '10 min',
                    imagePath: 'assets/images/circlo_resto.png',
                    margin: EdgeInsets.zero,
                  ),
                  RestaurantItemCard(
                    index: 1,
                    title: 'Cloudy Food',
                    subtitle: '10 min',
                    imagePath: 'assets/images/lovy_food.png',
                    margin: EdgeInsets.zero,
                  ),
                  RestaurantItemCard(
                    index: 2,
                    title: 'Haty Food',
                    subtitle: '10 min',
                    imagePath: 'assets/images/lovy_food.png',
                    margin: EdgeInsets.zero,
                  ),
                ],
              ),
            ),
            _TitleSectionWidget(
              leadingText: 'Popular Foods',
              trailingText: 'View All',
              onTap: () {
                Navigator.pushNamed(
                  context,
                  PopularMenuListPage.routeName,
                );
              },
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  RestaurantItemCard(
                    index: 0,
                    title: 'Circlo Resto',
                    subtitle: '10 min',
                    imagePath: 'assets/images/circle_resto.png',
                    margin: EdgeInsets.zero,
                  ),
                  RestaurantItemCard(
                    index: 1,
                    title: 'McDonald\'s',
                    subtitle: '10 min',
                    imagePath: 'assets/images/login_logo.png',
                    margin: EdgeInsets.zero,
                  ),
                  RestaurantItemCard(
                    index: 2,
                    title: 'Healthy Food',
                    subtitle: '10 min',
                    imagePath: 'assets/images/original_salad.png',
                    margin: EdgeInsets.zero,
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  RestaurantItemCard(
                    index: 0,
                    title: 'Circlo Resto',
                    subtitle: '10 min',
                    imagePath: 'assets/images/lovy_food.png',
                    margin: EdgeInsets.zero,
                  ),
                  RestaurantItemCard(
                    index: 1,
                    title: 'McDonald\'s',
                    subtitle: '10 min',
                    imagePath: 'assets/images/login_logo.png',
                    margin: EdgeInsets.zero,
                  ),
                  RestaurantItemCard(
                    index: 2,
                    title: 'Healthy Food',
                    subtitle: '10 min',
                    imagePath: 'assets/images/original_salad.png',
                    margin: EdgeInsets.zero,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 120),
          ],
        ),
      ),
    );
  }

  Widget _buildDrawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // DrawerHeader(
          //   child: Text('Drawer Header'),
          //   decoration: BoxDecoration(
          //     color: Colors.blue,
          //   ),
          // ),
          UserAccountsDrawerHeader(
            accountName: const Text('Applications'),
            accountEmail: const Text("applications@gmail.com"),
            currentAccountPicture: CircleAvatar(
              child: Image.asset('assets/images/telegram_logo.jpg'),
            ),
            otherAccountsPictures: [
              CircleAvatar(
                child: Image.asset('assets/images/kids.png'),
              ),
              CircleAvatar(
                child: Image.asset('assets/images/adult.png'),
              ),
            ],
            onDetailsPressed: () {},
          ),
          ListTile(
            leading: const Icon(Icons.message),
            trailing: const Icon(Icons.arrow_forward_ios),
            title: const Text('Feedback'),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.account_circle),
            trailing: const Icon(Icons.arrow_forward_ios),
            title: const Text('Users'),
            onTap: () {},
          ),
          const Divider(),
        ],
      ),
    );
  }

  Container _buildBannerWidget(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      height: 180,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              margin: const EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: Image.asset('assets/images/order_promotion.png').image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    "Special Deal for December",
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                          color: Colors.white,
                        ),
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  child: ElevatedButton(
                    onPressed: () {

                      Navigator.pushNamed(
                        context,
                        LoginForm.routeName,
                      );
                    },
                    child: Text("Order Now"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: secondaryColor,
                      foregroundColor: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Row _buildSearchSectionWidget() {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.blue.withOpacity(0.04),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: const Offset(0, 1), // changes position of shadow
                ),
              ],
            ),
            child: Row(
              children: const [
                Expanded(
                  child: TextField(
                    enabled: false,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                      hintText: 'Search',
                      suffixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.blue.withOpacity(0.04),
                spreadRadius: 1,
                blurRadius: 5,
                offset: const Offset(0, 1), // changes position of shadow
              ),
            ],
          ),
          child: IconButton(
            onPressed: () {
              print('Filter');
            },
            splashRadius: 1,
            icon: const Icon(Icons.filter_list),
          ),
        ),
        const SizedBox(width: 16),
      ],
    );
  }

  _buildTopSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: IconButton(
              icon: const Icon(Icons.menu, color: Colors.white),
              onPressed: () {
                print("drawer");
              },
            ),
            // child: IconButton(
            //     onPressed: onPressed(){},
            //     icon: const Icon(Icons.menu,color:Colors.white)
            //
            // ),
            // child: const Icon(
            //   Icons.menu,
            //   color: Colors.white,
            // ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              'Hello, Thaisan!',
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ),
          Stack(
            children: [
              Icon(
                Icons.notifications_active,
                color: Theme.of(context).primaryColor,
              ),
              Positioned(
                right: 0,
                child: Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text(
                      '1',
                      style: Theme.of(context).textTheme.subtitle2!.copyWith(
                            color: Colors.white,
                            fontSize: 8,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _TitleSectionWidget extends StatelessWidget {
  const _TitleSectionWidget({
    Key? key,
    required this.leadingText,
    required this.trailingText,
    this.onTap,
  }) : super(key: key);

  final String leadingText;
  final String trailingText;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            leadingText,
            style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
          ),
          TextButton(
            onPressed: onTap,
            child: Text(trailingText),
          ),
        ],
      ),
    );
  }
}

class RestaurantModel {
  final String title;
  final String subtitle;
  final String imagePath;

  RestaurantModel(this.title, this.subtitle, this.imagePath);
}
