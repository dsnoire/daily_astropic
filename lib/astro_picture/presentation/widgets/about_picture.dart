import 'package:daily_astropic/astro_picture/extensions/date_format_extension.dart';
import 'package:flutter/material.dart';

import '../../models/picture/picture.dart';

class AboutPicture extends StatelessWidget {
  final Picture picture;
  const AboutPicture({
    super.key,
    required this.picture,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    child: Text(
                      picture.title,
                      style: const TextStyle(
                        color: Colors.white,
                        letterSpacing: 1,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  IconButton(
                    iconSize: 28,
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_outline),
                  ),
                ],
              ),
              Text(
                picture.date.formatDate(),
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 14,
                  letterSpacing: 3,
                ),
              ),
              const SizedBox(height: 48),
              Text(
                picture.explanation,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  letterSpacing: 1,
                  fontSize: 12,
                  wordSpacing: 3,
                  height: 1.5,
                ),
              ),
              if (picture.copyright != null)
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Center(
                    child: Text(
                      'credit: ${picture.copyright}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        letterSpacing: 1,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
