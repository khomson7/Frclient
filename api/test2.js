const cron = require('node-cron');
var request = require('request');
var qs = require('qs');
require("dotenv").config();
var axios = require('axios');
let user = process.env.user;
let pass = process.env.pass;
const main_url  = process.env.MAIN_URL;
const line_token = process.env.line_token;
const lineNotify = require('line-notify-nodejs')(`${line_token}`);

const HandyStorage = require('handy-storage');
const storage = new HandyStorage({
    beautify: true
});


/*
lineNotify.notify({
  message: 'send test',
}).then(() => {
  console.log('send completed!');
}); */

 
cron.schedule('01 13 * * *', function() {
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

});

cron.schedule('02 13 * * *', function() {
    
    lineNotify.notify({
        message: 'send test2',
      }).then(() => {
        console.log('send completed!');
      });

});

cron.schedule('03 13 * * *', function() {
    
    lineNotify.notify({
        message: 'send test3',
      }).then(() => {
        console.log('send completed!');
      });

});



  