import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/res/text_styles.dart';

class SightDetails extends StatelessWidget {
  final Sight sight;

  SightDetails(this.sight);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.asset(
                sight.url,
              ),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    padding: EdgeInsets.all(25),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Container(
                        color: Colors.white,
                        child: SizedBox(
                          height: 40.0,
                          width: 40.0,
                          child: IconButton(
                            color: Colors.white,
                            padding: EdgeInsets.all(0),
                            onPressed: () {
                              print('BACK BUTTON CLICKED');
                            },
                            icon: Icon(
                              Icons.navigate_before,
                              color: Colors.black,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(16),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 5),
                  child: Text(
                    sight.name,
                    style: textDetailsHead,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      child: Container(
                        margin: EdgeInsets.only(right: 20),
                        child: Text(
                          sight.type,
                          style: textDetailsType,
                        ),
                      ),
                    ),
                    Text(
                      'закрыто до 9:00',
                      style: textSecondaryRegular16,
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 18, top: 18),
                  child: Text(
                    sight.details,
                    style: textDetailsText,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  child: SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton.icon(                      
                      onPressed: null,
                      icon: Icon(Icons.directions),
                      label: Text(
                        "Построить маршрут".toUpperCase(),
                        style: textBtnWhite,
                      ),
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.green),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ))),
                    ),                    
                  ),
                ),
                Divider(
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FlatButton.icon(
                onPressed: null,
                icon: Icon(Icons.calendar_today),
                label: Text(
                  "Запланировать",
                  style: textBtn,
                ),
              ),
              FlatButton.icon(
                onPressed: () => {print('to favorites')},
                icon: Icon(Icons.favorite),
                label: Text(
                  "В Избранное",
                  style: textBtn,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
