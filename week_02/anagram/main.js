
const anagram = function (word, list) {
    let matches = [];

    const sortedWord = word.split('').sort().join('').trim();
    // console.log(sortedWord);

    for (let i = 0; i < list.length; i++) {
        const sortedListItem = list[i].split('').sort().join('').trim();
        // console.log(sortedListItem);

        if (sortedListItem === sortedWord) {
            matches.push(list[i]);
        }
    }

    return matches;
}

console.log(anagram("listen", ["enlists", "google", "inlets", "banana"]));
console.log(anagram("debit card", ["money", "bad credit", "consumerism"]));
console.log(anagram("define anagram", ["google", "joke", "nerd fame again"]));