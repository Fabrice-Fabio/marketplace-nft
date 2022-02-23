import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swipable/flutter_swipable.dart';

class TinderCard extends StatelessWidget {
  final image;

  const TinderCard({Key? key, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Swipable(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50.0),
        child: Stack(
          children: [
            CachedNetworkImage(
              imageUrl: image,
              height: 400,
              width: double.infinity,
              fit: BoxFit.cover,
              placeholder: (context, url) => const CircularProgressIndicator(color: Colors.red,),
              errorWidget: (context, url, error) => const Icon(Icons.error, color: Colors.red,size: 50,),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.white.withOpacity(0.9),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text("F. SUMSA #999",style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),),
                    Text("14.28 ETH",style: TextStyle(fontSize: 18, color: Colors.red, fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      onSwipeLeft: (finalPosition){
        debugPrint("Swipe Left");
      },
      onSwipeRight: (finalPosition){
        debugPrint("Swipe Right");
      },
    );
  }
}
