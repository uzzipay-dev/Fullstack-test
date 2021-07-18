import 'package:estantelivros/controllers/menu_open_controller.dart';
import 'package:estantelivros/screens/base/base_screen.dart';
import 'package:estantelivros/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Estante de livros',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white),
        canvasColor: secondaryColor,
      ),
      home: MultiProvider(
          providers: [
            ChangeNotifierProvider(
                create: (_) => MenuOpenController()
            )
          ],
          child: BaseScreen()),
    );
  }
}