import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/res/text_styles.dart';
import 'package:places/ui/res/colors.dart';

class SightCard extends StatelessWidget {
  final Sight sight;

  SightCard(this.sight);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: Stack(          
          alignment: Alignment.bottomCenter,
          children: [
            SizedBox(
              height: 220,
              child: Image.network(
                  sight.url,
                  fit: BoxFit.fill,
                  color: Colors.black.withOpacity(0.2),
                  colorBlendMode: BlendMode.srcOver,
                  loadingBuilder: (BuildContext context, Widget child,
                      ImageChunkEvent loadingProgress) {
                    if (loadingProgress == null) return child;
                    return Center(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 100),
                        child: CircularProgressIndicator(
                          value: loadingProgress.expectedTotalBytes != null
                              ? loadingProgress.cumulativeBytesLoaded /
                                  loadingProgress.expectedTotalBytes
                              : null,
                        ),
                      ),
                    );
                  },
                ),
            ),
            
            Container(
              color: bgGrey,
              padding: EdgeInsets.all(16),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: Text(
                      sight.name,
                      style: textCardHead,
                    ),
                  ),
                  Container(
                    child: Text(
                      sight.details,
                      style: textCardSecondary,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: IconButton(
                padding: EdgeInsets.all(16),
                onPressed: () {},
                icon: Icon(
                  Icons.favorite,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    sight.type,
                    style: textHoverWhite,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
