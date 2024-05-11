import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.blue,
        backgroundColor: Colors.cyan,
        foregroundColor: Colors.white,
        title: const Center(child: Text("Home Page")),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text("Sulav Karki"),
              accountEmail: Text("iamSulav@gmail.com"),
            ),
            ListTile(
              title: Text(
                "Purchase",
                style: GoogleFonts.lato(
                  textStyle:
                      const TextStyle(color: Colors.blue, letterSpacing: .5),
                ),
              ),
              subtitle: const Text("Purchase Item"),
              leading: const Icon(Icons.shop),
              onTap: () {
                if (kDebugMode) {
                  print("Purchase pressed");
                }
              },
            ),
            ListTile(
              title: Text(
                "Sales",
                style: GoogleFonts.lato(
                  textStyle:
                      const TextStyle(color: Colors.red, letterSpacing: .5),
                ),
              ),
              subtitle: const Text("Sales Item"),
              leading: const Icon(Icons.accessible_forward_outlined),
              onTap: () {
                if (kDebugMode) {
                  print("Sales pressed");
                }
              },
            ),
            ListTile(
              title: const Text("Report"),
              subtitle: const Text("Purchase Item"),
              leading: const Icon(Icons.report_rounded),
              onTap: () {
                if (kDebugMode) {
                  print("Purchase pressed");
                }
              },
            ),
            ListTile(
              title: const Text("Users"),
              subtitle: const Text("About users"),
              leading: const Icon(Icons.supervised_user_circle_rounded),
              onTap: () {
                if (kDebugMode) {
                  print("User pressed");
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
