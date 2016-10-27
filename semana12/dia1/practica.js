

var arr=["angel","romer","juca","jorge"];

function returnName(array){
  var newArr= [];
  for (var i = 0; i < array.length; i++){

    newArr[i] = (function(n){
      return function(){
        return array[n] + " " + n
      };

    })(i);
  }
  return newArr
}

console.log(returnName(arr)[0]());
// returnName()[0]()
