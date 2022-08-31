import 'package:mova/imports.dart';

late Future<List<Movies>> movieFuture;

Future<List<Movies>> getMovies(BuildContext context) async {
  final assetBundle = DefaultAssetBundle.of(context);
  final moviesData = await assetBundle.loadString('lib/providers/movies.json');
  final movies = jsonDecode(moviesData);
  return movies.map<Movies>(Movies.fromJson).toList();
}
