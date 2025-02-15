function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else if (x < 0){
    return 0; //Added base case for negative numbers
  } else {
    return x * foo(x - 1);
  }
}

function bar(x: int): int {
  if (x == 0) {
    return 0;
  } else if (x < 0){
    return 0; //Added base case for negative numbers
  } else {
    return x + bar(x - 1);
  }
}

function baz(x: int, y: int): int {
  if (x == 0) {
    return y;
  } else if (x < 0) {
    return y; //Added base case for negative numbers
  } else {
    return baz(x - 1, y + 1);
  }
}

function main(): void {
  echo foo(5);
  echo bar(5);
  echo baz(5, 0);
}
