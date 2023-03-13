import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:go_router/go_router.dart';
import '../widgets/widgets.dart';
import '../colors/colors.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  int selectedIndex = 1;
  bool popBox = false;
  void onBoxPop() {
    setState(() {
      popBox = !popBox;
    });
  }

  final tabs = <String>['root', 'messages', 'users'];
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
        backgroundColor: whiteColor,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Messages", style: GoogleFonts.lato(
                fontSize: 24.0,
                color: darkColor,
                fontWeight: FontWeight.w900,
            ) ,),
            Icon(Icons.arrow_drop_down, color: darkColor,)
          ],
        ),
        actions: <Widget>[
          Icon(Icons.search, color: darkColor,),
          SizedBox(width: 16.0,)
        ],
      ),
      bottomNavigationBar: BottomBar(selectedIndex: selectedIndex, switchTab: switchTab,),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PinnedChat(),
                    SizedBox(height: 30.0,),
                    Text("Other", style: GoogleFonts.lato(
                        fontSize: 18.0,
                        color: lightGreyColor,
                        fontWeight: FontWeight.w900
                    ),),
                    SizedBox(height: 8.0,),
                    MessageList(),
                  ],
                ),
                CustomFab(onBoxPop: onBoxPop,),
               PopUpCard(popBox: popBox, onBoxPop: onBoxPop,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
