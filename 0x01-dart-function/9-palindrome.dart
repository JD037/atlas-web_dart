bool isPalindrome(String s) {
  if (s.length < 3) {
    return false;
  }

  int start = 0;
  int end = s.length - 1;

  while (start < end) {
    if (s[start] != s[end]) {
      return false;
    }
    start++;
    end--;
  }

  return true;
}
