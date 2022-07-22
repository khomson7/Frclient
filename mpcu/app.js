const cron = require('node-cron');
const express = require('express')
var request = require('request');
var axios = require('axios');
var qs = require('qs');
const app = express()
require('dotenv').config({ path: '../config.conf' })
const port = process.env.MPCU_PORT || 3011;
let user = process.env.USER;
let pass = process.env.PASSWORD;
let hh = process.env.HH;
let mm = process.env.MM;
const local_url  = process.env.LOCAL_URL;
const day_1  = process.env.DAY_1;
const day_2 = process.env.DAY_2;
const main_url  = process.env.MAIN_URL;
const mpcu_url  = process.env.MPCU_URL;
const line_token = process.env.line_token;
const lineNotify = require('line-notify-nodejs')(`${line_token}`);

const HandyStorage = require('handy-storage');
const { response } = require('express');
const storage = new HandyStorage({
    beautify: true
});

const storage2 = new HandyStorage({
  beautify: true
});

app.get('/authen', (req, res) => { 

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
          .then(() => {
            console.log('success!');
          });
          console.log({ok:true})
           
          });

          storage2.connect('./information2.json'); 
          var config = {
            method: 'get',
            url: `${main_url}/configs/setcron`,
            headers: { }
          };
          axios(config)
          .then(function (response) {
            const text = '{"employees":'+ JSON.stringify(response.data) +'}';
           storage2.connect('./information2.json'); 
           storage2.setState({
              text
          })
          })
          .catch(function (error) {
            console.log(error);
          });
res.send({ok:true});

})

app.get('/', (req, res) => { 

         storage2.connect('./information2.json');
          let text = storage2.state.text;

          const obj = JSON.parse(text);
          // let dd_1   = obj.employees[1].icode;
           let dd_0   = obj.employees[0].dd;
           let m_0  = obj.employees[0].m;
           let hh0   = obj.employees[0].hh;
           let mm0   = obj.employees[0].mm;
         
          cron.schedule(`${mm0} ${hh0} ${dd_0} ${m_0} *`, function() {

            lineNotify.notify({
              message: 'ทดสอบการแจ้งเตือนวันที่ '+`${dd_1}/${m_1}`,
            }).then(() => {
              console.log('send completed!'); 
            });
      

          })


//sdrugitems
let dd_1   = obj.employees[1].dd;
let m_1  = obj.employees[1].m;
let hh1   = obj.employees[1].hh;
let mm1   = obj.employees[1].mm;

cron.schedule(`${mm1} ${hh1} ${dd_1} ${m_1} *`, function() {

  storage.connect('./information.json'); 
  let token = storage.state.token
  const obj0 = JSON.parse(token);
  const token2 = 'Bearer '+obj0.token;
  var data = '';

    var config0 = {
      method: 'delete',
      url: `${local_url}/drugs/drugitems`,
      headers: { 
          'Authorization': token2
      }
    };
    
    axios(config0)
    .then(function () {
     // console.log(JSON.stringify(response.data));
    })
    .catch(function (error) {
      console.log(error);
    });



  //drugitems
  const url = process.env.LOCAL_URL+'/drugs/drugitems';

  var config = {
      method: 'get',
      url: `${main_url}/drugs/drugitems`,
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

     

      const mess = 'drugimport';
    //  res.send({ok: mess});
      lineNotify.notify({
        message: mess,
      }).then(() => {
        console.log(mess+' complete!'); 
      });
      
      console.log({ok: 'post to local'})
  
    })


    .catch(function (error) {
      console.log(error);
    });

})

let dd_2   = obj.employees[2].dd;
let m_2  = obj.employees[2].m;
let hh2   = obj.employees[2].hh;
let mm2   = obj.employees[2].mm;
cron.schedule(`${mm2} ${hh2} ${dd_2} ${m_2} *`, function() {
  storage.connect('./information.json'); 
  let token = storage.state.token
  const obj0 = JSON.parse(token);
  const token2 = 'Bearer '+obj0.token;
  var data = '';



    var config1 = {
      method: 'delete',
      url: `${local_url}/drugs/sdrugitems`,
      headers: { 
          'Authorization': token2
      }
    };
    
    axios(config1)
    .then(function () {
     // console.log(JSON.stringify(response.data));
    })
    .catch(function (error) {
      console.log(error);
    });


  //drugitems
  const url = process.env.LOCAL_URL+'/drugs/sdrugitems';

  var config = {
      method: 'get',
      url: `${main_url}/drugs/sdrugitems`,
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

     

      const mess = 'sdrugimport';
    //  res.send({ok: mess});
      lineNotify.notify({
        message: mess,
      }).then(() => {
        console.log(mess+' complete!'); 
      });
      
      console.log({ok: 'post to local'})
  
    })


    .catch(function (error) {
      console.log(error);
    });

    })


    let dd_3   = obj.employees[3].dd;
    let m_3  = obj.employees[3].m;
    let hh3   = obj.employees[3].hh;
    let mm3  = obj.employees[3].mm;

    cron.schedule(`${mm3} ${hh3} ${dd_3} ${m_3} *`, function() {
      
      storage.connect('./information.json'); 
      let token = storage.state.token
      const obj0 = JSON.parse(token);
      const token2 = 'Bearer '+obj0.token;
      var data = '';
      
      const url = process.env.MAIN_URL+'/covs/covac';
      var config = {
          method: 'get',
          url: `${local_url}/covs/covac`,
          headers: { 
            'Authorization': token2
          },
          data : data
        };
        
        axios(config)
      
        .then(function (response) {
          
      console.log({ok: 'get from main_service'})
    
          for (var i in response.data) {
      
           const options = {
              method: 'POST',
              headers: { 'content-type': 'application/x-www-form-urlencoded' ,
           'Authorization': token2 
            
            },
              data: qs.stringify(response.data[i]),
              url,
           timeout: 100000,
            };
      
            axios(options)
            .then(function (response) {    
              
            })
            .catch(function (error) {
              console.log(error);
            });
            
          }
    
          var config2 = {
            method: 'get',
            url: `${local_url}/covs/chksend`,
            headers: { 
             // 'Authorization': token2
            },
           // data : data
          };
          
          axios(config2)
          lineNotify.notify({
            message: 'CovacSend',
          }).then(() => {
            console.log('send completed!'); 
          });
    
        })
        .catch(function (error) {
          console.log(error);
        });
      
       // res.send({ok: true});
    
      });
      res.send({ok: true});
    })



  //opdallergy
  app.get('/opdallergy', (req, res) => { 

    storage.connect('./information.json'); 
  let token = storage.state.token
  const obj0 = JSON.parse(token);
  const token2 = 'Bearer '+obj0.token;
  var data = '';
  const url = process.env.LOCAL_URL+'/persons/opdallergy';

    var config0 = {
      method: 'delete',
      url: `${local_url}/persons/opdallergy/${day_1}/${day_2}`,
      headers: { 
          'Authorization': token2
      }
    };
    
    axios(config0)
    .then(function (response) {
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

      const mess = 'opdallergy';
      res.send({ok: mess});
      lineNotify.notify({
        message: mess,
      }).then(() => {
        console.log(mess+' complete!'); 
      });
      
      console.log({ok: 'post to local'})
  
    })
    .catch(function (error) {
      console.log(error);
    });


  })

 

  app.get('/drug', (req, res) => { 

    storage.connect('./information.json'); 
  let token = storage.state.token
  const obj0 = JSON.parse(token);
  const token2 = 'Bearer '+obj0.token;
  var data = '';

    var config0 = {
      method: 'delete',
      url: `${local_url}/drugs/drugitems`,
      headers: { 
          'Authorization': token2
      }
    };
    
    axios(config0)
    .then(function () {
     // console.log(JSON.stringify(response.data));
    })
    .catch(function (error) {
      console.log(error);
    });



  //drugitems
  const url = process.env.LOCAL_URL+'/drugs/drugitems';

  var config = {
      method: 'get',
      url: `${main_url}/drugs/drugitems`,
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

     

      const mess = 'drugimport';
      res.send({ok: mess});
      lineNotify.notify({
        message: mess,
      }).then(() => {
        console.log(mess+' complete!'); 
      });
      
      console.log({ok: 'post to local'})
  
    })


    .catch(function (error) {
      console.log(error);
    });

  })

 

//sdrug

    app.get('/sdrug', (req, res) => { 

      storage.connect('./information.json'); 
      let token = storage.state.token
      const obj0 = JSON.parse(token);
      const token2 = 'Bearer '+obj0.token;
      var data = '';
    
    
    
        var config1 = {
          method: 'delete',
          url: `${local_url}/drugs/sdrugitems`,
          headers: { 
              'Authorization': token2
          }
        };
        
        axios(config1)
        .then(function () {
         // console.log(JSON.stringify(response.data));
        })
        .catch(function (error) {
          console.log(error);
        });
    
    
      //drugitems
      const url = process.env.LOCAL_URL+'/drugs/sdrugitems';
    
      var config = {
          method: 'get',
          url: `${main_url}/drugs/sdrugitems`,
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
    
    
          const mess = 'sdrugimport';
          res.send({ok: mess});
          lineNotify.notify({
            message: mess,
          }).then(() => {
            console.log(mess+' complete!'); 
          });
          
          console.log({ok: 'post to local'})
      
        })
    
    
        .catch(function (error) {
          console.log(error);
        });
  
    })


 
//});

app.listen(port, () => {
  console.log(`app listening on port ${port}`)
})

