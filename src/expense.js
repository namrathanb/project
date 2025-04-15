document.getElementById("form1").onsubmit=function() {
    //displays the response DOM element
 document.getElementById("response").style.display = "block";

 document.getElementById("answer").innerHTML = "";

   goals = document.querySelector('input[name = "goals"]:checked').value;

   jobStat = document.querySelector('input[name = "jobStat"]:checked').value;

   financeStat = document.querySelector('input[name = "financeStat"]:checked').value;

   wkSpent = document.querySelector('input[name = "wkSpent"]:checked').value;

   spentFreq = document.querySelector('input[name = "spentFreq"]:checked').value;


   // initialize score variables
   saver = 0;
   spender = 0;
   debtor = 0;


   //function to calculate score for each question
   function eachscore(x){
   if(x == "saver") { saver = saver + 1}
   if(x == "spender") { spender = spender + 1}
   if(x == "debtor") { debtor = debtor + 1}
   }

   //call function for each question
   eachscore(eval("goals"));
   eachscore(eval("jobStat"));
   eachscore(eval("financeStat"));
   eachscore(eval("wkSpent"));
   eachscore(eval("spentFreq"));


   all = [saver, spender, debtor];

   var  xValues = ["Saver", "Spender", "Debtor"];
   var yValues = [all[0], all[1], all[2]]; 
   var barColors = ["rgb(83, 112, 194)", "rgb(11, 32, 78)", "#2b5797"];
   new Chart("myChart", {
    type: "pie",
    data: {
      labels: xValues,
      datasets: [{
        backgroundColor: barColors,
        data: yValues
      }]
    },
    options: {
      title: {
        display: true,
        text: "Spending Breakdown"
      }
    }
  });

 //get the max score  in the array
 maxscore = Math.max.apply(Math,all);

 // object holding scores and feedback
 scores = [{index:0, feedback: "saver"},
 {index:1, feedback: "spender"},
 {index:2, feedback: "debtor"}];

 //figure out which index # holds the max score
 for(i=0; i<all.length; i++) {
 if(all[i]==maxscore) {
 //this version would allow for appending multiple answers; replace statement above
 document.getElementById("answer").innerHTML += scores[i].feedback + ", ";
 }
 }

return false; 
    }// end the submit function
