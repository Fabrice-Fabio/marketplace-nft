import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hentx/presentation/screens/screens.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class NftDetailsPage extends StatelessWidget {
  final String image;
  const NftDetailsPage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        backgroundColor: Colors.transparent,
        title: const Text("NFT details", style: TextStyle(fontWeight: FontWeight.w700,fontSize: 25),),
        actions: const [
          //Icon(MdiIcons.closeCircleOutline,size: 30, color: Colors.white70,)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                height: 550,
                width: 450,
                margin: const EdgeInsets.only(top: 10),
                child: Stack(
                  children: [
                    Card(
                      color: Colors.white,
                      elevation: 7,
                      shadowColor: Colors.white60,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: CachedNetworkImage(imageUrl: image,fit: BoxFit.cover,height: 500,)
                      ),
                    ),
                    Positioned(
                      bottom: -5,
                      left: 0,
                      right: 0,
                      child: SizedBox(
                        width: 10,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.red, // background
                            onPrimary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            elevation: 10 // foreground
                          ),
                          child: const Text('Buy', style: TextStyle(fontSize: 20),),
                          onPressed: () {
                            debugPrint('Pressed');
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                NftDetailCard(title: "Value",subtitle: "12.24 ETH", icon: MdiIcons.cash,),
                NftDetailCard(title: "Owner",subtitle: "0x716...976F", icon: MdiIcons.account,),
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                NftDetailCard(title: "Rarity",subtitle: "5/100", icon: MdiIcons.alphaRCircleOutline,),
                NftDetailCard(title: "Desc.",subtitle: "Best nft mockup i ever seen", icon: MdiIcons.applicationEdit,),
              ],
            ),
          ],
        ),
      )
    );
  }
}
