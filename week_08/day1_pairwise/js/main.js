const pairwise = function(array, sum) {
    const matchedPairs = [];
    const matchedPairsIndices = [];
  
    // loop through the array
    for (let i = 0; i < array.length - 1; i++) {
      const firstNum = array[i];
      console.log('**** firstNum', firstNum);
      
      // nested loop that loop through the rest of the array and find the number that is sum eq to `sum`
      if (!matchedPairs.flat().includes(firstNum)) {
        for (let j = i + 1; j < array.length; j++) {
          const secondNum = array[j];
          console.log('secondNum', secondNum);
    
          if (firstNum + secondNum === sum) {
            matchedPairs.push([firstNum, secondNum]);
            matchedPairsIndices.push([i, j]);
            console.log([firstNum, secondNum]);
            console.log([i, j]);
            break;
          }
        }
      }
    }
  
    console.log(matchedPairs);
    console.log(matchedPairsIndices);
  
    matchedPairsIndices.forEach(array => {
      console.log(`There is a pair at indices: [${array.join(', ')}]`);
    })
  
    return matchedPairsIndices.flat().reduce((accumulator, currentValue) => accumulator + currentValue);
  };
  
  // console.log(pairwise([7, 9, 11, 13, 15], 20));
  
  console.log(pairwise([7, 9, 11, 13, 15, 7, 13, 5, 5, 15], 20));