import 'package:fcui_facebook_2020/misc/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: greyDark,
        body: Column(
          children: [
            Container(
              color: whiteColor,
              child: Column(
                children: [
                  bannerSatu(context),
                  bannerDua(),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // status Your Mind
                    statusYourMind(),

                    // Stories
                    Container(
                      color: whiteColor,
                      child: Column(
                        children: [
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                userStory(),
                                userStory(),
                                userStory(),
                                userStory(),
                              ],
                            ),
                          ),
                          buttonMore(),
                        ],
                      ),
                    ),
                    Container(
                      color: whiteColor,
                      // Feed
                      child: ListTile(
                        leading: Container(
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: greyLight,
                            shape: BoxShape.circle,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(40.0),
                            child: Image.asset(
                              "./assets/images/profile_01.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        title: Text("Siti Fatimah",
                            style: h3.copyWith(
                              fontWeight: FontWeight.w700,
                            )),
                        // subtitle: Row(
                        //   mainAxisAlignment: MainAxisAlignment.start,
                        //   children: [
                        //     Text("5 minutes", style: h4),
                        //     SizedBox(width: 3.0),
                        //     Text("."),
                        //     SizedBox(width: 3.0),
                        //     SvgPicture.asset(
                        //       iconGlobe,
                        //       width: 14.0,
                        //       color: greyDark,
                        //     )
                        //   ],
                        // ),
                        // trailing: Align(
                        //   alignment: Alignment.topRight,
                        //   child: Icon(Icons.more_horiz),
                        // ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container userStory() {
    return Container(
      height: 200.0,
      child: AspectRatio(
        aspectRatio: 1.5 / 2,
        child: Container(
          margin: EdgeInsets.only(left: 8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage("./assets/images/feed-image-01.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(begin: Alignment.bottomCenter, colors: [
                blackColor.withOpacity(.8),
                blackColor.withOpacity(.4),
              ]),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10.0, left: 10.0),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: primaryColor,
                        width: 3.0,
                      ),
                      image: DecorationImage(
                        image: AssetImage("./assets/images/profile_01.jpg"),
                        fit: BoxFit.cover,
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10.0, left: 10.0),
                  child: Text(
                    "Siti Fatimah",
                    style: h4.copyWith(
                      color: whiteColor,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row buttonMore() {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: RaisedButton(
              onPressed: () {},
              color: blueLight,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6.0),
              ),
              child: Text(
                "Show More",
                style: h3.copyWith(
                  color: blueDark,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Container statusYourMind() {
    return Container(
      color: whiteColor,
      child: Padding(
        padding: const EdgeInsets.only(top: 4, bottom: 4, left: 8, right: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 40.0,
              decoration: BoxDecoration(
                color: greyLight,
                shape: BoxShape.circle,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40.0),
                child: Image.asset(
                  "./assets/images/profile_01.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 10.0),
            Expanded(
              child: OutlineButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                color: whiteColor,
                onPressed: () {},
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "What's on your mind?",
                    style: h4,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Padding bannerDua() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: 2,
        top: 2,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          tapBarmenu(icon: iconHomeDark, colorC: primaryColor),
          tapBarmenu(icon: iconVideo),
          tapBarmenu(icon: iconAccount),
          tapBarmenu(icon: iconNotification),
          tapBarmenu(icon: iconMenu),
        ],
      ),
    );
  }

  Padding bannerSatu(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            logoFacebook,
            color: primaryColor,
            width: MediaQuery.of(context).size.width / 3.5,
          ),
          Row(
            children: [
              iconTop(
                  iconCus: iconSearch,
                  functionCus: () {
                    print("iconSearch");
                  }),
              SizedBox(width: 10.0),
              iconTop(
                  iconCus: iconMessenger,
                  functionCus: () {
                    print("iconMessenger");
                  }),
            ],
          ),
        ],
      ),
    );
  }

  IconButton tapBarmenu({String icon, Color colorC}) {
    return IconButton(
        icon: SvgPicture.asset(
          icon,
          color: colorC,
          width: 24,
        ),
        onPressed: () {});
  }

  InkWell iconTop({String iconCus, Function functionCus}) {
    return InkWell(
      onTap: functionCus,
      child: Container(
        height: 30.0,
        decoration: BoxDecoration(
          color: greyLight,
          shape: BoxShape.circle,
        ),
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: SvgPicture.asset(
            iconCus,
            width: 20.0,
          ),
        ),
      ),
    );
  }
}
