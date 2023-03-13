import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:go_router/go_router.dart';
import '../models/models.dart';
import '../colors/colors.dart';
import '../widgets/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final tabs = <String>['root', 'messages', 'users'];
  int selectedIndex = 0;
  void switchTab(int i) {
    setState((){
      selectedIndex = i;
    });
    context.pushNamed(tabs[i]);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text("Moments", style: GoogleFonts.lato(
          color: darkColor,
          fontWeight: FontWeight.w900,
          fontSize: 22.0
        ),),
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: BottomBar(selectedIndex: selectedIndex, switchTab: switchTab,),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 60.0,
              child: Row(
                children: [
                  Container(
                    width: 60.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: blueColor.withOpacity(0.4),
                    ),
                    child: Icon(Icons.add, color: blueColor, size: 30.0,),
                  ),
                  SizedBox(width: 16.0,),
                  Expanded(
                    child: ListView.separated(
                      itemCount: contacts.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int i) => Container(
                        width: 60.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            color: blueColor.withOpacity(0.5),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(contacts[i].image,)
                          )
                        ),
                      ),
                      separatorBuilder: (BuildContext context, int i) =>
                          SizedBox(width: 16.0,),
                    ),
                  ),
                ],
              )
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Latest blogs", style: GoogleFonts.lato(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w900,
                    color: darkGreyColor
                  ),),
                  Icon(Icons.settings, color: blueColor.withOpacity(0.8), size: 30.0,)
                ],
              ),
            ),
            Expanded(
              child: ListView.separated(
                itemCount: posts.length,
                itemBuilder: (BuildContext context, int i) => PostCard(post: posts[i],),
                separatorBuilder: (BuildContext context, int i) => SizedBox(height: 20.0,),
              ),
            )
          ],
        ),
      ),
    );
  }
}
