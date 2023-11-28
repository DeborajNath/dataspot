import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:shop_spectrum/model/user.dart';
import 'package:shop_spectrum/presentation/widgets/Items.dart';
import 'package:shop_spectrum/utils/constant/dimensions.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final usersList = Users.userList();
  List<Users> _foundUsers = [];

  List<String> selectedCategories = [];

  @override
  void initState() {
    _foundUsers = usersList;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final filterProducts = _foundUsers.where((user) {
      return selectedCategories.isEmpty;
    }).toList()
      ..sort((a, b) => a.name!.compareTo(b.name!));

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: (10 / Dimensions.designWidth).w,
                right: (10 / Dimensions.designWidth).w),
            child: searchBox(),
          ),
          SizedBox(height: (10 / Dimensions.designHeight).h),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.8,
              ),
              itemCount: filterProducts.length,
              itemBuilder: (BuildContext context, int index) {
                Users userss = filterProducts[index];
                return UsersItem(
                  users: userss,
                  onUsersChanged: () {},
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void _runFilter(String enteredKeyword) {
    List<Users> results = [];

    if (enteredKeyword.isEmpty) {
      results = usersList;
    } else {
      results = usersList.where((item) {
        return item.name != null &&
            item.name!.toLowerCase().contains(enteredKeyword.toLowerCase());
      }).toList();
    }

    setState(() {
      _foundUsers = results;
    });
  }

  Widget searchBox() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        onChanged: (value) => _runFilter(value),
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.all(0),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.black,
            size: 20,
          ),
          prefixIconConstraints: BoxConstraints(
            maxHeight: 20,
            minWidth: 25,
          ),
          border: InputBorder.none,
          hintText: 'Search',
          hintStyle: TextStyle(color: Colors.grey),
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        const Icon(
          Icons.menu,
          color: Colors.black,
          size: 30,
        ),
        Container(
          height: 40,
          width: 40,
          child: IconButton(
            onPressed: () => FirebaseAuth.instance.signOut(),
            icon: const Icon(Icons.logout_rounded, size: 32),
            color: Colors.black,
          ),
        ),
      ]),
    );
  }
}
