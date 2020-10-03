//cerner_2^5_2020
//Detect HTML links

function processData(input) {
    var regex=/<a.*?href="(.*?)".*?>(.*?)<\/a>/ig;
var output=[];
input.replace(regex,function(_,href,text){ 
    output.push(href.trim()+','+text.replace(/<.*?>/g,'').trim())
});
console.log(output.join('\n'));
} 

process.stdin.resume();
process.stdin.setEncoding("ascii");
_input = "";
process.stdin.on("data", function (input) {
    _input += input;
});

process.stdin.on("end", function () {
   processData(_input);
});
