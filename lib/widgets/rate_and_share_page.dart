import 'package:flutter/material.dart';
import 'package:my_menu/util/extensions.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher_string.dart';

class RateAndSharePage extends StatelessWidget {

  const RateAndSharePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 50),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/menu_bg.jpg"),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            color: Colors.transparent,
            child: Container(
              color: Colors.black26,
              padding: EdgeInsets.symmetric(vertical: 36, horizontal: 24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [

                  // help us grow text
                  Text(
                    "Help us Grow",
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  const SizedBox(height: 40),

                  // share buttons
                  IntrinsicWidth(
                    child: Column(
                      children: [

                        // google
                        GestureDetector(
                          onTap: () async {
                            await launchUrlString("https://maps.app.goo.gl/VDrRK64WUVonFbs2A?g_st=ipc");
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                            decoration: BoxDecoration(
                                color: Colors.red.shade700,
                                borderRadius: BorderRadius.all(Radius.circular(8))
                            ),
                            child: Row(
                              children: [
                                Icon(Icons.star_rate_outlined, color: Colors.white),
                                const SizedBox(width: 10),
                                Text(
                                  "Rate us on Google",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),

                        // share
                        GestureDetector(
                          onTap: () {

                            try {
                              final size = MediaQuery.of(context).size;

                              Share.share(
                                "Chai Jee and Waffle Jee Modinagar: https://www.instagram.com/chaijee_modinagar/",
                                subject: "",
                                sharePositionOrigin: context.isIPad
                                    ? Rect.fromLTWH(0, 0, size.width, size.height/2)
                                    : null,
                              );
                            } catch (e) {
                              debugPrint('Events.dart shareFile exception: \n\n ${e.toString()} \n\n');
                            }

                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                            decoration: BoxDecoration(
                                color: Colors.blue.shade700,
                                borderRadius: BorderRadius.all(Radius.circular(8))
                            ),
                            child: Row(
                              children: [
                                Icon(Icons.share, color: Colors.white),
                                const SizedBox(width: 10),
                                Text(
                                  "Share with your friends",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                  const SizedBox(height: 80),

                  // feedback text
                  Text(
                    "Not as a customer but as a part of this family your feedback matters !!\n\n"
                        "Feel open to share anything with the ChaiJee Modinagar Team.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}