import 'package:flutter/material.dart';

class NftDetailCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final Color iconColor;

  const NftDetailCard({Key? key, required this.title, required this.subtitle, required this.icon, this.iconColor = Colors.white}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      width: 200,
      child: Card(
        color: iconColor,
        elevation: 7,
        shadowColor: Colors.white60,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: ListTile(
          title: Row(
            children: [
              Icon(
                  icon,
                  color: Colors.black45,
                  size: 25
              ),
              const SizedBox(width: 15,),
              Text(
                title,
                style: const TextStyle(fontSize: 15, color: Colors.black54),
              ),
            ],
          ),
          subtitle: Text(subtitle,style: const TextStyle(fontSize: 18, color: Colors.black),),
        ),
      ),
    );
  }
}
