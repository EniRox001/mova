import 'package:flutter/material.dart';
import 'package:mova/utils/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJ5IuxfEt-WmUIrpJldszdRJFfTubSEeQVMVNuv63Z0PNfvbWV',
                height: MediaQuery.of(context).size.height / 2.25,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
              SafeArea(
                child: Padding(
                  padding: padLarge,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        kMainLogo,
                        scale: 15.0,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.search,
                            size: spaceLarge,
                            color: LightColorTheme().whiteBackgroundColor,
                          ),
                          SizedBox(
                            width: spaceSemiSmall,
                          ),
                          Icon(
                            Icons.notifications,
                            size: spaceLarge,
                            color: LightColorTheme().whiteBackgroundColor,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
