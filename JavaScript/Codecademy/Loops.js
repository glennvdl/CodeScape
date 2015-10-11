//# For loop introduction

//Example 1

for (var counter = 1; counter < 11; counter++) {
	console.log(counter);
}

//Example 2
  
for (var i = 5; i < 11; i = i + 1){
	console.log(i);
}

//Example3
for (var i = 5; i < 51; i+=5) {
	console.log(i);
}

//Example4
for (var i = 10; i >= 0; i--) {
	console.log(i);
}

//Example5
var cities = ["Melbourne", "Amman", "Helsinki", "NYC", "Brussels"];

for (var i = 0; i < cities.length; i++) {
    console.log("I would like to visit " + cities[i]);
}

//Example6
var names = ["Jos", "Pol", "Felix", "André", "Jozef"];

for (var i = 0; i < names.length; i++) {
    console.log("I know someone called " + names[i]);
}

