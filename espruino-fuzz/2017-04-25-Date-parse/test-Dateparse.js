var fd = E.openFile('./date.txt');
var q = fd.read(100);
Date.parse(q);
