import 'package:flutter/Material.dart';
import 'package:project/constants/AppBar_constant.dart';
import 'empDrawerItems.dart';

class EmpDrawerItem {
  final String title;
  final IconData icon;
  final TextStyle titleStyle; // Add a TextStyle property for text style

  const EmpDrawerItem({
    required this.title,
    required this.icon,
    this.titleStyle = AppBarStyles.appBarTextStyle, // Provide a default TextStyle
  });
}


class EmpDrawer extends StatelessWidget {
  final ValueChanged<EmpDrawerItem> onSelectedItems;

  const EmpDrawer({super.key, required this.onSelectedItems});

  @override
  Widget build(BuildContext context) {
    return Container(

      child: SingleChildScrollView(
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 25),
              child: buildDrawerItems(context),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDrawerItems(BuildContext context) => Column(
        children: EmpDrawerItems.all
            .map(
              (item) => ListTile(
                contentPadding: EdgeInsets.fromLTRB(
                    0, MediaQuery.of(context).size.height / 22.5, 0, 0),
                leading: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 20, 0), // Adjust the padding as needed
                  child: Icon(item.icon, color: Colors.black87),
                ),
                title: Text(
                  item.title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () => onSelectedItems(item),
              ),
            )
            .toList(),
      );
}
