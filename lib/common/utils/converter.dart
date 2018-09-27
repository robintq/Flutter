class EnumConvert {
  static String getEnumValue(String enumString) {
    String enumValue = '';
    final splitValue = '.';
    if (enumString.contains(splitValue)) {
      var value = enumString.split('.');
      enumValue = value[1];
    }
    return enumValue;
  }
}

class TypeConverter {
  static Type typeOf<T>() => T;
}
