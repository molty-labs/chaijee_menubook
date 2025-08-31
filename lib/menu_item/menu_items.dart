import 'package:my_menu/util/pair.dart';

class MenuItems {

  /// page 1 content

  static const Map<String, String> chaiItems = {
    "CHOTU CHAIJEE"             : "25",
    "DESI / PLAIN"              : "35",
    "GUD"                       : "35",
    "TULSI / ADRAK / ELAICHI"   : "40",
    "BOMBAY CUTTING"            : "45",
    "MASALA"                    : "45",
    "TANDOORI"                  : "45",
    "CHOCOLATE / BUTTERSCOTCH"  : "45",
    "THANDAI / PAAN"            : "45",
  };

  static const Map<String, Pair<String, String>> coffeeItems = {
    "CAPPUCCINO"        : Pair("65", "110"),
    "IRISH MOCHA"       : Pair("75", "130"),
    "HAZELNUT"          : Pair("85", "140"),
    "CARAMEL"           : Pair("85", "140"),
  };

  static const Map<String, String> greenTeaItems = {
    "TULSI ADRAK"       : "45",
    "LEMON GRASS"       : "45",
    "MINT"              : "45",
    "APPLE"             : "55",
    "KASHMIRI KAHWA"    : "65",
  };

  static const Map<String, String> icedTea = {
    "LEMON"             : "90",
    "PEACH"             : "90",
  };

  static const Map<String, String> milkShakes = {
    "MANGO"                 : "110",
    "OREO CHOCOLATE"        : "110",
    "KITKAT"                : "130",
    "BLUEBERY"              : "130",
    "STRAWBERRY BUBBLEGUM"  : "120",
  };


  /// page 2 content

  static const Map<String, String> coolerItems = {
    "LEMON MINT GINGER"     : "85",
    "KALA KHATTA"           : "85",
    "FRUIT BEAR"            : "95",
    "WATERMELON WONDER"     : "95",
    "KOKUM FIZZ"            : "95",
  };

  static const Map<String, String> snacksItems = {
    "VADAPAV"                 : "45",
    "SAMOSA"                  : "35",
    "DAL PYAAZ KACHORI"       : "55",
    "ALLO PYAAZ PAKORA"       : "60",
    "BUN MAKHAN"              : "50",
    "BUN SAMOSA"              : "70",
    "CHESSY PERI PERI FRIES"  : "90",
    "PAV BHAJI"               : "110",
    "VEG CUTLET"              : "70",
    "PANEER BREAD PAKORA"     : "50",
    "POTATO CHEESE BALLS"     : "120",
    "MUFFINS"                 : "45",
  };

  static const Map<String, String> momoItems = {
    "VEGGIES"                 : "80",
    "PANEER & ONION"          : "100",
  };

  static const Map<String, String> sandwichItems = {
    "VEG CHEESE GRILL"        : "100",
    "TANDOORI PANEER TIKKA"   : "120",
  };

  static const Map<String, String> maggieItems = {
    "PLAIN MASALA"            : "50",
    "BUTTER FRY"              : "60",
    "VEGGIE CHEESE"           : "90",
  };

  /// page 3 content

  static const Map<String, String> waffleItems = {
    "Chocolate Truffle ( Dark / White )"            : "100",
    "Crunchy Butterscotch"                          : "100",
    "Blueberry White Chocolate"                     : "110",
    "Hazelnut Chocolate"                            : "110",
    "Coffee Chocolate"                              : "110",
    "Lotus Biscoff Truffle"                         : "120",
  };

  static const Map<String, String> pancakesItems = {
    "Double Chocolate Banana"                       : "100",
    "Blueberry Chocolate"                           : "110",
  };
}