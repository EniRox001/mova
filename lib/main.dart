import 'imports.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final prefs = await SharedPreferences.getInstance();
  final showHome = prefs.getBool('showHome') ?? false;
  runApp(MyApp(showHome: showHome));
}

class MyApp extends StatelessWidget {
  final bool showHome;
  const MyApp({Key? key, required this.showHome}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 960),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Mova",
          theme: ThemeData(
            appBarTheme: AppBarTheme(
              toolbarHeight: spaceMassive,
              backgroundColor: Colors.white,
              iconTheme: const IconThemeData(
                color: Colors.black,
              ),
              elevation: 0,
              toolbarTextStyle: Theme.of(context).textTheme.titleLarge,
              titleTextStyle: Theme.of(context).textTheme.titleLarge,
            ),
            brightness: Brightness.light,
            scaffoldBackgroundColor: Colors.white,
            primaryColor: Colors.lightBlue[800],
          ),
          initialRoute: showHome ? '/login_signup' : '/',
          // initialRoute: '/home_page',
          getPages: Routes().getpage,
        );
      },
    );
  }
}
