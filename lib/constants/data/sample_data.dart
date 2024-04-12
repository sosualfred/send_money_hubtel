import 'package:send_money_hubtel/constants/assets.dart';
import 'package:send_money_hubtel/models/payment_history.dart';

List<PaymentHistory> paymentHistoryDummyData = [
  PaymentHistory(
    timeOfPayment: '14:45PM',
    name: 'Emmanuel Rockson Kwabena Uncle Ebo',
    isSuccessful: true,
    accountName: 'Personal',
    amount: 'GHS 500',
    isFavorite: true,
    phoneNumber: '024 123 4567',
    providerLogo: ImageAssets.mtnLogo,
    reference: 'Cool your heart wai',
  ),
  PaymentHistory(
    timeOfPayment: '14:45PM',
    name: 'Absa Bank',
    isSuccessful: false,
    accountName: 'Personal',
    amount: 'GHS 500',
    isFavorite: false,
    phoneNumber: '024 123 4567',
    providerLogo: ImageAssets.absaLogo,
    reference: 'Cool your heart wai',
  ),
  PaymentHistory(
    timeOfPayment: '14:45PM',
    name: 'Emmanuel Rockson Kwabena Uncle Ebo',
    isSuccessful: true,
    accountName: 'Personal',
    amount: 'GHS 500',
    isFavorite: true,
    phoneNumber: '024 123 4567',
    providerLogo: ImageAssets.mtnLogo,
    reference: 'Cool your heart wai',
  ),
  PaymentHistory(
    timeOfPayment: '14:45PM',
    name: 'Absa Bank',
    isSuccessful: false,
    accountName: 'Personal',
    amount: 'GHS 500',
    isFavorite: false,
    phoneNumber: '024 123 4567',
    providerLogo: ImageAssets.absaLogo,
    reference: 'Cool your heart wai',
  ),
];
