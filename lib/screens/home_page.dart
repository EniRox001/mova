import 'package:mova/imports.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    movieFuture = getMovies(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          WFeaturedVideo(
            onSearch: () {},
            onNotification: () {},
            onPressed: () {},
            image: featuredVideoImageOne,
            featuredTitle: featuredVideoTextTitle,
            featuredCategory: featuredVideoTextCategory,
            onPlay: () {},
            onAddList: () {},
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: spaceMedium,
                  vertical: spaceSmall,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Top 10 Movies This Week',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'See all',
                        style: kSeeAllTextStyle,
                      ),
                    )
                  ],
                ),
              ),
              FutureBuilder<List<Movies>>(
                future: movieFuture,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  } else if (snapshot.hasData) {
                    final movies = snapshot.data!;
                    return Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: spaceMedium,
                      ),
                      child: SizedBox(
                        height: imageHeightSemiLarge,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: movies.length,
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              width: spaceSemiSmall,
                            );
                          },
                          itemBuilder: (context, index) {
                            final movie = movies[index];
                            return (Stack(
                              children: [
                                Container(
                                  width: 150.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      spaceSmall,
                                    ),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        movie.imageUrl,
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: padSmall,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color:
                                          LightColorTheme().mainbackgroundColor,
                                      borderRadius: BorderRadius.circular(
                                        spaceSmall,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: padSmall,
                                      child: Text(
                                        movie.ratings.toString(),
                                        style: kOnboardingbuttonTextStyle,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ));
                          },
                        ),
                      ),
                    );
                  } else {
                    return const Text('No user data');
                  }
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
