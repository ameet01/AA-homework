function madLib(verb, adj, noun) {
  console.log('We shall ' + verb.toUpperCase() + ' the ' + adj + ' ' + noun);
}

function isSubtring(searchString, subString) {
  for(var i = 0; i < searchString.length-1; i++) {
    for(var j = i+1; j <= searchString.length; j++) {
      let sub = searchString.slice(i, j);
      if(sub === subString) {
        return true;
      }
    }
  }
  return false;
}


function fizzbuzz(array) {
  var result = []
  for(let i = 0; i < array.length; i ++) {
    if(array[i] % 15 === 0) {
      continue;
    } else if(array[i] % 5 === 0) {
      result.push(array[i]);
    } else if(array[i] % 3 === 0) {
      result.push(array[i]);
    }
  }
  console.log(result);
}

function isPrime(number) {
  if(number < 2) {
    return false;
  }
  for(let i = 2; i < number; i++) {
    if(number % i === 0) {
      return false;
    }
  }
  return true;
}

function sumOfNPrimes(n) {
  let sum = 0;
  let counter = 0;
  let i = 0;
  while(counter < n) {
    if(isPrime(i) === true) {
      sum += i;
      counter += 1;
    }
    i = i + 1;
  }
  return sum;
}
