"use strict";var __awaiter=this&&this.__awaiter||function(e,i,c,u){return new(c=c||Promise)(function(n,t){function r(e){try{o(u.next(e))}catch(e){t(e)}}function a(e){try{o(u.throw(e))}catch(e){t(e)}}function o(e){var t;e.done?n(e.value):((t=e.value)instanceof c?t:new c(function(e){e(t)})).then(r,a)}o((u=u.apply(e,i||[])).next())})},__generator=this&&this.__generator||function(n,r){var a,o,i,c={label:0,sent:function(){if(1&i[0])throw i[1];return i[1]},trys:[],ops:[]},e={next:t(0),throw:t(1),return:t(2)};return"function"==typeof Symbol&&(e[Symbol.iterator]=function(){return this}),e;function t(t){return function(e){return function(t){if(a)throw new TypeError("Generator is already executing.");for(;c;)try{if(a=1,o&&(i=2&t[0]?o.return:t[0]?o.throw||((i=o.return)&&i.call(o),0):o.next)&&!(i=i.call(o,t[1])).done)return i;switch(o=0,(t=i?[2&t[0],i.value]:t)[0]){case 0:case 1:i=t;break;case 4:return c.label++,{value:t[1],done:!1};case 5:c.label++,o=t[1],t=[0];continue;case 7:t=c.ops.pop(),c.trys.pop();continue;default:if(!(i=0<(i=c.trys).length&&i[i.length-1])&&(6===t[0]||2===t[0])){c=0;continue}if(3===t[0]&&(!i||t[1]>i[0]&&t[1]<i[3])){c.label=t[1];break}if(6===t[0]&&c.label<i[1]){c.label=i[1],i=t;break}if(i&&c.label<i[2]){c.label=i[2],c.ops.push(t);break}i[2]&&c.ops.pop(),c.trys.pop();continue}t=r.call(n,c)}catch(e){t=[6,e],o=0}finally{a=i=0}if(5&t[0])throw t[1];return{value:t[0]?t[1]:void 0,done:!0}}([t,e])}}};Object.defineProperty(exports,"__esModule",{value:!0});var anc_1=require("../models/anc");function ancCon(n){return __awaiter(this,void 0,void 0,function(){var o,i,t=this;return __generator(this,function(e){return o=new anc_1.AncModel,i=n.db3,n.get("/anc/:date",{},function(r,a){return __awaiter(t,void 0,void 0,function(){var t,n;return __generator(this,function(e){switch(e.label){case 0:return e.trys.push([0,2,,3]),t=r.params,t=t.date,[4,o.Searchanc(i,t)];case 1:return n=e.sent(),a.send({ok:!0,data:n}),[3,3];case 2:return n=e.sent(),console.log(n),a.code(500).send({ok:!1,error:n}),process.exit(0),[3,3];case 3:return[2]}})})}),[2]})})}exports.default=ancCon;