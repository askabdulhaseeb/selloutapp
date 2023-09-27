enum CustomTime {
  newBorn('New Born', 'new_born'),
  k1Week('1 Week', '1_week'),
  k2Week('2 Week', '2_week'),
  k3Week('3 Week', '3_week'),
  k4Week('4 Week', '4_week'),
  k5Week('5 Week', '5_week'),
  k6Week('6 Week', '6_week'),
  k7Week('7 Week', '7_week'),
  k8Week('8 Week', '8_week'),
  k9Week('9 Week', '9_week'),
  k10Week('10 Week', '10_week'),
  k11Week('11 Week', '11_week'),
  k12Week('12 Week', '12_week'),
  k4Month('4 Month', '4_month'),
  k6Month('6 Month', '6_month'),
  k9Month('9 Month', '9_month'),
  k1Year('1 Year', '1_year'),
  k2Year('2 Year', '2_year'),
  k3Year('3 Year', '3_year'),
  k4Year('4 Year', '4_year'),
  k5Year('5 Year', '5_year'),
  k6Year('6 Year', '6_year'),
  k7Year('7 Year', '7_year'),
  k8Year('8 Year', '8_year'),
  k9Year('9 Year', '9_year'),
  k10Year('10 Year', '10_year'),
  others('Others', 'others');

  const CustomTime(this.title, this.json);
  final String title;
  final String json;
}

class CustomTimeFun {
  static List<CustomTime> get age => <CustomTime>[
        CustomTime.newBorn,
        CustomTime.k1Week,
        CustomTime.k2Week,
        CustomTime.k3Week,
        CustomTime.k4Week,
        CustomTime.k5Week,
        CustomTime.k6Week,
        CustomTime.k7Week,
        CustomTime.k8Week,
        CustomTime.k9Week,
        CustomTime.k10Week,
        CustomTime.k11Week,
        CustomTime.k12Week,
        CustomTime.k4Month,
        CustomTime.k6Month,
        CustomTime.k9Month,
        CustomTime.k1Year,
        CustomTime.k2Year,
        CustomTime.k3Year,
        CustomTime.k4Year,
        CustomTime.k5Year,
        CustomTime.k6Year,
        CustomTime.k7Year,
        CustomTime.k8Year,
        CustomTime.k9Year,
        CustomTime.k10Year,
      ];
  static List<CustomTime> get leaveTime => <CustomTime>[
        CustomTime.k1Week,
        CustomTime.k2Week,
        CustomTime.k3Week,
        CustomTime.k4Week,
        CustomTime.k5Week,
        CustomTime.k6Week,
        CustomTime.k7Week,
        CustomTime.k8Week,
        CustomTime.k9Week,
        CustomTime.k10Week,
        CustomTime.k11Week,
        CustomTime.k12Week,
      ];

  static CustomTime fromMap(String value) {
    switch (value) {
      case 'new_born':
        return CustomTime.newBorn;
      case '1_week':
        return CustomTime.k1Week;
      case '2_week':
        return CustomTime.k2Week;
      case '3_week':
        return CustomTime.k3Week;
      case '4_week':
        return CustomTime.k4Week;
      case '5_week':
        return CustomTime.k5Week;
      case '6_week':
        return CustomTime.k6Week;
      case '7_week':
        return CustomTime.k7Week;
      case '8_week':
        return CustomTime.k8Week;
      case '9_week':
        return CustomTime.k9Week;
      case '10_week':
        return CustomTime.k10Week;
      case '11_week':
        return CustomTime.k11Week;
      case '12_week':
        return CustomTime.k12Week;
      case '4_month':
        return CustomTime.k4Month;
      case '6_month':
        return CustomTime.k6Month;
      case '9_month':
        return CustomTime.k9Month;
      case '1_year':
        return CustomTime.k1Year;
      case '2_year':
        return CustomTime.k2Year;
      case '3_year':
        return CustomTime.k3Year;
      case '4_year':
        return CustomTime.k4Year;
      case '5_year':
        return CustomTime.k5Year;
      case '6_year':
        return CustomTime.k6Year;
      case '7_year':
        return CustomTime.k7Year;
      case '8_year':
        return CustomTime.k8Year;
      case '9_year':
        return CustomTime.k9Year;
      case '10_year':
        return CustomTime.k10Year;
      case 'others':
        return CustomTime.others;
      default:
        return CustomTime.others;
    }
  }
}
