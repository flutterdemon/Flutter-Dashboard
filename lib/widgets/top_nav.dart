import 'package:flutter/material.dart';
import 'package:webapp/constants/styles.dart';
import '../helpers/responsiveness.dart';
import './custom_text.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) {
  return AppBar(
    leading: Responsiveness.isSmallScreen(context)
        ? IconButton(
            onPressed: (() {
              key.currentState.openDrawer();
            }),
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ))
        : Row(
            children: [
              Container(
                width: 35,
                height: 35,
                padding: const EdgeInsets.only(left: 14),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('/icons/logo.png'), fit: BoxFit.fill),
                ),
              )
            ],
          ),
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: Row(
      children: [
        Visibility(
            child: CustomText(
          color: lightGrey,
          size: 20,
          text: "Dashboard",
          weight: FontWeight.bold,
        )),
        Expanded(child: Container()),
        IconButton(
          onPressed: (() {}),
          icon: Icon(
            Icons.settings,
            color: dark.withOpacity(.7),
          ),
        ),
        Stack(
          children: [
            IconButton(
              onPressed: (() {}),
              icon: Icon(
                Icons.notifications,
                color: dark.withOpacity(.7),
              ),
            ),
            Positioned(
                top: 7,
                right: 7,
                child: Container(
                  width: 14,
                  height: 14,
                  padding: const EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: light, width: 2),
                    color: active,
                    borderRadius: BorderRadius.circular(30),
                  ),
                ))
          ],
        ),
        Container(
          height: 22,
          width: 1,
          color: lightGrey,
        ),
        const SizedBox(
          width: 24,
        ),
        CustomText(
          text: "Bryan Kiprop",
          color: lightGrey,
        ),
        const SizedBox(
          width: 16,
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(30)),
          child: Container(
            padding: EdgeInsets.all(2.0),
            margin: EdgeInsets.all(2.0),
            child: CircleAvatar(
                backgroundColor: light,
                child: Icon(
                  Icons.person_outline,
                  color: dark,
                )),
          ),
        )
      ],
    ),
    iconTheme: IconThemeData(
      color: dark,
    ),
  );
}
