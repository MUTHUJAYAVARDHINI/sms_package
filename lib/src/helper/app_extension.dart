import 'package:flutter/material.dart';


extension StringExtension on String {
  String get toCapital {
    try {
      return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
    } catch (e) {
      return this;
    }
  }
   String get toSmallCase{
    try {
      return toLowerCase();
    } catch (e) {
      return this;
    }
  }

  String get first{
    try {
      return this[0];
    } catch (e) {
      return "";
    }
  }
}



String capitalizeFirstLetter(String? text) {
  if (text?.isEmpty??true) return text??"";
  return text![0].toUpperCase() + text.substring(1);
}

// String formatDateString(String? dateString) {
//   // Check if the dateString is null or empty
//   if (dateString == null || dateString.isEmpty) {
//     return "Date string is empty or null";
//   }
//   DateTime? dateTime;
//   // Attempt to parse the string into a DateTime object
//   try {
//     dateTime = DateTime.parse(dateString);
//   } catch (e) {
//     return "Invalid date format: $dateString";
//   }

//   // Format the DateTime to dd-MM-yyyy
//   return DateFormat('dd-MM-yyyy').format(dateTime);
// }

extension IntegetExtension on int? {
  bool get success {
    if (this == 200 || this == 201 || this == 204) {
      return true;
    }
    return false;
  }
}

extension GeneralExtension<T> on T {
  bool get isEnum {
    final split = toString().split('.');
    return split.length > 1 && split[0] == runtimeType.toString();
  }

  String get getEnumString => toString().split('.').last.toCapital;
}

extension IterableExtension<T> on Iterable<T> {
  Iterable<E> mapWithIndex<E>(E Function(int index, T value) f) {
    return Iterable.generate(length).map((i) => f(i, elementAt(i)));
  }
}

extension MapExtension on Map {
  String get format {
    if (isEmpty) {
      return "";
    } else {
      var firstKey = entries.first.key;
      var mapValues = entries.first.value;
      return "?$firstKey=$mapValues";
    }
  }
}

//Helper functions
void pop(BuildContext context, int returnedLevel) {
  for (var i = 0; i < returnedLevel; ++i) {
    Navigator.pop(context, true);
  }
}



// String formatIndianCurrency(String? amount) {
//   if (amount == null || amount.isEmpty) return "0";

//   final number = int.tryParse(amount.replaceAll(',', ''));
//   if (number == null) return "0";
//   final formatter = NumberFormat.currency(
//     locale: 'en_IN',
//      symbol: '₹',
//     decimalDigits: 0,
//   );

//   return formatter.format(number);
// }


// String formatIndianDouble(double? amount) {
//   if (amount == null) return "0";

//   final formatter = NumberFormat.currency(
//     locale: 'en_IN',
//      symbol: '₹',
//     decimalDigits: 0,
//   );

//   return formatter.format(amount);
// }

 String formatNumber(double value) {
  return value.toStringAsFixed(2);
}


//epoch coverter
// String formatEpoch(int epochMillis) {
//   final date = DateTime.fromMillisecondsSinceEpoch(epochMillis);
//   final formatter = DateFormat('dd-MM-yyyy');
//   return formatter.format(date);
// }