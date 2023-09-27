import 'property_type.dart';

enum Properties {
  // House
  house('House', PropertyType.house, 'house'),
  upperPortion('Upper Portion', PropertyType.house, 'upper_portion'),
  farmHouse('Farm House', PropertyType.house, 'farm_house'),
  flat('Flat', PropertyType.house, 'flat'),
  lowerPortion('Lower Portion', PropertyType.house, 'lower_portion'),
  pentHouse('Pent House', PropertyType.house, 'pent_house'),
  room('Room', PropertyType.house, 'room'),
  // plot
  residentialPlot('Residential Plot', PropertyType.plot, 'residential_plot'),
  plotFile('Plot File', PropertyType.plot, 'plot_file'),
  agriculturalLand('Agricultural Land', PropertyType.plot, 'agricultural_land'),
  commercialPlot('Commercial Plot', PropertyType.plot, 'commercial_plot'),
  plotForm('Plot Form', PropertyType.plot, 'plot_form'),
  industrialLand('Industrial Land', PropertyType.plot, 'industrial_land'),
  //commercial
  office('Office', PropertyType.commercial, 'office'),
  building('Building', PropertyType.commercial, 'building'),
  factory('Factory', PropertyType.commercial, 'factory'),
  shop('Shop', PropertyType.commercial, 'shop'),
  warehouse('Warehouse', PropertyType.commercial, 'warehouse'),
  others('Others', PropertyType.commercial, 'others');

  const Properties(this.title, this.type, this.json);
  final String title;
  final String json;
  final PropertyType type;
}

class PropertiesFun {
  static List<Properties> properties(String json) {
    final PropertyType type = PropertyTypeFun.fromMap(json);
    switch (type) {
      case PropertyType.house:
        return <Properties>[
          Properties.house,
          Properties.upperPortion,
          Properties.farmHouse,
          Properties.flat,
          Properties.lowerPortion,
          Properties.pentHouse,
          Properties.room,
        ];
      case PropertyType.plot:
        return <Properties>[
          Properties.residentialPlot,
          Properties.plotFile,
          Properties.agriculturalLand,
          Properties.commercialPlot,
          Properties.plotForm,
          Properties.industrialLand,
        ];
      case PropertyType.commercial:
        return <Properties>[
          Properties.office,
          Properties.building,
          Properties.factory,
          Properties.shop,
          Properties.warehouse,
          Properties.others,
        ];
      default:
        return <Properties>[
          Properties.house,
          Properties.upperPortion,
          Properties.farmHouse,
          Properties.flat,
          Properties.lowerPortion,
          Properties.pentHouse,
          Properties.room,
          Properties.residentialPlot,
          Properties.plotFile,
          Properties.agriculturalLand,
          Properties.commercialPlot,
          Properties.plotForm,
          Properties.industrialLand,
          Properties.office,
          Properties.building,
          Properties.factory,
          Properties.shop,
          Properties.warehouse,
          Properties.others,
        ];
    }
  }

  static Properties fromMap(String value) {
    switch (value) {
      case 'house':
        return Properties.house;
      case 'upperPortion':
        return Properties.upperPortion;
      case 'farmHouse':
        return Properties.farmHouse;
      case 'flat':
        return Properties.flat;
      case 'lowerPortion':
        return Properties.lowerPortion;
      case 'pentHouse':
        return Properties.pentHouse;
      case 'room':
        return Properties.room;
      case 'residentialPlot':
        return Properties.residentialPlot;
      case 'plotFile':
        return Properties.plotFile;
      case 'agriculturalLand':
        return Properties.agriculturalLand;
      case 'commercialPlot':
        return Properties.commercialPlot;
      case 'plotForm':
        return Properties.plotForm;
      case 'industrialLand':
        return Properties.industrialLand;
      case 'office':
        return Properties.office;
      case 'building':
        return Properties.building;
      case 'factory':
        return Properties.factory;
      case 'shop':
        return Properties.shop;
      case 'warehouse':
        return Properties.warehouse;
      case 'others':
        return Properties.others;
      default:
        return Properties.others;
    }
  }
}
