String longestUniqueSubstring(String str) {
  int n = str.length;
  int maxLength = 0;
  int start = 0;
  String longestSubstring = "";

  Map<String, int> seen = {};

  for (int end = 0; end < n; end++) {
    String char = str[end];

    if (seen.containsKey(char)) {
      start = seen[char]! + 1;
      seen.removeWhere((k, v) => v < start);
    }

    seen[char] = end;

    if (end - start + 1 > maxLength) {
      maxLength = end - start + 1;
      longestSubstring = str.substring(start, end + 1);
    }
  }

  return longestSubstring;
}
