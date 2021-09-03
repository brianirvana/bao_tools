const fs = require("fs");
const { parse } = require("path");
const { stringify } = require("querystring");

const readAFile = (pathing, encoding) => {
  try {
    const data = fs.readFileSync(pathing, encoding)
    let splitedData = data.split("\n");
    return splitedData;
  } catch (err) {
    console.error(err);
  }
};

const printer = async (array) => {
  for (let index = 0; index < array.length; index++) {
    console.log(array[index]);
  }
};

const parser = (splitedstring) => {
  let container = [];
  let newobj = {};
  for (let index = 0; index < splitedstring.length; index++) {
    if (splitedstring[index].charAt(0) === "[") {
      if (newobj) {
        container.push(newobj);
      }
      newobj = {};
      const objectlike = { ObjectNumber: splitedstring[index] };
      Object.assign(newobj, objectlike);
    } else {
      const splitedproperty = (splitedstring[index].toUpperCase()).split("=");
      if(splitedproperty[0].charAt(0) != "'")
      {
      const propname = splitedproperty[0];
      const propvalue = splitedproperty[1];
      const objectlike = {};
      objectlike[propname] = propvalue;
      Object.assign(newobj, objectlike);
      }
    }
  }
  return container;
};

function removeEmpty(obj) {
  return Object.entries(obj)
    .filter(([_, v]) => v != null)
    .reduce((acc, [k, v]) => ({ ...acc, [k]: v }), {});
}

const propertyDeleter = (parsedfile) => {
  let newContainer = [];
  for (let index = 0; index < parsedfile.length; index++) {
    newContainer.push(removeEmpty(parsedfile[index]));
  }
  return newContainer;
};

const accountKeys = (removedEmpty) => {
  let container = [];
  for (let index = 0; index < removedEmpty.length; index++) {
    const tempKeys = Object.getOwnPropertyNames(removedEmpty[index]);
    for (let index2 = 0; index2 < tempKeys.length; index2++) {
      if (!container.includes(tempKeys[index2])) {
        container.push(tempKeys[index2]);
      }
    }
  }
  return container;
};



const propertyUncommenter = (parsedfile) => {
  const regex = /.*(?=\')/
  parsedfile.forEach(element => {
      for (const key in element) {
        if(/\'/.test(element[key]))
        element[key] = element[key].match(regex)[0]+'\r'
      }
  });
  }

/*
function s2ab(s) {
  var buf = new ArrayBuffer(s.length); //convert s to arrayBuffer
  var view = new Uint8Array(buf); //create uint8array as viewer
  for (var i = 0; i < s.length; i++) view[i] = s.charCodeAt(i) & 0xff; //convert to octet
  return buf;
}
*/

const dothings = () => {
  const fileContent = readAFile("./OBJ.dat", "utf-8");
  const parsedfile = parser(fileContent);
  const parsedFileWithoutBlanks = propertyDeleter(parsedfile)
  propertyUncommenter(parsedFileWithoutBlanks);
  const toPrint = JSON.stringify(parsedFileWithoutBlanks)
  fs.writeFileSync("OBJ.txt", toPrint);
};

dothings();
