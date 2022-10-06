import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconListTile extends StatelessWidget {
  final String iconImagePath;
  final String tileName;
  final String tileSubname;

  const IconListTile({Key? key, required this.iconImagePath, required this.tileName, required this.tileSubname}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 80,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(12)
                ),
                child: Image.asset(iconImagePath),
              ),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(tileName, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                  SizedBox(height: 8),
                  Text(tileSubname, style: TextStyle(fontSize: 16, color: Colors.grey[600])),
                ],
              ),
            ],
          ),
          Icon(Icons.arrow_forward_ios)
        ],
      ),
    );
  }
}
