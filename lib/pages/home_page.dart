import 'package:flutter/material.dart';
import 'package:food_delivery/components/my_current_location.dart';
import 'package:food_delivery/components/my_description_box.dart';
import 'package:food_delivery/components/my_drawer.dart';
import 'package:food_delivery/components/my_silver_app_bar.dart';
import 'package:food_delivery/components/my_tab_bar.dart';
import 'package:food_delivery/models/food.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  //tab controller
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController =
        TabController(length: FoodCategory.values.length, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

// sort out and return a list of food items that belong to specific category
  List<Food> _filterMenuCategory(FoodCategory category, List<Food> fullMenu) {
    return fullMenu.where((food) => food.category == category).toList();
  }
// return  list of foods in given category

  List<Widget> getFoodInCategory(List<Food> fullMenu) {
    return FoodCategory.values.map((category) {
      List<Food> categoryMenu = _filterMenuCategory(category, fullMenu);
      return ListView.builder(
          itemCount: categoryMenu.length,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(categoryMenu[index].name),
            );
          });
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            // SliverAppBar and/or other sliver widgets go here
            return <Widget>[
              MySilverAppBar(
                  title: MyTabBar(tabController: _tabController),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Divider(
                        indent: 25,
                        endIndent: 25,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      //my current location
                      MyCurrentLocation(),
                      //description box
                      MyDescriptionBox()
                    ],
                  )),
            ];
          },
          body: TabBarView(
            controller: _tabController,
            children: [
              ListView.builder(
                  itemCount: 5, itemBuilder: (context, idnex) => Text('data1')),
              ListView.builder(
                  itemCount: 5, itemBuilder: (context, idnex) => Text('data2')),
              ListView.builder(
                  itemCount: 5, itemBuilder: (context, idnex) => Text('data3')),
              ListView.builder(
                  itemCount: 5, itemBuilder: (context, idnex) => Text('data3')),
              ListView.builder(
                  itemCount: 5, itemBuilder: (context, idnex) => Text('data3'))
            ],
          )),
    );
  }
}
