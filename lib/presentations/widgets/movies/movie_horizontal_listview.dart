import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/presentations/providers/movies/movies_providers.dart';
import 'package:flutter/material.dart';

class MovieHorizontalListView extends StatelessWidget {
  final List<Movie> movies;
  final String? title;
  final String? subtitle;
  final MovieCallBack? loadNextpage;
  const MovieHorizontalListView(
      {super.key,
      required this.movies,
      this.subtitle,
      this.title,
      this.loadNextpage});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: Column(children: [
        if(title!= null || subtitle!= null) _Title(title, subtitle),

      ]),
    );
  }
}

class _Title extends StatelessWidget {
  final String? title;
  final String? subtitle;
  const _Title(this.title, this.subtitle);
  
  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    return Container(
      padding: const EdgeInsets.only(top: 10),
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          if(title != null) Text(title!, style:titleStyle ,),
          Spacer(),
          if(subtitle != null) FilledButton.tonal(onPressed: (){},style: const ButtonStyle(visualDensity: VisualDensity.compact), child: Text(subtitle!),),
        ],
      ),
    );
  }
}
