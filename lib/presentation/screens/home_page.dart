import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hentx/presentation/widgets/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> welcomeImages = [
    "https://lh3.googleusercontent.com/UoTDQtvphoGOZ_DogT9tRZdOpFLhEBgKtWBQatENLi_7QJ6NmPT2BmwBp-7rP4S4RerAvkkSN-GOacwNA9pPNPhanBkL0_RmOABNlQ=w1400-k",
    "https://cdn.gettotext.com/wp-content/uploads/2021/12/Crypto-currencies-and-NFT-to-go-beyond-preconceived-ideas.jpg",
    "https://i0.wp.com/thefrontierpost.com/wp-content/uploads/2021/09/13-7.jpg?fit=1110%2C624&ssl=1",
    "https://www.arweave.net/LrazKSnUEvI5Cub1WcQslQarJL9ofSzhXf4iGAbyPYw?ext=png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        backgroundColor: Colors.transparent,
        title: SizedBox(
          height: 50,
          width: 50,
          child: ClipOval(
            child: CachedNetworkImage(
                imageUrl:  welcomeImages[0],
                fit: BoxFit.cover
            ),
          ),
        ),
        actions: const [
           Icon(MdiIcons.bellBadgeOutline,size: 30, color: Colors.white,),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: 150,
                      child: ElevatedButton(
                          child: const Text(
                              "Monkeys",
                              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)
                          ),
                          style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      side: const BorderSide(color: Colors.red)
                                  )
                              )
                          ),
                          onPressed: () => {}
                      ),
                    ),
                    const SizedBox(width: 10,),
                    SizedBox(
                      width: 150,
                      child: ElevatedButton(
                          child: const Text(
                              "Lions",
                              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)
                          ),
                          style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      side: const BorderSide(color: Colors.red)
                                  )
                              )
                          ),
                          onPressed: () => {}
                      ),
                    ),
                    const SizedBox(width: 10,),
                    SizedBox(
                      width: 150,
                      child: ElevatedButton(
                          child: const Text(
                              "Cats",
                              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)
                          ),
                          style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      side: const BorderSide(color: Colors.red)
                                  )
                              )
                          ),
                          onPressed: () => {}
                      ),
                    ),
                    const SizedBox(width: 10,),
                    SizedBox(
                      width: 150,
                      child: ElevatedButton(
                          child: const Text(
                              "Dogs",
                              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)
                          ),
                          style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      side: const BorderSide(color: Colors.red)
                                  )
                              )
                          ),
                          onPressed: () => {}
                      ),
                    ),
                  ],
                ),
              ),
              const Text("Hot item 🔥", style: TextStyle(fontWeight: FontWeight.w700,fontSize: 25),),
              SizedBox(height: 20,),
              Center(
                child: Container(
                  //MediaQuery.of(context).size.width
                  height: 400,
                  width: 350,
                  child: Stack(
                    children: [
                      for (var i = 0; i < welcomeImages.length; i++)
                        TinderCard(image: welcomeImages[i],),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Text("Best Artist", style: TextStyle(fontWeight: FontWeight.w700,fontSize: 25),),
              Column(
                children: [
                  for (var i = 0; i < welcomeImages.length; i++)
                    Card(
                    color: Colors.white,
                    elevation: 7,
                    shadowColor: Colors.white60,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ListTile(
                      leading: SizedBox(
                        height: 50,
                        width: 50,
                        child: ClipOval(
                          child: CachedNetworkImage(
                              imageUrl:  welcomeImages[i],
                              fit: BoxFit.cover,
                              placeholder: (context, url) => const CircularProgressIndicator(color: Colors.red,),
                              errorWidget: (context, url, error) => const Icon(Icons.error, color: Colors.red,size: 50,),
                          ),
                        ),
                      ),
                      title: Text("Fabrice SUMSA",style: const TextStyle(fontSize: 18, color: Colors.black),),
                      subtitle: Text("40k followers",style: const TextStyle(fontSize: 18, color: Colors.black45),),
                      trailing: Icon(Icons.arrow_forward_ios_rounded),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
