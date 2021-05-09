//import Data from server as @data
//import vnc settings text
//combine the data.ip_address with th vnc settings text
fs=require('fs');

const createVncFile = (data, txt)=>{

    fs.writeFile(
    $`{data.name}` + '.vnc',
    $`{combinedText}`,
        (err)=>{
            if (err) return console.log(err);
            console.log($`{data.name}` + 'הוקם בהצלחה');
    })

}