//Functions

//#Any time you find yourself typing the same thing, but modifying only one small part, you can probably use a function.

var foodDemand = function(food) {
    console.log("I want to eat" + " " + food)
};

//Calling function
foodDemand("pizza")

//#Return a parameter and use it in a new function

// Parameter is a number, and we do math with that parameter
var timesTwo = function(number) {
    return number * 2;
};

// Call timesTwo here!
var newNumber = timesTwo(2)
console.log(newNumber);


//Function in function

var quarter = function(number) {
    return number/4;
};

if (quarter(120) % 3 === 0 ) {
  console.log("The statement is true");
} else {
  console.log("The statement is false");
}

//Example function w. if/else included

var sleepCheck = function (numHours) {
    if (numHours >= 8) 
    {
        return ("You're getting plenty of sleep! Maybe even too much!");
    }
    else
    {
        return ("Get some more shut eye!");
    }
};
