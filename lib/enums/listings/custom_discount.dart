enum CustomDiscount {
  k0(0, '0%'),
  k5(5, '5%'),
  k10(10, '10%'),
  k15(15, '15%'),
  k20(20, '20%'),
  k25(25, '25%'),
  k30(30, '30%'),
  k35(35, '35%'),
  k40(40, '40%'),
  k45(45, '45%'),
  k50(50, '50%'),
  k55(55, '55%'),
  k60(60, '60%'),
  k65(65, '65%'),
  k70(70, '70%'),
  k75(75, '75%'),
  k80(80, '80%'),
  k85(85, '85%'),
  k90(90, '90%'),
  k95(95, '95%'),
  k100(100, '100%');

  const CustomDiscount(this.number, this.title);
  final int number;
  final String title;
}

class CustomDiscountFun {
  static List<CustomDiscount> get discounts => <CustomDiscount>[
        CustomDiscount.k0,
        CustomDiscount.k5,
        CustomDiscount.k10,
        CustomDiscount.k15,
        CustomDiscount.k20,
        CustomDiscount.k25,
        CustomDiscount.k30,
        CustomDiscount.k35,
        CustomDiscount.k40,
        CustomDiscount.k45,
        CustomDiscount.k50,
        CustomDiscount.k55,
        CustomDiscount.k60,
        CustomDiscount.k65,
        CustomDiscount.k70,
        CustomDiscount.k75,
        CustomDiscount.k80,
        CustomDiscount.k85,
        CustomDiscount.k90,
        CustomDiscount.k95,
        CustomDiscount.k100,
      ];

  static CustomDiscount fromMap(int value) {
    switch (value) {
      case 0:
        return CustomDiscount.k0;
      case 5:
        return CustomDiscount.k5;
      case 10:
        return CustomDiscount.k10;
      case 15:
        return CustomDiscount.k15;
      case 20:
        return CustomDiscount.k20;
      case 25:
        return CustomDiscount.k25;
      case 30:
        return CustomDiscount.k30;
      case 35:
        return CustomDiscount.k35;
      case 40:
        return CustomDiscount.k40;
      case 45:
        return CustomDiscount.k45;
      case 50:
        return CustomDiscount.k50;
      case 55:
        return CustomDiscount.k55;
      case 60:
        return CustomDiscount.k60;
      case 65:
        return CustomDiscount.k65;
      case 70:
        return CustomDiscount.k70;
      case 75:
        return CustomDiscount.k75;
      case 80:
        return CustomDiscount.k80;
      case 85:
        return CustomDiscount.k85;
      case 90:
        return CustomDiscount.k90;
      case 95:
        return CustomDiscount.k95;
      case 100:
        return CustomDiscount.k100;
      default:
        return CustomDiscount.k5;
    }
  }
}
