import 'package:flutter/material.dart';

class ItemFeedAddProMoSquareWidget extends StatelessWidget {
  const ItemFeedAddProMoSquareWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // TODO: Create ProMo
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          height: double.infinity,
          width: 100,
          margin: const EdgeInsets.only(left: 16, right: 8),
          decoration: BoxDecoration(
            border: Border.all(
              color: Theme.of(context).primaryColor.withOpacity(0.1),
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Stack(
                  clipBehavior: Clip.none,
                  children: <Widget>[
                    Container(
                      height: double.infinity,
                      width: double.infinity,
                      padding: const EdgeInsets.all(12),
                      color: Theme.of(context).primaryColor,
                      child: const FittedBox(
                        child: Text(
                          'ProMo',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: -20,
                      right: 10,
                      left: 10,
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor:
                            Theme.of(context).scaffoldBackgroundColor,
                        child: CircleAvatar(
                          radius: 18,
                          backgroundColor: Theme.of(context).primaryColor,
                          // TODO: User Photo
                          backgroundImage: const NetworkImage(''),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 10),
                    Center(
                      child: Text(
                        '''Create yours''',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
