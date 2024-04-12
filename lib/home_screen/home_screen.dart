import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:send_money_hubtel/constants/assets.dart';
import 'package:send_money_hubtel/constants/data/sample_data.dart';
import 'package:send_money_hubtel/home_screen/widgets/hubtel_chip.dart';
import 'package:send_money_hubtel/home_screen/widgets/payment_history_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search',
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                          filled: true,
                          fillColor: const Color(0xFFE6EAED),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: const EdgeInsets.all(8),
                        ),
                      ),
                    ),
                    SvgPicture.asset(
                      SvgAssets.settingsIcon,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
                const SizedBox(height: 32),
                const Row(
                  children: [
                    HubtelChip(
                      label: 'May 24, 2022',
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                ListView.separated(
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return const SizedBox(height: 16);
                  },
                  itemCount: paymentHistoryDummyData.length,
                  itemBuilder: (context, index) {
                    return PaymentHistoryCard(
                      paymentHistory: paymentHistoryDummyData[index],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // add center floating button with a plus icon and send new text
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
              backgroundColor: const Color(0xFF01C7B1),
            ),
            onPressed: () {},
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: const Row(
                children: [
                  Icon(
                    Icons.add_circle,
                    color: Colors.white,
                    size: 40,
                  ),
                  SizedBox(width: 8),
                  Text(
                    'SEND NEW',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.w800,
          fontSize: 10,
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 10,
          color: Colors.black,
        ),
        items: [
          BottomNavigationBarItem(
            icon: Container(
              decoration: const BoxDecoration(
                color: Color(0xFFCCF3EF),
                shape: BoxShape.circle,
              ),
              padding: const EdgeInsets.all(8),
              child: SvgPicture.asset(
                SvgAssets.homeIcon,
                width: 25,
                height: 25,
                fit: BoxFit.contain,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              SvgAssets.sendIcon,
              width: 25,
              height: 25,
              fit: BoxFit.contain,
            ),
            label: 'Send',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              SvgAssets.historyIcon,
              width: 25,
              height: 25,
              fit: BoxFit.contain,
            ),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              SvgAssets.scheduleIcon,
              width: 25,
              height: 25,
              fit: BoxFit.contain,
            ),
            label: 'Scheduled',
          ),
        ],
      ),
    );
  }
}
