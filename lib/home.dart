// ignore_for_file: library_private_types_in_public_api, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:free4u/event_page.dart';
import 'package:free4u/util/category_card.dart';
import 'package:free4u/util/event_card.dart';
import 'package:lottie/lottie.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey[200],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.grey.shade200,
        color: Colors.orange.shade200,
        animationDuration: Duration(milliseconds: 300),
        items: [
          Icon(Icons.home, size: 30),
          Icon(Icons.history_edu, size: 30),
          Icon(Icons.add_circle, size: 30),
          Icon(Icons.person_pin, size: 30),
        ],
        onTap: (index) {//handle button tap
        }
      ),
      body: SafeArea(
        child: Column(
          children: [
          //app bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //name
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello,',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Trifani',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                  //profile picture
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[100],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(Icons.person),
                  )
                ]
              ),
            ),
            SizedBox(height: 25),
            //card
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.orange[200],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(children: [
                  //animation
                  Container(
                    height: 100,
                    width: 100,
                    child: Lottie.asset('assets/icons/lottieIcon1.json'),
                  ),
                  SizedBox(width: 25),

                  //how do you feel + get started
                  Expanded(
                    child: Column (
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Making your ticketing experience more easier',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 12),
                        Text(
                          'Booking tiketmu sekarang!',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 12),
                        Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors. deepPurple[200],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Text('Get Started',
                              style: TextStyle(
                                color: Colors.white,
                              ),),
                          ),
                        )
                      ],
                    ),
                  )
                ],)
              ),
            ),
            SizedBox(height: 25),
            
            //search bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.deepPurple[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    hintText: 'Apa yang kamu cari?',
                  ),
                ),
              ),
            ),
            SizedBox(height: 25),
            
            //horizontal listview -->
            Container(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryCard(
                    categoryName: 'Event',
                    iconImagePath: 'assets/icons/calendar.png',
                  ),
                  CategoryCard(
                    categoryName: 'Materi',
                    iconImagePath: 'assets/icons/book.png',
                  ),
                  CategoryCard(
                    categoryName: 'Sertifikat',
                    iconImagePath: 'assets/icons/certificate.png',
                  ),
                  CategoryCard(
                    categoryName: 'Kategori',
                    iconImagePath: 'assets/icons/category.png',
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            
            //list event
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Event Terbaru',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'Lihat Semua',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 10),

            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  EventCard(
                    eventImagePath: 'assets/img/acara1.jpg',
                    keterangan:'certified',
                    eventName: 'World Class Professor : Renewable Material Engineering for Energy and Environmental Applications',
                    eventDate: '24 September',
                  ),
                  EventCard(
                    eventImagePath: 'assets/img/event2.jpg',
                    keterangan:'certified',
                    eventName: 'World Class Professor : Existing and Future Perspective of Electrochemical Sensors',
                    eventDate: '6 Oktober',
                  ),
                  EventCard(
                    eventImagePath: 'assets/img/event3.jpg',
                    keterangan:'certified',
                    eventName: 'Etam Science Competition (ESCIENTION-ITK)',
                    eventDate: '15 Oktober',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}