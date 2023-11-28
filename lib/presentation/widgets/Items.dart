import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:shop_spectrum/model/user.dart';
import 'package:shop_spectrum/utils/constant/dimensions.dart';

class UsersItem extends StatelessWidget {
  final Users users;
  // ignore: prefer_typing_uninitialized_variables
  final onUsersChanged;

  const UsersItem({
    Key? key,
    required this.users,
    required this.onUsersChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: () {
            onUsersChanged(users);
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          tileColor: Colors.white,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.all(
                    Radius.circular((20 / Dimensions.designHeight).h),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    top: (15 / Dimensions.designHeight).h,
                  ),
                  child: ClipRect(
                    child: Column(
                      children: [
                        ClipRect(
                          child: Container(
                            height: (70 / Dimensions.designWidth).w,
                            width: (70 / Dimensions.designWidth).w,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(users.image!)),
                              border: Border.all(),
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  (100 / Dimensions.designHeight).h,
                                ),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: (40 / Dimensions.designWidth).w),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    height: (15 / Dimensions.designWidth).w,
                                    width: (15 / Dimensions.designWidth).w,
                                    decoration: BoxDecoration(
                                      color: users.isOnline == true
                                          ? Colors.green
                                          : Colors.red,
                                      border: Border.all(),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(
                                            (100 / Dimensions.designHeight).h),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: (10 / Dimensions.designHeight).h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: (5 / Dimensions.designWidth).w,
                              right: (5 / Dimensions.designWidth).w),
                          child: Container(
                            height: (40 / Dimensions.designHeight).h,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade400,
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                    (10 / Dimensions.designWidth).w),
                              ),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  users.name!,
                                  style: TextStyle(
                                      fontSize:
                                          (12 / Dimensions.designHeight).h,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '${users.name!}@${users.id!}',
                                  style: TextStyle(
                                      fontSize:
                                          (10 / Dimensions.designHeight).h),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: (10 / Dimensions.designHeight).h,
                        ),
                        Text(
                          users.region! + users.mobile.toString(),
                          style: TextStyle(
                              fontSize: (12 / Dimensions.designHeight).h,
                              color: Colors.grey),
                        ),
                        Text(
                          users.zone!,
                          style: TextStyle(
                              fontSize: (12 / Dimensions.designHeight).h,
                              color: Colors.grey),
                        ),
                        SizedBox(
                          height: (30 / Dimensions.designHeight).h,
                        ),
                        Container(
                          height: (20 / Dimensions.designHeight).h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: users.isOnline == true
                                ? Colors.green
                                : Colors.red,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(
                                  (20 / Dimensions.designHeight).h),
                              bottomRight: Radius.circular(
                                  (20 / Dimensions.designHeight).h),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
