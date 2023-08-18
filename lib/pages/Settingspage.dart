import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            "Settings",
            //style: TextStyle(fontSize: 20),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset(
                        "images/Profile1.jpg",
                        height: 65,
                        width: 65,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Saad",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Hey there, I am using WhatsApp.",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black45,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              const ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.key),
                ),
                title: Text(
                  "Accounts",
                  style: TextStyle(fontSize: 17),
                ),
                subtitle: Text(
                  "Privacy, security, change number",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              const ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.message),
                ),
                title: Text(
                  "Chats",
                  style: TextStyle(fontSize: 17),
                ),
                subtitle: Text(
                  "Theme, Wallpaper, Chat History",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              const ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.notifications),
                ),
                title: Text(
                  "Notifications",
                  style: TextStyle(fontSize: 17),
                ),
                subtitle: Text(
                  "Message, Group & Call tones",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              const ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.circle_outlined),
                ),
                title: Text(
                  "Storage and Data",
                  style: TextStyle(fontSize: 17),
                ),
                subtitle: Text(
                  "Network usage, auto-download",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              const ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.help_outline_outlined),
                ),
                title: Text(
                  "Help",
                  style: TextStyle(fontSize: 17),
                ),
                subtitle: Text(
                  "Help centre, contact us, privacy policy",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              const ListTile(
                leading: Padding(
                    padding: EdgeInsets.only(top: 6),
                    child: Icon(Icons.people_alt)),
                title: Text(
                  "Invite a Friend",
                  style: TextStyle(fontSize: 17),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 60),
                child: Column(
                  children: [
                    Text(
                      "From",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "From",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "Facebook",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
