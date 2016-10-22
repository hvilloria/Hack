// console.log("HOLA VALE");

// var myVar = 0;
// var myArray=[true, 5.0, "chao",7 ];

// console.log(myArray);

// var myMatrix = [[Math.floor(Math.random()* 10)],[Math.floor(Math.random()* 10)]
// 								[Math.floor(Math.random()* 10)],[Math.floor(Math.random()* 10)]
// 								[Math.floor(Math.random()* 10)],[Math.floor(Math.random()* 10)]]

// for(var i = 0; i < myMatrix.length - 1; i++){
// 	var printing= ""
// 	for (var j=0; j < myMatrix.length; j++){
// 		printing = printing + myMatrix[i][j] + " ";
// 	}
// 	console.log(printing)
// }


// fibonacci= [0,1]
// puts "Ingrese un valor"
// n= gets.chomp.to_i
// for i in 2..n do
//     fibonacci[i]= fibonacci[i-1]+fibonacci[i-2]
// end


var fibonacci =0
var aux1=1
var n= 9
	
	for (i = 0; i< n; i++) {
    aux2=aux1
    aux1=fibonacci
    fibonacci= aux1+aux2
  }

//end