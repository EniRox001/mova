import 'package:mova/imports.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
          Padding(
            padding: padLarge,
            child: Column(
              children: [
                Row(
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
                Expanded(
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
