import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:vcqru_bl/ui_view/claim_history_ui/claim_history_ui.dart';
import 'package:vcqru_bl/ui_view/e_kyc_ui/e_kyc_main_ui.dart';

import '../../providers_of_app/notification_provider/notification_provider.dart';
import '../../providers_of_app/splash_screen_provider/splash_screen_provider.dart';
import '../blogs/blogs_ui.dart';
import '../code_check_history_ui/code_check_history.dart';
import '../code_details_ui/code_details_ui.dart';
import '../gift_claim/gift_claim.dart';
import '../help_support_ui/help_support_ui.dart';
import '../product_catlogs/product_catlog_list.dart';
import '../referral_ui/referral_ui_share.dart';
import '../tds_ui/tds_ui.dart';
import '../wallets/wallet_balance_with_points.dart';
class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {

  final List<Map<String, String>> notifications = [
    {'title': 'VCQRU has added one more product checkpoint scan detail.', 'time': 'July 2, 2020 3:29 PM'},
    {'title': 'VCQRU has added one more product checkpoint scan detail.', 'time': 'July 2, 2020 3:29 PM'},
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<NotificationsProvider>(context, listen: false).getNotificationList();
  }
  @override
  Widget build(BuildContext context) {
    final splashProvider = Provider.of<SplashScreenProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications',style: GoogleFonts.roboto(fontSize: 18,color: Colors.white),),
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: splashProvider.color_bg,
      ),
      body: Container(
        width: double.infinity,
        height:double.infinity ,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFF6F4FC),
              Color(0xFFE1D7FF),
              Color(0xFFFDE0E7)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Consumer<NotificationsProvider>(
            builder: (context, valustate, child) {
              if (valustate.isLoading) {
                return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Please Wait"),
                        CircularProgressIndicator(),
                      ],
                    ));
              } else {
                if (valustate.hasError) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
        
                        Container(
                          child: Image.asset(
                            'assets/notificatins.png',
                          ),
                        ),
                        Text(' ${valustate.errorMessage}'),
                        SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            valustate.retrygetNotificationList();
                          },
                          child: Text('Retry'),
                        ),
                      ],
                    ),
                  );
                } else {

                  final notifications = valustate.notifiData?.data ?? [];
                  return notifications.isNotEmpty
                      ? ListView.builder(
                    itemCount: notifications.length,
                    itemBuilder: (context, index) {
                      final notification = notifications[index];

                      return GestureDetector(
                        onTap: () {
                          // Validate and handle notification type
                          switch (notification.notiType)
                          {
                            case 'KYC':
                            // Navigate to screen or perform action for TYPE_1
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => KycMainScreen(), // Example screen
                                ),
                              );
                              break;

                            case 'Claim':
                            // Navigate to screen or perform action for TYPE_2
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ClaimScreen(), // Example screen
                                ),
                              );
                              break;

                            case 'TYPE_3':
                            // Open a URL or handle TYPE_3
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => KycMainScreen(), // Example screen
                                ),
                              );
                              break;

                            case 'Product Catalog':
                            // Navigate to screen or perform action for TYPE_2
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ProductCatListPage(), // Example screen
                                ),
                              );
                              break;
                            case 'Wallet':
                            // Navigate to screen or perform action for TYPE_2
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => WalletWithPoints(), // Example screen
                                ),
                              );
                              break;
                            case 'Gift':
                            // Navigate to screen or perform action for TYPE_2
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => GiftClaimUI(), // Example screen
                                ),
                              );
                              break;
                            case 'ReferEarn':
                            // Navigate to screen or perform action for TYPE_2
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ReferEarn(), // Example screen
                                ),
                              );
                              break;
                            case 'History':
                            // Navigate to screen or perform action for TYPE_2
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HistroyCodeCheck(), // Example screen
                                ),
                              );
                              break;
                            case 'Blog':
                            // Navigate to screen or perform action for TYPE_2
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => BlogPage(), // Example screen
                                ),
                              );
                              break;
                            case 'Help':
                            // Navigate to screen or perform action for TYPE_2
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HelpSupportUI(), // Example screen
                                ),
                              );
                              break;
                            case 'Brochure':
                            // Navigate to screen or perform action for TYPE_2
                            //   Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //       builder: (context) => ClaimScreen(), // Example screen
                            //     ),
                            //   );
                              break;
                            case 'CodeDetails':
                            // Navigate to screen or perform action for TYPE_2
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CodeDetail(), // Example screen
                                ),
                              );
                              break;
                            case 'TDS':
                            // Navigate to screen or perform action for TYPE_2
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => TdsScren(), // Example screen
                                ),
                              );
                              break;
                            case 'About':
                            // Navigate to screen or perform action for TYPE_2
                            //   Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //       builder: (context) => ClaimScreen(), // Example screen
                            //     ),
                            //   );
                              break;
                            case 'Contact':
                            // Navigate to screen or perform action for TYPE_2
                            //   Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //       builder: (context) => ClaimScreen(), // Example screen
                            //     ),
                            //   );
                              break;
                            case 'TermsConditions':
                            // Navigate to screen or perform action for TYPE_2
                            //   Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //       builder: (context) => ClaimScreen(), // Example screen
                            //     ),
                            //   );
                              break;

                            default:
                            // Handle unknown types

                              break;
                          }
                        },
                        child:
                        // NotificationTile(
                        //   avatar: CircleAvatar(
                        //     backgroundImage: NetworkImage(
                        //       notification.profileImage ??
                        //           'https://via.placeholder.com/150', // Default image
                        //     ),
                        //   ),
                        //   title: Text(notification.messgae ?? "No message"),
                        //   time: notification.formattedCreatedAt ?? "No date",
                        // ),
                        NotificationTile(
                          avatar: CircleAvatar(
                            backgroundImage: NetworkImage(
                              notification.profileImage ??
                                  'https://via.placeholder.com/150', // Default image
                            ),
                          ),
                          title: Text(notification.messgae ?? "No message"), // Use existing field name
                          time: notification.formattedCreatedAt ?? "No date",
                        )

                      );
                    },
                  )
                      : Center(child: Text("No notifications available."));
                }
              }
            }),
      ),
    );
  }
}

class NotificationTile extends StatelessWidget {
  final Widget avatar;
  final Widget title;
  final String time;

  NotificationTile({required this.avatar, required this.title, required this.time});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: avatar,
      title: title,
      subtitle: Text(time,style: GoogleFonts.roboto(fontSize: 12),),
    );
  }
}