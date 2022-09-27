// import 'dart:io';
import 'package:flutter/material.dart';

class ProfileWidget extends StatefulWidget {
  final String imagePath;
  final VoidCallback onClicked;
  final double coverHeight = 280;

  const ProfileWidget({
    Key? key,
    required this.imagePath,
    required this.onClicked,
  }) : super(key: key);

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.primary;

    return Center(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          buildCoverImage(),
          Positioned(
            top: 80,
            right: 152,
            child: buildImage(),
          ),
          // Positioned(
          //   top: 200,
          //   right: 140,
          //   child: buildEditIcon(color),
          // ),
        ],
      ),
    );
  }

  Widget buildImage() {
    final image = NetworkImage(widget.imagePath);

    return ClipOval(
      child: Material(
        color: Colors.transparent,
        child: Ink.image(
          image: image,
          fit: BoxFit.cover,
          width: 100,
          height: 100,
        ),
      ),
    );
  }

  Widget buildEditIcon(Color color) => buildCircle(
        color: Colors.white,
        all: 3,
        child: buildCircle(
          color: color,
          all: 8,
          child: Icon(
            Icons.edit,
            color: Colors.white,
            size: 20,
          ),
        ),
      );

  Widget buildCircle({
    required Widget child,
    required double all,
    required Color color,
  }) =>
      ClipOval(
        child: Container(
          padding: EdgeInsets.all(all),
          color: color,
          child: child,
        ),
      );

  Widget buildCoverImage() => Container(
        color: Color.fromARGB(255, 191, 237, 138),
        child: Image.network(
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkVqKDQG0UAOhoQrjTmincu_cCy1HEr7qfng&usqp=CAU',
          fit: BoxFit.cover,
        ),
        width: double.infinity,
        height: 150,
      );
}
// "assets/green1.jpg",
//             fit: BoxFit.cover,
//             color: Colors.black.withOpacity(0.7),
//             colorBlendMode: BlendMode.darken,
