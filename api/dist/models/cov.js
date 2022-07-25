"use strict";var __awaiter=this&&this.__awaiter||function(e,i,a,s){return new(a=a||Promise)(function(n,t){function r(e){try{c(s.next(e))}catch(e){t(e)}}function o(e){try{c(s.throw(e))}catch(e){t(e)}}function c(e){var t;e.done?n(e.value):((t=e.value)instanceof a?t:new a(function(e){e(t)})).then(r,o)}c((s=s.apply(e,i||[])).next())})},__generator=this&&this.__generator||function(n,r){var o,c,i,a={label:0,sent:function(){if(1&i[0])throw i[1];return i[1]},trys:[],ops:[]},e={next:t(0),throw:t(1),return:t(2)};return"function"==typeof Symbol&&(e[Symbol.iterator]=function(){return this}),e;function t(t){return function(e){return function(t){if(o)throw new TypeError("Generator is already executing.");for(;a;)try{if(o=1,c&&(i=2&t[0]?c.return:t[0]?c.throw||((i=c.return)&&i.call(c),0):c.next)&&!(i=i.call(c,t[1])).done)return i;switch(c=0,(t=i?[2&t[0],i.value]:t)[0]){case 0:case 1:i=t;break;case 4:return a.label++,{value:t[1],done:!1};case 5:a.label++,c=t[1],t=[0];continue;case 7:t=a.ops.pop(),a.trys.pop();continue;default:if(!(i=0<(i=a.trys).length&&i[i.length-1])&&(6===t[0]||2===t[0])){a=0;continue}if(3===t[0]&&(!i||t[1]>i[0]&&t[1]<i[3])){a.label=t[1];break}if(6===t[0]&&a.label<i[1]){a.label=i[1],i=t;break}if(i&&a.label<i[2]){a.label=i[2],a.ops.push(t);break}i[2]&&a.ops.pop(),a.trys.pop();continue}t=r.call(n,a)}catch(e){t=[6,e],c=0}finally{o=i=0}if(5&t[0])throw t[1];return{value:t[0]?t[1]:void 0,done:!0}}([t,e])}}};Object.defineProperty(exports,"__esModule",{value:!0}),exports.CovModel=void 0;var CovModel=function(){function e(){}return e.prototype.remove=function(e,t){return e("prs_hici").where("hicikey",t).del()},e.prototype.create=function(e,t){return e("prs_hici").insert(t)},e.prototype.searchCovac=function(t){return __awaiter(this,void 0,void 0,function(){return __generator(this,function(e){switch(e.label){case 0:return[4,t.raw("select cidencrypt,date_format(vstdate,'%Y-%m-%d') as vstdate,hospcode,date_format(d_update,'%Y-%m-%d %H:%i:%s') as d_update \n   from patient_check_covac where  CONCAT(hospcode,vstdate,cidencrypt) not in(select key_check from check_send)")];case 1:return[2,e.sent()[0]]}})})},e.prototype.ChkSend=function(t){return __awaiter(this,void 0,void 0,function(){return __generator(this,function(e){switch(e.label){case 0:return[4,t.raw("INSERT into check_send\nselect * from\n(select '1' as id,CONCAT(hospcode,vstdate,cidencrypt) as key_check\nfrom patient_check_covac where CONCAT(hospcode,vstdate,cidencrypt) not in(select key_check from check_send))t")];case 1:return[2,e.sent()[0]]}})})},e.prototype.removePrsVacLabel=function(e,t){return e("prs_vaccine_inventory_label").where("vaccine_inventory_lot_id",t).where("recipient_vn","").orWhere("recipient_vn",null).del()},e}();exports.CovModel=CovModel;