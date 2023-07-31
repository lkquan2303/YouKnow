import 'package:freezed_annotation/freezed_annotation.dart';

part 'bank_card.freezed.dart';
part 'bank_card.g.dart';

@freezed
class BankCard with _$BankCard {
  const factory BankCard({
    String? cardNumber,
    String? cardNumberM,
    String? cardBrand,
  }) = _BankCard;

  factory BankCard.fromJson(Map<String, dynamic> json) =>
      _$BankCardFromJson(json);
}