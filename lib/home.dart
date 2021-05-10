import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> num = ['1', '2', '3', '4'];
  List<String> images = [
    'image/meal.jpg',
    'image/pizza.jpg',
    'image/french fries.jpg'
  ];
  var initnum1 = '1';
  var initnum2 = '1';
  var initnum3 = '1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Restaurant Menu'),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: ListView(children: [
                mycard('Meal', images[0], initnum1),
                SizedBox(
                  height: 10.0,
                ),
                mycard('Pizza', images[1], initnum2),
                SizedBox(
                  height: 10.0,
                ),
                mycard('French Fries', images[2], initnum3),
              ]),
            )
          ],
        ),
      ),
    );
  }

  Widget mycard(String name, String photo, String number) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      elevation: 8.0,
      child: Container(
        height: 200,
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.amber,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.asset(
                        photo,
                        height: 150,
                        width: 150,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  DropdownButton(
                    value: number,
                    items: num.map((e) {
                      return DropdownMenuItem(
                        value: e,
                        child: Text(e),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        number = value;
                      });
                    },
                  )
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                name,
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}

/*Widget model(List num,var initnum) {
  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Container(
                      height: 200,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.amber,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(30.0),
                                    child: Image.asset('image/meal.jpg'),
                                  ),
                                ),
                                SizedBox(
                                  width: 20.0,
                                ),
                                DropdownButton(
                                  value: initnum,
                                  items: num.map((e) {
                                    return DropdownMenuItem(
                                      value: e,
                                      child: Text(e),
                                    );
                                  }).toList(),
                                  onChanged: (value) {
                                    setState(() {
                                      initnum = value;
                                    });
                                  },
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Text(
                              'Meal',
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
}
*/
