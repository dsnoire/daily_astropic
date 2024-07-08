import 'package:cached_network_image/cached_network_image.dart';
import 'package:daily_astropic/astro_picture/extensions/date_format_extension.dart';
import 'package:flutter/material.dart';

import '../../models/picture/picture.dart';
import '../views/favourites_details_view.dart';

class FavouritesList extends StatelessWidget {
  final List<Picture> favourites;
  const FavouritesList({
    super.key,
    required this.favourites,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (_, __) => const SizedBox(height: 24),
      itemCount: favourites.length,
      itemBuilder: (context, index) {
        final favourite = favourites[index];
        return ListTile(
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => FavouritesDetailsView(
                picture: favourite,
              ),
            ),
          ),
          leading: CachedNetworkImage(
            imageUrl: favourite.hdurl != null
                ? favourite.hdurl!
                : favourite.thumbnailUrl!,
            placeholder: (context, url) => const CircularProgressIndicator(),
          ),
          title: Text(
            favourite.title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            favourite.date.formatDate(),
            style: const TextStyle(
              fontSize: 13,
            ),
          ),
        );
      },
    );
  }
}
