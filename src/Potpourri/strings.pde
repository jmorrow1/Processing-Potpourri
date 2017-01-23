//an implementation of the levenshtein distance metric,
//a measure of the "distance" between two strings.
//returns an integer representing the number of edits
//(deletions, insertions, or substitutions) required to
//transform one string into the other, a measure of 
int stringDist(String s, String t) {
  s = " " + s;
  t = " " + t;

  int[][] matrix = new int[s.length()][t.length()];

  for (int i=0; i<s.length(); i++) {
    matrix[i][0] = i;
  }

  for (int j=0; j<t.length(); j++) {
    matrix[0][j] = j;
  }

  for (int j=1; j<t.length(); j++) {
    for (int i=1; i<s.length(); i++) {
      int substitutionCost = (s.charAt(i) == t.charAt(j)) ? 0 : 1;
      matrix[i][j] = min(matrix[i-1][j] + 1, //deletion
      matrix[i][j-1] + 1, //insertion
      matrix[i-1][j-1] + substitutionCost); //substitution
    }
  }

  return matrix[s.length()-1][t.length()-1];
}