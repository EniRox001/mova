import 'package:mova/imports.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.network(
                dSImageOne,
                height: MediaQuery.of(context).size.height / 2.25,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
              SafeArea(
                child: Padding(
                  padding: padLarge,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        kMainLogo,
                        scale: 15.0,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.search,
                            size: spaceLarge,
                            color: LightColorTheme().whiteBackgroundColor,
                          ),
                          SizedBox(
                            width: spaceSemiSmall,
                          ),
                          Icon(
                            Icons.notifications,
                            size: spaceLarge,
                            color: LightColorTheme().whiteBackgroundColor,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: spaceNull,
                child: Padding(
                  padding: padLarge,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dr Strange 2',
                        style: TextStyle(
                          color: LightColorTheme().whiteBackgroundColor,
                          fontSize: 32.0.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Action, Superhero, Science Fiction...',
                        style: TextStyle(
                          color: LightColorTheme().whiteBackgroundColor,
                          fontSize: 16.0.sp,
                        ),
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: LightColorTheme().mainbackgroundColor,
                              shape: const StadiumBorder(),
                            ),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.play_circle,
                                ),
                                SizedBox(
                                  width: spaceSmall,
                                ),
                                const Text(
                                  'Play',
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: spaceSmall,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              side: BorderSide(
                                color: LightColorTheme().whiteBackgroundColor,
                                width: 2.0,
                              ),
                              shape: const StadiumBorder(),
                            ),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.add,
                                ),
                                SizedBox(
                                  width: spaceSmall,
                                ),
                                const Text(
                                  'My List',
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
