import 'package:flutter/material.dart';

import '../widgets/appbar.dart';
import '../widgets/categorieslist.dart';
import '../widgets/coffeelist.dart';
import '../widgets/searchbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppBarRow(),
              const SizedBox(
                height: 10,
              ),
              const Text("Good Morning, Blessing" , style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
              const SizedBox(
                height: 20,
              ),
              const CustomSearchBar(),
              const SizedBox(
                height: 10,
              ),
              const Text("Categories",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
              const SizedBox(
                height: 10,
              ),
              const CategoriesList(),
              const SizedBox(
                height: 10,
              ),
              const Text("Special offre for you ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
              const SizedBox(
                height: 10,
              ),
              CoffeesList(),
            ],
          ),
        ),
      ),
    );
  }
}




