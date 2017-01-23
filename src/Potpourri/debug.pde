static String toString(boolean[][] bs) {
  StringBuilder s = new StringBuilder();
  int i=0;
  while (i < bs.length) {
    int j=0;
    while (j < bs[i].length) {
      s.append((bs[i][j]) ? "x " : ". ");
      j++;
    }
    s.append("\n");
    i++;
  }
  return s.toString();
}