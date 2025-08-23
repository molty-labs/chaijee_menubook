import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_menu/menu_item/menu_items.dart';
import 'package:my_menu/util/pair.dart';
import 'package:my_menu/widgets/category_wrapper_widget.dart';
import 'package:my_menu/widgets/double_category_item_list.dart';
import 'package:my_menu/widgets/home_page.dart';
import 'package:my_menu/widgets/rate_and_share_page.dart';
import 'package:my_menu/widgets/single_category_item_list.dart';
import 'package:page_flip/page_flip.dart';
import 'widgets/menu_page.dart';

void main() => runApp(MenuApp());

class MenuApp extends StatelessWidget {

  MenuApp({super.key});

  final _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const MenuFlipBook(),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) => MaterialApp.router(
    debugShowCheckedModeBanner: false,
    routerConfig: _router,
    title: 'Menu Flipbook',
  );
}

class MenuFlipBook extends StatefulWidget {
  const MenuFlipBook({super.key});

  @override
  _MenuFlipBookState createState() => _MenuFlipBookState();
}

class _MenuFlipBookState extends State<MenuFlipBook> {
  final controller = GlobalKey<PageFlipWidgetState>();

  @override
  Widget build(BuildContext context) => Scaffold(
    body: PageFlipWidget(
      key: controller,
      duration: const Duration(milliseconds: 800),
      cutoffForward: 0.3,
      cutoffPrevious: 0.5,
      backgroundColor: Colors.white,
      lastPage: RateAndSharePage(),
      children: [

        // home page
        HomePage(),

        // 1st page content
        MenuPage(items: [
          CategoryWrapperWidget(
            title: 'CHAI',
            childWidget: SingleCategoryItemList(items: MenuItems.chaiItems),
          ),
          CategoryWrapperWidget(
            title: 'COFFEE',
            childWidget: DoubleCategoryItemList(
              items: MenuItems.coffeeItems,
              category: Pair("HOT", "COLD"),
            ),
          ),
          CategoryWrapperWidget(
            title: 'GREEN TEA',
            childWidget: SingleCategoryItemList(items: MenuItems.greenTeaItems),
          ),
          CategoryWrapperWidget(
            title: 'ICED TEA',
            childWidget: SingleCategoryItemList(items: MenuItems.icedTea),
          ),
          CategoryWrapperWidget(
            title: 'MILK SHAKES',
            childWidget: SingleCategoryItemList(items: MenuItems.milkShakes),
          ),
        ]),

        // 2nd page content
        MenuPage(items: [
          CategoryWrapperWidget(
            title: 'COOLERS',
            childWidget: SingleCategoryItemList(items: MenuItems.coolerItems),
          ),
          CategoryWrapperWidget(
            title: 'SNACKS',
            childWidget: SingleCategoryItemList(items: MenuItems.snacksItems),
          ),
          CategoryWrapperWidget(
            title: 'MOMO',
            childWidget: SingleCategoryItemList(items: MenuItems.momoItems),
          ),
          CategoryWrapperWidget(
            title: 'SNADWITCH',
            childWidget: SingleCategoryItemList(items: MenuItems.sandwichItems),
          ),
          CategoryWrapperWidget(
            title: 'MAGGIE',
            childWidget: SingleCategoryItemList(items: MenuItems.maggieItems),
          ),
        ]),
      ],
    ),
  );
}
