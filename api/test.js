const cron = require('node-cron');
var request = require('request');
var qs = require('qs');
require("dotenv").config();
var axios = require('axios');
const line_token = process.env.line_token;
const lineNotify = require('line-notify-nodejs')(`${line_token}`);
const HandyStorage = require('handy-storage');
const storage = new HandyStorage({
    beautify: true
});


storage.connect('./information.json'); 
let token = storage.state.token
const obj0 = JSON.parse(token);
const token2 = 'Bearer '+obj0.token;
var data = '';

const local_url  = process.env.LOCAL_URL;


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

  

  