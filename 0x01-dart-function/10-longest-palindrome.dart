import '9-palindrome.dart';

String longestPalindrome(String s) {
  if (s.length < 3) {
    return "none";
  }

  String longest = "none";

  for (int i = 0; i < s.length; i++) {
    for (int j = i + 3; j <= s.length; j++) {
      String substring = s.substring(i, j);
      if (isPalindrome(substring)) {
        if (longest == "none" || substring.length > longest.length) {
          longest = substring;
        }
      }
    }
  }

  return longest;
}
