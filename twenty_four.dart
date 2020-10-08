// cerner_2^5_2020
// Implements Towers of Hanoi Game
main() {
  // Formats a move to output.
  String say(String from, String to) => "move $from -> $to"; 

  // Makes a move and recursively triggers next moves, if any.
  hanoi(int discs, String a, String b, String c) {
    // Makes a move only if there are discs.
    if (discs > 0) {
      // Announces this move, from A to C.
      print(say(a, c));
      // Triggers the next step: from A to B.
      hanoi(discs - 1, a, c, b);
      // Triggers the last step: from B to C.
      hanoi(discs - 1, b, a, c);
    }
  }

  // Demonstrates a game with 3 discs on pegs labelled '1', '2' and '3'. 
  hanoi(3, '1', '2', '3');
}
