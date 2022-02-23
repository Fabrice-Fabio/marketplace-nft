import 'package:flutter/material.dart';
import 'package:hentx/models/transaction.dart';
import 'package:hentx/routing/routing.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  //Hive.registerAdapter(TransactionAdapter());
  await Hive.openBox<Transaction>("transactions");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "HENTXPORN",
      initialRoute: '/',
      onGenerateRoute: Routing.generateRoute,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.black,
          textTheme: const TextTheme(
              bodyText1: TextStyle(color: Colors.white),
              bodyText2: TextStyle(color: Colors.white),
          )
      ),
    );
  }
}
