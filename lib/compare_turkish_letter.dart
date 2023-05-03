library compare_turkish_letter;

/// This class includes the string comparison method by Turkish characters.
class CompareTurkishLetter {
  static final Map<String, int> turkishLetterMap = {
    "0": 1,
    "1": 2,
    "2": 3,
    "3": 4,
    "4": 5,
    "5": 6,
    "6": 7,
    "7": 8,
    "8": 9,
    "9": 10,
    "A": 11,
    "a": 12,
    "B": 13,
    "b": 14,
    "C": 15,
    "c": 16,
    "Ç": 17,
    "ç": 18,
    "D": 19,
    "d": 20,
    "E": 21,
    "e": 22,
    "F": 23,
    "f": 24,
    "G": 25,
    "g": 26,
    "Ğ": 27,
    "ğ": 28,
    "H": 29,
    "h": 30,
    "I": 31,
    "ı": 32,
    "İ": 33,
    "i": 34,
    "J": 35,
    "j": 36,
    "K": 37,
    "k": 38,
    "L": 39,
    "l": 40,
    "M": 41,
    "m": 42,
    "N": 43,
    "n": 44,
    "O": 45,
    "o": 46,
    "Ö": 47,
    "ö": 48,
    "P": 49,
    "p": 50,
    "R": 51,
    "r": 52,
    "S": 53,
    "s": 54,
    "Ş": 55,
    "ş": 56,
    "T": 57,
    "t": 58,
    "U": 59,
    "u": 60,
    "Ü": 61,
    "ü": 62,
    "V": 63,
    "v": 64,
    "Y": 65,
    "y": 66,
    "Z": 67,
    "z": 68,
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
