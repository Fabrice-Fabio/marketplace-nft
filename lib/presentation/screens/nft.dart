import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:hentx/presentation/widgets/widgets.dart';

class Nft extends StatelessWidget {

  List<String> imageList = [
    'https://www.arweave.net/LrazKSnUEvI5Cub1WcQslQarJL9ofSzhXf4iGAbyPYw?ext=png',
    'https://i0.wp.com/thefrontierpost.com/wp-content/uploads/2021/09/13-7.jpg?fit=1110%2C624&ssl=1',
    'https://cdn.gettotext.com/wp-content/uploads/2021/12/Crypto-currencies-and-NFT-to-go-beyond-preconceived-ideas.jpg',
    'https://img-0.journaldunet.com/aFsP7JeW1fmd8KkEJRBPhMD2M40=/1500x/smart/161d4ea0c9c9438daf532f5cb4865176/ccmcms-jdn/24478549.png',
    'https://nftcalendar.io/storage/uploads/events/2021/10/aPtsj2vmsKJeQY1RcFYroWPXRZoueFKf6D9Bg1bA.png',
    'https://s.yimg.com/ny/api/res/1.2/9sjeN7JyZEoGUEzVOqZVKw--/YXBwaWQ9aGlnaGxhbmRlcjt3PTY0MA--/https://s.yimg.com/os/creatr-uploaded-images/2021-09/83d855e0-117d-11ec-a9ee-e2990bea689a',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxp9qS-5zkZEmRuxdrEFZ0BSM5E27_OSbxt2eRuIlbFuKQ36JnIofDXpElVwh88w3DO9k&usqp=CAU',
    'https://img.cdn-pictorem.com/uploads/sublim/3/sublim3_428122.jpg',
    'https://manofmany.com/wp-content/uploads/2021/09/What-is-an-NFT.jpg',
    'https://d2eohwa6gpdg50.cloudfront.net/wp-content/uploads/sites/8/2022/01/21122839/shutterstock_20.2f4a4103140.original-scaled.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StaggeredGridView.countBuilder(
        crossAxisCount: 4,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        itemCount: imageList.length,
        itemBuilder: (context, index) {
          return NftCard(image: imageList[index]);
        },
        //staggeredTileBuilder: (int index) => StaggeredTile.count(2, index.isEven ? 2 : 1),
        staggeredTileBuilder: (int index) => const StaggeredTile.count(2, 2),
      ),
    );
  }
}
