"use strict";var __awaiter=this&&this.__awaiter||function(e,c,s,i){return new(s=s||Promise)(function(r,t){function n(e){try{o(i.next(e))}catch(e){t(e)}}function a(e){try{o(i.throw(e))}catch(e){t(e)}}function o(e){var t;e.done?r(e.value):((t=e.value)instanceof s?t:new s(function(e){e(t)})).then(n,a)}o((i=i.apply(e,c||[])).next())})},__generator=this&&this.__generator||function(r,n){var a,o,c,s={label:0,sent:function(){if(1&c[0])throw c[1];return c[1]},trys:[],ops:[]},e={next:t(0),throw:t(1),return:t(2)};return"function"==typeof Symbol&&(e[Symbol.iterator]=function(){return this}),e;function t(t){return function(e){return function(t){if(a)throw new TypeError("Generator is already executing.");for(;s;)try{if(a=1,o&&(c=2&t[0]?o.return:t[0]?o.throw||((c=o.return)&&c.call(o),0):o.next)&&!(c=c.call(o,t[1])).done)return c;switch(o=0,(t=c?[2&t[0],c.value]:t)[0]){case 0:case 1:c=t;break;case 4:return s.label++,{value:t[1],done:!1};case 5:s.label++,o=t[1],t=[0];continue;case 7:t=s.ops.pop(),s.trys.pop();continue;default:if(!(c=0<(c=s.trys).length&&c[c.length-1])&&(6===t[0]||2===t[0])){s=0;continue}if(3===t[0]&&(!c||t[1]>c[0]&&t[1]<c[3])){s.label=t[1];break}if(6===t[0]&&s.label<c[1]){s.label=c[1],c=t;break}if(c&&s.label<c[2]){s.label=c[2],s.ops.push(t);break}c[2]&&s.ops.pop(),s.trys.pop();continue}t=n.call(r,s)}catch(e){t=[6,e],o=0}finally{a=c=0}if(5&t[0])throw t[1];return{value:t[0]?t[1]:void 0,done:!0}}([t,e])}}};Object.defineProperty(exports,"__esModule",{value:!0});var cov_1=require("../models/cov");function covCon(r){return __awaiter(this,void 0,void 0,function(){var F,H,a,t=this;return __generator(this,function(e){return F=new cov_1.CovModel,H=r.db3,a=r.db4,r.post("/",{preValidation:[r.authenticate]},function(B,D){return __awaiter(t,void 0,void 0,function(){var t,r,n,a,o,c,s,i,u,l,d,_,h,p,f,v,m,g,y,b,w,k,x,C,q,P,S,V,M,j,E,G,L,O,T,z,A;return __generator(this,function(e){switch(e.label){case 0:z=B.body,t=z.timestamp,r=z.selection,n=z.depart,a=z.pttyename,o=z.atk_date,c=z.si_date,s=z.pname,i=z.fname,u=z.age_y,l=z.cid,d=z.tel,_=z.bw,h=z.ht,p=z.clinic,f=z.cc,v=z.prakan_covid,m=z.send_xray,g=z.normal_drug,y=z.req_certificate,b=z.dch_date,w=z.prov_at48,k=z.wish_hos,x=z.progress_note48,C=z.management48,q=z.progress_note_last48,P=z.management_last48,S=z.doctor,V=z.chwpart,M=z.amppart,j=z.tmbpart,E=z.moopart,G=z.hicikey,L=z.atk_date_thai,O=z.si_date_thai,T=z.doctor_fullname,z=z.liceneno,e.label=1;case 1:return e.trys.push([1,3,,4]),(A={}).timestamp=t,A.selection=r,A.depart=n,A.pttyename=a,A.atk_date=o,A.si_date=c,A.pname=s,A.fname=i,A.age_y=u,A.cid=l,A.tel=d,A.bw=_,A.ht=h,A.clinic=p,A.cc=f,A.prakan_covid=v,A.send_xray=m,A.normal_drug=g,A.req_certificate=y,A.dch_date=b,A.prov_at48=w,A.wish_hos=k,A.progress_note48=x,A.management48=C,A.progress_note_last48=q,A.management_last48=P,A.doctor=S,A.chwpart=V,A.amppart=M,A.tmbpart=j,A.moopart=E,A.hicikey=G,A.atk_date_thai=L,A.si_date_thai=O,A.doctor_fullname=T,A.liceneno=z,[4,F.create(H,A)];case 2:return e.sent(),D.send({ok:!0}),[3,4];case 3:return A=e.sent(),console.log(A),D.code(500).send({ok:!1,message:A}),[3,4];case 4:return[2]}})})}),r.delete("/:hicikey",{preValidation:[r.authenticate]},function(r,n){return __awaiter(t,void 0,void 0,function(){var t;return __generator(this,function(e){switch(e.label){case 0:return e.trys.push([0,2,,3]),t=r.params,t=t.hicikey,[4,F.remove(H,t)];case 1:return e.sent(),n.send({ok:!0}),[3,3];case 2:return t=e.sent(),console.log(t),n.code(500).send({ok:!1,error:t}),[3,3];case 3:return[2]}})})}),r.get("/covac",{},function(e,r){return __awaiter(t,void 0,void 0,function(){var t;return __generator(this,function(e){switch(e.label){case 0:return e.trys.push([0,2,,3]),[4,F.searchCovac(a)];case 1:return t=e.sent(),r.send(t),[3,3];case 2:return t=e.sent(),console.log(t),r.code(500).send({ok:!1,error:t}),process.exit(0),[3,3];case 3:return[2]}})})}),r.get("/chksend",{},function(e,r){return __awaiter(t,void 0,void 0,function(){var t;return __generator(this,function(e){switch(e.label){case 0:return e.trys.push([0,2,,3]),[4,F.ChkSend(a)];case 1:return e.sent(),r.send("success"),[3,3];case 2:return t=e.sent(),console.log(t),r.code(500).send({ok:!1,error:t}),process.exit(0),[3,3];case 3:return[2]}})})}),r.delete("/remprsvaclabel/:lotid",{},function(r,n){return __awaiter(t,void 0,void 0,function(){var t;return __generator(this,function(e){switch(e.label){case 0:return e.trys.push([0,2,,3]),t=r.params,t=t.lotid,[4,F.removePrsVacLabel(a,t)];case 1:return e.sent(),n.send({ok:!0}),[3,3];case 2:return t=e.sent(),console.log(t),n.code(500).send({ok:!1,error:t}),[3,3];case 3:return[2]}})})}),[2]})})}exports.default=covCon;