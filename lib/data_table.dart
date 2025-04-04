import 'package:flutter/material.dart';

class Datatable extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("DATA TABLE"), centerTitle: true),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          border: TableBorder.all(color: Colors.black),
          columns: [
            DataColumn(label: Text("dealer")),
            DataColumn(label: Text("ID")),
            DataColumn(label: Text("Name")),
            DataColumn(label: Text("freight")),
            DataColumn(label: Text("Shipped Date")),
          ],
          rows: [
            DataRow(
              cells: [
                DataCell(
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/indianFlag.png"),
                  ),
                ),
                DataCell(Text("1100")),
                DataCell(Text("Betts")),
                DataCell(Text("Rs.673.60")),
                DataCell(Text("11/11/2024")),
              ],
            ),
            DataRow(
              cells: [
                DataCell(
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/indianFlag.png"),
                  ),
                ),
                DataCell(Text("1101")),
                DataCell(Text("Adams")),
                DataCell(Text("Rs.617.90")),
                DataCell(Text("6/16/2024")),
              ],
            ),
            DataRow(
              cells: [
                DataCell(
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/indianFlag.png"),
                  ),
                ),
                DataCell(Text("1102")),
                DataCell(Text("Crowley")),
                DataCell(Text("Rs.309.25")),
                DataCell(Text("3/8/2024")),
              ],
            ),
            DataRow(
              cells: [
                DataCell(
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/indianFlag.png"),
                  ),
                ),
                DataCell(Text("1103")),
                DataCell(Text("Stark")),
                DataCell(Text("Rs.22.03")),
                DataCell(Text("8/27/2024")),
              ],
            ),
            DataRow(
              cells: [
                DataCell(
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/indianFlag.png"),
                  ),
                ),
                DataCell(Text("1104")),
                DataCell(Text("keefe")),
                DataCell(Text("Rs.915.71")),
                DataCell(Text("11/11/2024")),
              ],
            ),
            DataRow(
              cells: [
                DataCell(
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/indianFlag.png"),
                  ),
                ),
                DataCell(Text("1105")),
                DataCell(Text("doran")),
                DataCell(Text("Rs.889.06")),
                DataCell(Text("6/16/2024")),
              ],
            ),
            DataRow(
              cells: [
                DataCell(
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/indianFlag.png"),
                  ),
                ),
                DataCell(Text("1106")),
                DataCell(Text("Newberry")),
                DataCell(Text("Rs.196.34")),
                DataCell(Text("8/27/2024")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
