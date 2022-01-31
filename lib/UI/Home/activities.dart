import 'package:flutter/material.dart';
import 'package:tenich/Data/navdata.dart';

import 'package:tenich/UI/Home/components/items.dart';
import 'package:tenich/UI/Home/components/sorting.dart';

class Activities extends StatefulWidget {
  @override
  _ActivitiesState createState() => _ActivitiesState();
}

class _ActivitiesState extends State<Activities> {
  int _container = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.transparent,
      child: SingleChildScrollView(
        child: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Hello John!',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 28),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'A good day to have a nice meal!',
                              style: TextStyle(
                                color: Colors.black54,
                                wordSpacing: 2.5,
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            )
                          ],
                        ),
                      ),
                      Spacer(),
                      CircleAvatar(
                        backgroundColor: Colors.transparent,
                        child: Container(
                          child: Image.asset(
                            "assets/images/pp.jpg",
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(8)),
                      height: 150,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/d1.jpg',
                            ),
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 50,
                    child: Center(child: Sorting()),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 2,
                    child: CategoryList(),
                  )
                ],
              ),
            )
          ],
        )),
      ),
    );
  }

// data has gotten to DataNav now we need it on activties.
  DataCollected() {
    Returndata();
    print(Returndata());
  }

  // bring all codes to this place for functionality

  Sortingr() {
    return null;
  }
}
