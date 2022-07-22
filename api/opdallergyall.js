const cron = require('node-cron');
var request = require('request');
var qs = require('qs');
require("dotenv").config();
var axios = require('axios');
const HandyStorage = require('handy-storage');
const storage = new HandyStorage({
    beautify: true
});



storage.connect('./information.json'); 
let token = storage.state.token
const obj0 = JSON.parse(token);
const token2 = 'Bearer '+obj0.token;
var data = '';

const url = process.env.LOCAL_URL+'/persons/opdallergy';
const main_url  = process.env.MAIN_URL;
const local_url  = process.env.LOCAL_URL;
const day_1  = 0;
const day_2 = 1000;

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
    url: `${main_url}/persons/opdallergyall`,
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



  