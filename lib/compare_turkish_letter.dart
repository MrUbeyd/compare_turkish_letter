library compare_turkish_letter;

/// This class includes the string comparison method by Turkish characters.
class CompareTurkishLetter {
  static final Map<String, int> turkishLetterMap = {
    "A": 1,
    "a": 2,
    "B": 3,
    "b": 4,
    "C": 5,
    "c": 6,
    "Ç": 7,
    "ç": 8,
    "D": 9,
    "d": 10,
    "E": 11,
    "e": 12,
    "F": 13,
    "f": 14,
    "G": 15,
    "g": 16,
    "Ğ": 17,
    "ğ": 18,
    "H": 19,
    "h": 20,
    "I": 21,
    "ı": 22,
    "İ": 23,
    "i": 24,
    "J": 25,
    "j": 26,
    "K": 27,
    "k": 28,
    "L": 29,
    "l": 30,
    "M": 31,
    "m": 32,
    "N": 33,
    "n": 34,
    "O": 35,
    "o": 36,
    "Ö": 37,
    "ö": 38,
    "P": 39,
    "p": 40,
    "R": 41,
    "r": 42,
    "S": 43,
    "s": 44,
    "Ş": 45,
    "ş": 46,
    "T": 47,
    "t": 48,
    "U": 49,
    "u": 50,
    "Ü": 51,
    "ü": 52,
    "V": 53,
    "v": 54,
    "Y": 55,
    "y": 56,
    "Z": 57,
    "z": 58,
  };
  static int charAint = 0;
  static int charBint = 0;

  /// Method for compare 2 string which includes Turkish characters
  static int compareTurkishLetter(String a, String b) {
    int min = a.length;
    if (b.length < a.length) min = b.length;
    for (int i = 0; i < min; ++i) {
      final String charA = a[i];
      final String charB = b[i];
      if (turkishLetterMap.containsKey(charA)) {
        charAint = turkishLetterMap[charA] ?? 0;
      }
      if (turkishLetterMap.containsKey(charB)) {
        charBint = turkishLetterMap[charB] ?? 0;
      }
      if (charAint > charBint) {
        return 1;
      } else if (charAint < charBint) {
        return -1;
      }
    }
    if (a.length < b.length) {
      return -1;
    } else if (a.length > b.length) {
      return 1;
    }
    return 0;
  }

  /// Method for compare list which includes Turkish characters
  static List<String> sortTurkishLetterList(List<String> list) {
    List<String> newList = [];
    newList = list;

    newList.sort(
      (a, b) => compareTurkishLetter(a, b),
    );

    return newList;
  }
}
