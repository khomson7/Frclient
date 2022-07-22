var request = require('request');
require("dotenv").config();
let user = process.env.user;
let pass = process.env.pass;
const main_url  = process.env.MAIN_URL;

const HandyStorage = require('handy-storage');
const storage = new HandyStorage({
    beautify: true
});
 
storage.connect('./information.json'); 
            
var options = {
  
  'method': 'POST',
  'url': `${main_url}/login`,
  'headers': {
    'Content-Type': 'application/json'
  },
  body: JSON.stringify({
    
    "username": user,
    "password": pass
  })

};
request(options, function (error, response) {
  if (error) throw new Error(error);

  storage.setState({
   // user: user,
    token: response.body
})

console.log({ok:true})
 
});
