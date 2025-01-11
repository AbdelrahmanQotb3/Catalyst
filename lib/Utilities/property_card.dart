import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../Model/Data/Properties/GetPropertiesResponse.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PropertyCard extends StatefulWidget {
  final GetPropertiesResponse property;

  PropertyCard({required this.property});

  @override
  _PropertyCardState createState() => _PropertyCardState();
}

class _PropertyCardState extends State<PropertyCard> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              CarouselSlider(
                items: widget.property.images.isNotEmpty
                    ? widget.property.images.map((image) {
                  return Image.network(
                    image,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  );
                }).toList()
                    : [Container(color: Colors.grey, width: double.infinity, height: 200)],
                options: CarouselOptions(
                  height: 200,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  viewportFraction: 1.0,
                  onPageChanged: (index, reason) {
                    setState(() {}); //
                  },
                ),
              ),
              Positioned(
                bottom: 10,
                left: 0,
                right: 0,
                child: Center(
                  child: SmoothPageIndicator(
                    controller: _pageController,
                    count: widget.property.images.length,
                    effect: ExpandingDotsEffect(
                      dotWidth: 8.0,
                      dotHeight: 8.0,
                      spacing: 5.0,
                      dotColor: Colors.white.withOpacity(0.5),
                      activeDotColor: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.property.name,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text(
                  widget.property.location,
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(height: 10),
                Text(
                  "\$${widget.property.price}",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  widget.property.description,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
