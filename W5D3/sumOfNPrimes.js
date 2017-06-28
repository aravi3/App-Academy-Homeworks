function isPrime(number) {
  for (let i = 2; i < number; i++) {
    if (number % i === 0) {
      return false;
    }
  }

  return true;
}

function sumOfNPrimes(n) {
  let count = 0;
  let sum = 0;
  let potentialPrime = 2;

  while (count !== n) {
    if (isPrime(potentialPrime)) {
      sum += potentialPrime;
      count++;
    }

    potentialPrime++;
  }

  return sum;
}

console.log(sumOfNPrimes(0));
console.log(sumOfNPrimes(1));
console.log(sumOfNPrimes(4));
