import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';

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
                Image.asset(
                  sight.url,
                  color: Colors.black.withOpacity(0.2),
                  colorBlendMode: BlendMode.srcOver,
                ),
                Container(
                  color: Color(0xFFF5F5F5),
                  padding: EdgeInsets.all(16),
                  width: double.infinity,
                  // height: 70,            
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Text(
                          sight.name,
                          style: TextStyle(
                              color: Color(0xFF3B3E5B),
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        // margin: EdgeInsets.all(20),
                        child: Text(
                          sight.details,
                          style: TextStyle(
                              color: Color(0xFF7C7E92),
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
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
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
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
