```hack
function foo(x: int): int {
  return x + 1;
}

function bar(x: int): int {
  return foo(x) * 2;
}

function baz(x: int): int {
  return bar(x) + 1;
}

function main(): void {
  var x = 5;
  var y = baz(x);
  echo y; // Expected output: 12
}
```