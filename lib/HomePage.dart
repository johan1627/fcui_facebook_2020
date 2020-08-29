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
                  underLineActive(context),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // status Your Mind
                    statusYourMind(),
                    SizedBox(height: .5),
                    // Icon Tap Posting
                    Container(
                      color: whiteColor,
                      height: 40.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          iconTappost(text: "Live", icon: iconLive),
                          iconTappost(text: "Photo", icon: iconPhoto),
                          iconTappost(text: "Room", icon: iconRoom),
                        ],
                      ),
                    ),
                    SizedBox(height: 8.0),

                    // Create Room
                    Container(
                      color: whiteColor,
                      height: 50.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          photoProfile(photo: "assets/images/profile_01.jpg"),
                          photoProfile(photo: "assets/images/profile_02.jpg"),
                          photoProfile(photo: "assets/images/profile_03.jpg"),
                          photoProfile(photo: "assets/images/profile_04.jpg"),
                        ],
                      ),
                    ),
                    SizedBox(height: 8.0),

                    // Stories
                    Container(
                      color: whiteColor,
                      child: Column(
                        children: [
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                userStory(
                                  storyName: "Siti Fatimah",
                                  storyPhoto: "assets/images/profile_01.jpg",
                                  storyImage: "assets/images/feed-image-01.jpg",
                                ),
                                userStory(
                                  storyName: "Latifah",
                                  storyPhoto: "assets/images/profile_02.jpg",
                                  storyImage: "assets/images/feed-image-02.jpg",
                                ),
                                userStory(
                                  storyName: "Muhammad Khadafi",
                                  storyPhoto: "assets/images/profile_03.jpg",
                                  storyImage: "assets/images/feed-image-03.jpg",
                                ),
                                userStory(
                                  storyName: "Safeeya",
                                  storyPhoto: "assets/images/profile_04.jpg",
                                  storyImage: "assets/images/feed-image-04.jpg",
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10.0),
                          // buttonMore(),
                        ],
                      ),
                    ),
                    SizedBox(height: 8.0),
                    feedItem(
                      feedPhoto: "assets/images/profile_03.jpg",
                      feedName: "Muhammad Khadafi",
                      feedText:
                          "The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from de Finibus Bonorum et Malorum by Cicero are also reproduced in their exact original form, accompanied by English",
                      feedImage: "assets/images/feed-image-03.jpg",
                    ),
                    SizedBox(height: 8.0),
                    feedItem(
                      feedPhoto: "assets/images/profile_02.jpg",
                      feedName: "Latifah",
                      feedText:
                          "All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structurese",
                      feedImage: "assets/images/feed-image-02.jpg",
                    ),
                    SizedBox(height: 8.0),
                    feedItem(
                      feedPhoto: "assets/images/profile_01.jpg",
                      feedName: "Siti Fatimah",
                      feedText:
                          "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum",
                      feedImage: "assets/images/feed-image-01.jpg",
                    ),
                    SizedBox(height: 8.0),
                    feedItem(
                      feedPhoto: "assets/images/profile_04.jpg",
                      feedName: "Safeeya Anggraini",
                      feedText:
                          "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia",
                      feedImage: "assets/images/feed-image-04.jpg",
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

  Expanded iconTappost({String text, String icon}) {
    return Expanded(
      child: MaterialButton(
        highlightElevation: 0,
        onPressed: () {},
        color: whiteColor,
        elevation: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(icon, width: 14.0),
            SizedBox(width: 5.0),
            Text(text, style: footFont),
          ],
        ),
      ),
    );
  }

  Container feedItem(
      {String feedPhoto, String feedName, String feedText, String feedImage}) {
    return Container(
      color: whiteColor,
      // Feed Profile
      child: Column(
        children: [
          ListTile(
            leading: Container(
              height: 40.0,
              decoration: BoxDecoration(
                color: greyLight,
                shape: BoxShape.circle,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40.0),
                child: Image.asset(feedPhoto, fit: BoxFit.cover),
              ),
            ),
            title:
                Text(feedName, style: h3.copyWith(fontWeight: FontWeight.w700)),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("5 minutes", style: h4),
                SizedBox(width: 3.0),
                Text("."),
                SizedBox(width: 3.0),
                SvgPicture.asset(
                  iconGlobe,
                  width: 14.0,
                  color: greyDark,
                )
              ],
            ),
            trailing: Column(
              children: [
                Icon(Icons.more_horiz),
              ],
            ),
          ),
          // Feed Text
          Padding(
            padding:
                const EdgeInsets.only(bottom: 8.0, right: 16.0, left: 16.0),
            child: Text(
              feedText,
              style: h3.copyWith(height: 1.3),
              maxLines: 3,
            ),
          ),
          // Feed Image
          Image.asset(feedImage, fit: BoxFit.fill),
          SizedBox(height: 10.0)
        ],
      ),
    );
  }

  Align underLineActive(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        width: MediaQuery.of(context).size.width / 5,
        height: 5.0,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 3.0, color: primaryColor),
          ),
        ),
      ),
    );
  }

  Container userStory(
      {String storyImage, String storyPhoto, String storyName}) {
    return Container(
      height: 210.0,
      child: AspectRatio(
        aspectRatio: 1.3 / 2,
        child: Container(
          margin: EdgeInsets.only(left: 8.0, top: 8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage(storyImage),
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
                      border: Border.all(color: primaryColor, width: 3.0),
                      image: DecorationImage(
                        image: AssetImage(storyPhoto),
                        fit: BoxFit.cover,
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10.0, left: 10.0),
                  child: Text(storyName, style: h4.copyWith(color: whiteColor)),
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
              child: Text("Show More", style: h3.copyWith(color: blueDark)),
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
            photoProfile(photo: "assets/images/profile_01.jpg"),
            SizedBox(width: 10.0),
            Expanded(
              child: OutlineButton(
                highlightedBorderColor: greyDark,
                highlightColor: greyLight,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                color: whiteColor,
                onPressed: () {},
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("What's on your mind?", style: h4),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Container photoProfile({String photo}) {
    return Container(
      height: 40.0,
      decoration: BoxDecoration(
        color: greyLight,
        shape: BoxShape.circle,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40.0),
        child: Image.asset(
          photo,
          fit: BoxFit.cover,
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
          child: SvgPicture.asset(iconCus, width: 20.0),
        ),
      ),
    );
  }
}
