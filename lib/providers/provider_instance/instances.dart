import 'package:farm_pik/providers/home_page.dart';
import 'package:farm_pik/utilities/themes/theme_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final homeProvider = ChangeNotifierProvider((ref) => HomePageProvider());
final themeProvider = ChangeNotifierProvider<AppThemeProvider>((ref) => AppThemeProvider());
final appbarString = Provider((ref) => "Riverpod here");
