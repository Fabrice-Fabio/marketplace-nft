import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hentx/presentation/screens/screens.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class NftCard extends StatelessWidget {
  final String image;
  const NftCard({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.white,
        elevation: 7,
        shadowColor: Colors.white60,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: InkWell(
            child: Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: double.infinity,
                  child: CachedNetworkImage(
                    imageUrl: image,
                    fit: BoxFit.cover,
                    placeholder: (context, url) => const CircularProgressIndicator(color: Colors.red,),
                    errorWidget: (context, url, error) => const Icon(Icons.error, color: Colors.red,size: 50,),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: double.infinity,
                    height: 35,
                    color: Colors.white54,
                    child: const Icon(MdiIcons.accountDetails),
                  ),
                ),
              ],
            ),
            onTap: (){
              debugPrint("Test");
              Navigator.of(context).push(
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>  NftDetailsPage(image: image),
                    transitionsBuilder: (context, animation, secondaryAnimation, child) {
                      const begin = Offset(-1, -0.5);
                      const end = Offset.zero;
                      final tween = Tween(begin: begin, end: end);
                      final offsetAnimation = animation.drive(tween);

                      return SlideTransition(
                        position: offsetAnimation,
                        child: child,
                      );
                    },
                  ),
              );
            },
          ),
        ),
      );
  }
}
