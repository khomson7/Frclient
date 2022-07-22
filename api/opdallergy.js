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

cron.schedule('05 10 * * *', function() {

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


cron.schedule('10 10 * * *', function() {
  console.log('---------------------');
  console.log('Running Cron Job');

storage.connect('./information.json'); 
let token = storage.state.token
const obj0 = JSON.parse(token);
const token2 = 'Bearer '+obj0.token;
var data = '';

const url = process.env.LOCAL_URL+'/persons/opdallergy';
const main_url  = process.env.MAIN_URL;
const local_url  = process.env.LOCAL_URL;
const day_1  = process.env.DAY_1;
const day_2 = process.env.DAY_2;


//const lineNotify = require('line-notify-nodejs')(`${line_token}`);

var config0 = {
    method: 'delete',
    url: `${local_url}/persons/opdallergy/${day_1}/${day_2}`,
    headers: { 
        'Authorization': token2
    }
  };
  
  axios(config0)
  .then(function (response) {
   // console.log(JSON.stringify(response.data));
  })
  .catch(function (error) {
    console.log(error);
  });

var config = {
    method: 'get',
    url: `${main_url}/persons/opdallergy/${day_1}/${day_2}`,
    headers: { 
      'Authorization': token2
    },
    data : data
  };
  
  axios(config)

  .then(function (response) {
    
console.log({ok: 'get from maain_service'})
    //  let res = response;
   // console.log(JSON.stringify(response.data));

    for (var i in response.data) {


     const options = {
        method: 'POST',
        headers: { 'content-type': 'application/x-www-form-urlencoded' ,
     'Authorization': token2 
      
      },
        data: qs.stringify(response.data[i]),
        url,
    //  timeout: 10000,
      };

      axios(options)
      .then(function (response) {    
        
      })
      .catch(function (error) {
        console.log(error);
      });
      
    }
    
    console.log({ok: 'post to local'})

  })
  .catch(function (error) {
    console.log(error);
  });

});


cron.schedule('20 10 * * *', function() {

  var config = {
    method: 'get',
    url: `${local_url}/opdallergys/process`,
    headers: { 
      'Authorization': token2
    },
    data : data
  };
  
  

  axios(config)

  .then(function (response) {
   const data0 = 'Allergy Update: '+JSON.stringify(response.data);

    lineNotify.notify({
      message: data0,
    }).then(() => {
      console.log('send completed!');
    })
    .catch(function (error) {
      console.log(error)
    });
    
//console.log({ok: 'get from maain_service'})

  })
  .catch(function (error) {
    console.log(error)
  });

});



/*
lineNotify.notify({
  message: 'send test',
}).then(() => {
  console.log('send completed!');
}); */

  /*
cron.schedule('* * * * *', function() {
  console.log('---------------------');
  console.log('Running Cron Job2');



});

*/

  