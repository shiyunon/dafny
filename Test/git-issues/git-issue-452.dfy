// RUN: %dafny /compile:0 "%s" > "%t"
// RUN: %diff "%s.expect" "%t"

function TwinPrimes(): (int, int) {
  (41, 43)
}

method Main() {
  var p := TwinPrimes();  // uncommented, this gives an error, as expected
  var (x, y) := TwinPrimes();  // this should not be allowed, but the Resolver doesn't do the check
  print x, " ", y, "\n";
}

