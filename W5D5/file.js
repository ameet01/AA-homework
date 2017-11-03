window.setTimeout(function () {
  alert('HAMMER TIME!');
}, 5000);


function hammerTime (time) {
  window.setTimeout(function () {
    alert(`${time} is HAMMER TIME!`);
  });
}



const readline = require('readline');

const reader = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});


function teaAndBiscuits() {
  let first, second, firstRes, secondRes;
  reader.question('Would you like some tea?', function(response1) {
    first = response1;
    console.log(`You replied with ${response1}`);
    reader.question('Would you like some biscuits', function(response) {
      second = response;
      console.log(`You replied with ${response}`);

      if(first === 'yes') {
        firstRes = 'do';
      } else if(first === 'no') {
        firstRes = 'don\'t';
      }

      if(second === 'yes') {
        secondRes = 'do';
      } else if(second === 'no') {
        secondRes = 'don\'t';
      }

      console.log(`So you ${firstRes} want tea and you ${secondRes} want biscuits.`);
      reader.close();
    });
  });
}




function Cat () {
  this.name = 'Markov';
  this.age = 3;
}

function Dog () {
  this.name = 'Noodles';
  this.age = 4;
}

Dog.prototype.chase = function (cat) {
  console.log(`My name is ${this.name} and I'm chasing ${cat.name}! Woof!`);
};

const Markov = new Cat ();
const Noodles = new Dog ();

Noodles.chase(Markov);
Noodles.chase.call(Markov, Noodles);
Noodles.chase.apply(Markov, [Noodles]);
