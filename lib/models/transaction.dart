import 'package:hive/hive.dart';

//part 'transaction.g.dart';

@HiveType(typeId: 0)
class Transaction extends HiveObject{
  @HiveField(0)
  String nftUrl;
  @HiveField(1)
  String nftName;
  @HiveField(2)
  String nftAdr;

  Transaction({
    required this.nftUrl,
    required this.nftName,
    required this.nftAdr,
  });
}