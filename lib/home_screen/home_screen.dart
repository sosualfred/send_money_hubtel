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
                // Tabbar
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFE6EAED),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  height: 42,
                  padding: const EdgeInsets.all(2),
                  child: DefaultTabController(
                    length: 2,
                    child: TabBar(
                      tabs: const [
                        Tab(
                          text: 'History',
                        ),
                        Tab(
                          text: 'Transaction Summary',
                        ),
                      ],
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.black.withOpacity(0.2),
                      labelStyle: const TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 14,
                      ),
                      unselectedLabelStyle: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                      indicator: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Divider(
                  color: Colors.grey[300],
                  thickness: 1,
                ),
                const SizedBox(height: 16),
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
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
              elevation: 10,
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
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black45,
              blurRadius: 1.0,
            ),
          ],
        ),
        child: BottomNavigationBar(
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
      ),
    );
  }
}
