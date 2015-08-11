// Check if the user is ready to play!
confirm("I am ready to play!");

//Verify age
var age = prompt("What's your age?");

if (age > 13)
{
    console.log("You can play, but I'm not responsible!")
}
else
{
    console.log("Play on!")
}

//Storyline
console.log("You are at a Justin Bieber concert, and you hear this lyric 'Lace my shoes off, start racing.'")

console.log("Suddenly, Bieber stops and says, 'Who wants to race me?'")

//Insert choice 'Yes/No'
var userAnswer = prompt("Do you want to race Bierber on stage?");

if (userAnswer === "Yes")
{
    console.log("You and Bieber start racing. It's neck and neck! You win by a shoelace!")
}
else
{
    console.log("Oh no! Bieber shakes his head and sings 'I set a pace, so I can race without pacing.'")
}

//Ask for feedback score
var feedback = prompt("Give this game a score on 10!")

if (feedback > 8)
{
    console.log("Thank you! We should race at the next concert!")
}
else
{
    console.log("I'll keep practicing coding and racing.")
}