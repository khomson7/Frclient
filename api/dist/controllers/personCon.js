"use strict";var __awaiter=this&&this.__awaiter||function(e,s,i,c){return new(i=i||Promise)(function(t,r){function n(e){try{a(c.next(e))}catch(e){r(e)}}function o(e){try{a(c.throw(e))}catch(e){r(e)}}function a(e){var r;e.done?t(e.value):((r=e.value)instanceof i?r:new i(function(e){e(r)})).then(n,o)}a((c=c.apply(e,s||[])).next())})},__generator=this&&this.__generator||function(t,n){var o,a,s,i={label:0,sent:function(){if(1&s[0])throw s[1];return s[1]},trys:[],ops:[]},e={next:r(0),throw:r(1),return:r(2)};return"function"==typeof Symbol&&(e[Symbol.iterator]=function(){return this}),e;function r(r){return function(e){return function(r){if(o)throw new TypeError("Generator is already executing.");for(;i;)try{if(o=1,a&&(s=2&r[0]?a.return:r[0]?a.throw||((s=a.return)&&s.call(a),0):a.next)&&!(s=s.call(a,r[1])).done)return s;switch(a=0,(r=s?[2&r[0],s.value]:r)[0]){case 0:case 1:s=r;break;case 4:return i.label++,{value:r[1],done:!1};case 5:i.label++,a=r[1],r=[0];continue;case 7:r=i.ops.pop(),i.trys.pop();continue;default:if(!(s=0<(s=i.trys).length&&s[s.length-1])&&(6===r[0]||2===r[0])){i=0;continue}if(3===r[0]&&(!s||r[1]>s[0]&&r[1]<s[3])){i.label=r[1];break}if(6===r[0]&&i.label<s[1]){i.label=s[1],s=r;break}if(s&&i.label<s[2]){i.label=s[2],i.ops.push(r);break}s[2]&&i.ops.pop(),i.trys.pop();continue}r=n.call(t,i)}catch(e){r=[6,e],a=0}finally{o=s=0}if(5&r[0])throw r[1];return{value:r[0]?r[1]:void 0,done:!0}}([r,e])}}},__importDefault=this&&this.__importDefault||function(e){return e&&e.__esModule?e:{default:e}};Object.defineProperty(exports,"__esModule",{value:!0});var person_1=require("../models/person"),user_1=require("../models/user"),axios_1=__importDefault(require("axios")),qs_1=__importDefault(require("qs"));function personCon(t){return __awaiter(this,void 0,void 0,function(){var q,A,r=this;return __generator(this,function(e){return q=new person_1.PersonModel,new user_1.UserModel,A=t.db3,t.get("/person/:day",{preValidation:[t.authenticate]},function(n,o){return __awaiter(r,void 0,void 0,function(){var r,t;return __generator(this,function(e){switch(e.label){case 0:return e.trys.push([0,2,,3]),r=n.params,r=r.day,[4,q.SearchPerson(A,r)];case 1:return t=e.sent(),o.send({ok:!0,data:t}),[3,3];case 2:return t=e.sent(),console.log(t),o.code(500).send({ok:!1,error:t}),process.exit(0),[3,3];case 3:return[2]}})})}),t.get("/personepi/:day",{preValidation:[t.authenticate]},function(n,o){return __awaiter(r,void 0,void 0,function(){var r,t;return __generator(this,function(e){switch(e.label){case 0:return e.trys.push([0,2,,3]),r=n.params,r=r.day,[4,q.SearchPersonEpi(A,r)];case 1:return t=e.sent(),o.send({ok:!0,data:t}),[3,3];case 2:return t=e.sent(),console.log(t),o.code(500).send({ok:!1,error:t}),process.exit(0),[3,3];case 3:return[2]}})})}),t.get("/personwbc/:day",{preValidation:[t.authenticate]},function(n,o){return __awaiter(r,void 0,void 0,function(){var r,t;return __generator(this,function(e){switch(e.label){case 0:return e.trys.push([0,2,,3]),r=n.params,r=r.day,[4,q.SearchPersonWbc(A,r)];case 1:return t=e.sent(),o.send({ok:!0,data:t}),[3,3];case 2:return t=e.sent(),console.log(t),o.code(500).send({ok:!1,error:t}),process.exit(0),[3,3];case 3:return[2]}})})}),t.get("/coutopdallergy",{},function(e,t){return __awaiter(r,void 0,void 0,function(){var r;return __generator(this,function(e){switch(e.label){case 0:return e.trys.push([0,2,,3]),[4,q.CountOpdallergy(A)];case 1:return r=e.sent(),t.send({ok:!0,data:r}),[3,3];case 2:return r=e.sent(),console.log(r),t.code(500).send({ok:!1,error:r}),process.exit(0),[3,3];case 3:return[2]}})})}),t.get("/prscidencrypt",{},function(e,t){return __awaiter(r,void 0,void 0,function(){var r;return __generator(this,function(e){switch(e.label){case 0:return e.trys.push([0,2,,3]),[4,q.PrsCidEncrypt(A)];case 1:return r=e.sent(),t.send({ok:!0,data:r}),[3,3];case 2:return r=e.sent(),console.log(r),t.code(500).send({ok:!1,error:r}),process.exit(0),[3,3];case 3:return[2]}})})}),t.delete("/opdallergy/:d1/:d2",{preValidation:[t.authenticate]},function(o,a){return __awaiter(r,void 0,void 0,function(){var r,t,n;return __generator(this,function(e){switch(e.label){case 0:return e.trys.push([0,2,,3]),t=o.params,r=t.d1,t=t.d2,[4,q.removeOpdAllergy(A,r,t)];case 1:return n=e.sent(),a.send({ok:!0,data:n}),[3,3];case 2:return n=e.sent(),console.log(n),a.code(500).send({ok:!1,error:n}),process.exit(0),[3,3];case 3:return[2]}})})}),t.post("/opdallergy",{preValidation:[t.authenticate]},function(k,x){return __awaiter(r,void 0,void 0,function(){var r,t,n,o,a,s,i,c,u,l,d,_,p,f,h,y,g,v,w,b,m;return __generator(this,function(e){switch(e.label){case 0:b=k.body,r=b.hn,t=b.report_date,n=b.agent,o=b.symptom,a=b.reporter,s=b.note,i=b.begin_date,c=b.seriousness_id,u=b.allergy_result_id,l=b.allergy_relation_id,d=b.spclty,_=b.entry_datetime,p=b.update_datetime,f=b.no_alert,h=b.naranjo_result_id,y=b.force_no_order,g=b.opd_allergy_alert_type_id,v=b.patient_cid,w=b.opd_allergy_report_type_id,b=b.opd_allergy_source_id,e.label=1;case 1:return e.trys.push([1,3,,4]),(m={}).hn=r,m.report_date=t,m.agent=n,m.symptom=o,m.reporter=a,m.note=s,m.begin_date=i,m.seriousness_id=c,m.allergy_result_id=u,m.allergy_relation_id=l,m.spclty=d,m.entry_datetime=_,m.update_datetime=p,m.no_alert=f,m.naranjo_result_id=h,m.force_no_order=y,m.opd_allergy_alert_type_id=g,m.patient_cid=v,m.opd_allergy_report_type_id=w,m.opd_allergy_source_id=b,[4,q.createOpdAllergy(A,m)];case 2:return e.sent(),x.send({ok:!0}),[3,4];case 3:return m=e.sent(),console.log(m),x.code(500).send({ok:!1,message:m}),[3,4];case 4:return[2]}})})}),t.get("/opdallergy",{preValidation:[t.authenticate]},function(e,u){return __awaiter(r,void 0,void 0,function(){var r,t,n,o,a,s,i,c;return __generator(this,function(e){switch(e.label){case 0:return r=process.env.LOCAL_URL+"/persons/opdallergy",a=require("node-localstorage").LocalStorage,n=new a("./scratch"),o=n.getItem("token"),a=JSON.parse(o),t="Bearer "+a.token,n=axios_1.default.create({baseURL:process.env.MAIN_URL||"http://127.0.0.1:3009",headers:{"content-type":"application/x-www-form-urlencoded",Authorization:t}}),o=process.env.DAY_1,a=process.env.DAY_2,[4,n.get("/persons/opdallergy/"+"".concat(o)+"/"+"".concat(a))];case 1:for(i in(s=e.sent()).data)c={method:"POST",headers:{"content-type":"application/x-www-form-urlencoded",Authorization:t},data:qs_1.default.stringify(s.data[i]),url:r,timeout:1e4},(0,axios_1.default)(c).then(function(e){}).catch(function(e){console.log(e)});return u.send({ok:!0}),[2]}})})}),[2]})})}exports.default=personCon;