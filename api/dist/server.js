"use strict";var __awaiter=this&&this.__awaiter||function(e,i,u,s){return new(u=u||Promise)(function(r,t){function n(e){try{o(s.next(e))}catch(e){t(e)}}function a(e){try{o(s.throw(e))}catch(e){t(e)}}function o(e){var t;e.done?r(e.value):((t=e.value)instanceof u?t:new u(function(e){e(t)})).then(n,a)}o((s=s.apply(e,i||[])).next())})},__generator=this&&this.__generator||function(r,n){var a,o,i,u={label:0,sent:function(){if(1&i[0])throw i[1];return i[1]},trys:[],ops:[]},e={next:t(0),throw:t(1),return:t(2)};return"function"==typeof Symbol&&(e[Symbol.iterator]=function(){return this}),e;function t(t){return function(e){return function(t){if(a)throw new TypeError("Generator is already executing.");for(;u;)try{if(a=1,o&&(i=2&t[0]?o.return:t[0]?o.throw||((i=o.return)&&i.call(o),0):o.next)&&!(i=i.call(o,t[1])).done)return i;switch(o=0,(t=i?[2&t[0],i.value]:t)[0]){case 0:case 1:i=t;break;case 4:return u.label++,{value:t[1],done:!1};case 5:u.label++,o=t[1],t=[0];continue;case 7:t=u.ops.pop(),u.trys.pop();continue;default:if(!(i=0<(i=u.trys).length&&i[i.length-1])&&(6===t[0]||2===t[0])){u=0;continue}if(3===t[0]&&(!i||t[1]>i[0]&&t[1]<i[3])){u.label=t[1];break}if(6===t[0]&&u.label<i[1]){u.label=i[1],i=t;break}if(i&&u.label<i[2]){u.label=i[2],u.ops.push(t);break}i[2]&&u.ops.pop(),u.trys.pop();continue}t=n.call(r,u)}catch(e){t=[6,e],o=0}finally{a=i=0}if(5&t[0])throw t[1];return{value:t[0]?t[1]:void 0,done:!0}}([t,e])}}},__importDefault=this&&this.__importDefault||function(e){return e&&e.__esModule?e:{default:e}};Object.defineProperty(exports,"__esModule",{value:!0});var app_1=__importDefault(require("./app")),port=process.env.SERVICE_PORT||8080,address="0.0.0.0",start=function(){return __awaiter(void 0,void 0,void 0,function(){return __generator(this,function(e){switch(e.label){case 0:return e.trys.push([0,2,,3]),[4,app_1.default.listen(port,address)];case 1:return e.sent(),console.log("Server listening at "+address),[3,3];case 2:return e.sent(),process.exit(0),[3,3];case 3:return[2]}})})};start();