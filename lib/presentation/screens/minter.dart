import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hentx/models/Transaction.dart';
import 'package:hentx/presentation/screens/screens.dart';

class Minter extends StatefulWidget {
  const Minter({Key? key}) : super(key: key);

  @override
  State<Minter> createState() => _MinterState();
}

class _MinterState extends State<Minter> {
  final nftUrlController = TextEditingController();
  final nftNameController = TextEditingController();
  final nftAdrController = TextEditingController();

  final List<Transaction> transactions = [];

  @override
  void dispose() {
    // TODO: implement dispose
    //Hive.box("transactions").close();
    super.dispose();
  }

  mint(String url, String name, String address){
    debugPrint("url : $url");
    Transaction nft = Transaction(nftUrl: url, nftName: name, nftAdr: address);
    /*Box<Transaction> transaction = Hive.box('transactions');
    transaction.add(nft); // stock in box
    transactions.add(nft); // stock in list
     */
  }

  @override
  Widget build(BuildContext context) {
    String profilImg = "https://lh3.googleusercontent.com/UoTDQtvphoGOZ_DogT9tRZdOpFLhEBgKtWBQatENLi_7QJ6NmPT2BmwBp-7rP4S4RerAvkkSN-GOacwNA9pPNPhanBkL0_RmOABNlQ=w1400-k";

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text('Minte your Nft'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 70,
                    width: 70,
                    child: ClipOval(
                      child: CachedNetworkImage(
                          imageUrl: profilImg,
                          fit: BoxFit.cover
                      ),
                    ),
                  ),
                  OutlinedButton(
                    child: const Text("Follow"),
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      side: const BorderSide(width: 2, color: Colors.blue),
                      backgroundColor: Colors.black26
                    ),
                    onPressed: (){debugPrint("Follow");},
                  )
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                children: const [
                   Text("F. SUMSA ", style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18),),
                   Icon(Icons.check_circle, color: Colors.blue,)
                ],
              ),
              const SizedBox(height: 20,),
              Container(
                height: 120,
                width: double.infinity,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: const Text("Flutter Developer 💙 \nFullstack Developer (NodeJs/ReactJs) 💚 \nBlockchain Enthousiast | Web3 💛",
                  style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Colors.white),),
              ),
              const SizedBox(height: 20,),
              Container(
                height: 300,
                width: double.infinity,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InputCustom(
                      width: double.infinity,
                      showText: false,
                      placeholder: "Nft url : https://image.url",
                      borderRaduis: 10,
                      backgroundColor: Colors.white,
                      keyboardType: TextInputType.text,
                      controller: nftUrlController,
                      // borderColor: Colors.grey[400],
                    ),
                    InputCustom(
                      width: double.infinity,
                      showText: false,
                      placeholder: "Nft name",
                      borderRaduis: 10,
                      backgroundColor: Colors.white,
                      keyboardType: TextInputType.text,
                      controller: nftNameController,
                    ),
                    InputCustom(
                      width: double.infinity,
                      showText: false,
                      placeholder: "0xa5f7...87ad4",
                      borderRaduis: 10,
                      backgroundColor: Colors.white,
                      keyboardType: TextInputType.text,
                      controller: nftAdrController,
                    ),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: ElevatedButton(
                          child: const Text(
                              "Mint",
                              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)
                          ),
                          style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      side: const BorderSide(color: Colors.red)
                                  )
                              )
                          ),
                          onPressed: () => mint(nftUrlController.text,nftNameController.text,nftAdrController.text)
                      ),
                    )
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
