```hack
function foo(x: int): int {
  return x + 1;
}

function bar(x: int): int {
  return foo(x) * 2;
}

function baz(x: int64): int64 {
  return bar(x) + 1;
}

function main(): void {
  var x = 5;
  var y = baz(x);
  echo y; // Expected output: 12

  //Test with a potentially large value that causes overflow with int
  var z:int64 = 2147483647; // Maximum value for a 32-bit signed integer
  var overflowResult = baz(z);
  echo overflowResult; // Expected a value greater than the maximum 32-bit signed integer
}
```