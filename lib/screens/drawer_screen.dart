import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Name"),
            accountEmail: Text("email@ui.ac.id"),
          ),
          DrawerListTile(
            iconData: Icons.home,
            title: "Home",
            onTilePressed: () {

            },
          ),
          DrawerListTile(
            iconData : Icons.article,
            title: "Agenda",
            onTilePressed: () {

            },
          ),
          DrawerListTile(
            iconData: Icons.question_answer,
            title: "Ask A Mentor",
            onTilePressed: () {

            },
          ),
          DrawerListTile(
            iconData: Icons.pending_actions,
            title: "Jadwal Belajar Bareng",
            onTilePressed: () {

            },
          ),
          DrawerListTile(
            iconData: Icons.sticky_note_2,
            title: "Notes",
            onTilePressed: () {

            },
          ),
          DrawerListTile(
            iconData: Icons.today,
            title: "Schedule Kuliah",
            onTilePressed: () {

            },
          ),
          DrawerListTile(
            iconData: Icons.supervisor_account,
            title: "Study Communities",
            onTilePressed: () {

            },
          ),
          DrawerListTile(
            iconData: Icons.perm_media,
            title: "Video Playlist",
            onTilePressed: () {

            },
          ),
          DrawerListTile(
            iconData: Icons.feedback,
            title: "Saran",
            onTilePressed: () {

            },
          ),
          DrawerListTile(
            iconData: Icons.logout,
            title: "Log Out",
            onTilePressed: () {

            },
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final IconData iconData ;
  final String title;
  final VoidCallback onTilePressed;
  const DrawerListTile({Key? key, required this.iconData, required this.title, required this.onTilePressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTilePressed,
      dense: true,
      leading: Icon(iconData),
      title: Text(title, style: TextStyle(fontSize: 16),),
    );
  }
}