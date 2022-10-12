// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {

  final String eventImagePath;
  final String keterangan;
  final String eventName;
  final String eventDate;

  EventCard({
    required this.eventImagePath,
    required this.keterangan,
    required this.eventName,
    required this.eventDate,
  });


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.deepPurple[100],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
            //picture of event
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                eventImagePath,
              ),
            ),
            SizedBox(height: 10),

            //keterangan sertifikat
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Icon(Icons.stars_rounded,
                  color: Colors.orange[200],
                  ),
                  SizedBox(width: 5),
                  Text(
                    keterangan,
                    style: TextStyle(fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),

            //event name
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                eventName,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            SizedBox(height: 10),
            //date
            Text(
              eventDate,
            ),
            SizedBox(height: 10,)
          ]),
        ),
      ),
    );
  }
}
