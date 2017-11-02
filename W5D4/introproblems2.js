function titleize(array, callback) {
  let result = array.map(function(i) {
    return "Mx. " + (i[0].toUpperCase() + i.slice(1)) + " Jingleheimer Schmidt";
  })
  callback(result);
}

titleize(['hello','there','good','sir'], function(names) {
  names.forEach(function(name) {
    console.log(name);
  })
});


let Elephant = function(name, height, tricks) {
  this.name = name;
  this.height = height;
  this.tricks = tricks;
}

Elephant.prototype.trumpet = function() {
  console.log(`${this.name} the elephant goes phrRRRRRRRRR!!!!!!`);
}

Elephant.prototype.grow = function() {
  this.height += 12;
}

Elephant.prototype.addTrick = function(trick) {
  this.tricks.push(trick)
}

Elephant.prototype.play = function() {
  rand = Math.floor(Math.random() * this.tricks.length);
  console.log(this.tricks[rand])
}

Elephant.paradeHelper = function(elephant) {
  console.log(`${elephant.name} is trotting by!`)
}



function dinerBreakfast() {
  let order = "I'd like cheesy scrambled eggs please";
  console.log(order)

  return function(food) {
    order += ' '
    order += food
    console.log(order)
  }
}
