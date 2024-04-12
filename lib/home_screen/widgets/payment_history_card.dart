import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:send_money_hubtel/constants/assets.dart';
import 'package:send_money_hubtel/home_screen/widgets/hubtel_chip.dart';
import 'package:send_money_hubtel/models/payment_history.dart';

class PaymentHistoryCard extends StatelessWidget {
  const PaymentHistoryCard({
    super.key,
    required this.paymentHistory,
  });

  final PaymentHistory paymentHistory;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: const Color(0xFFE6EAED),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            paymentHistory.timeOfPayment,
            style: const TextStyle(
              fontSize: 12,
              color: Color(0xFF9CABB8),
            ),
          ),
          const SizedBox(height: 11),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                paymentHistory.providerLogo,
                width: 39,
                height: 39,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  paymentHistory.name,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ),
              paymentHistory.isSuccessful
                  ? const HubtelChip(
                      label: "Successful",
                      foregroundColor: Color(0xFF70E083),
                      backgroundColor: Color(0xFFDBF7E0),
                      icon: Icon(
                        Icons.check_circle_rounded,
                        color: Color(0xFF70E083),
                        size: 11,
                      ),
                    )
                  : const HubtelChip(
                      label: "Failed",
                      foregroundColor: Color(0xFF99231D),
                      backgroundColor: Color(0xFFFDB0AC),
                      icon: Icon(
                        Icons.cancel_rounded,
                        color: Color(0xFF99231D),
                        size: 11,
                      ),
                    ),
            ],
          ),
          Row(
            children: [
              const SizedBox(width: 47),
              Expanded(
                child: Text(
                  paymentHistory.phoneNumber,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color(0xFF9EADBA),
                  ),
                ),
              ),
              Text(
                paymentHistory.amount,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Divider(
            color: Color(0xFFE6EAED),
            thickness: 1,
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              SvgPicture.asset(
                SvgAssets.personIcon,
                width: 25,
                height: 25,
                fit: BoxFit.contain,
              ),
              const SizedBox(width: 8),
              Text(
                paymentHistory.accountName,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
              const SizedBox(width: 8),
              Container(
                height: 4.26,
                width: 4.34,
                decoration: const BoxDecoration(
                  color: Color(0xFF9CABB8),
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 8),
              Text(
                paymentHistory.reference,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
              const Spacer(),
              Visibility(
                visible: paymentHistory.isFavorite,
                child: const Icon(
                  Icons.star_rounded,
                  color: Color(0xFFFEE066),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
