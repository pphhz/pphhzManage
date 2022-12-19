/*
 * @Author: luting 18851908011@qq.com
 * @Date: 2022-11-23 14:56:09
 * @LastEditors: luting 18851908011@qq.com
 * @LastEditTime: 2022-12-19 09:54:08
 * @FilePath: \pphhzManage\server\index.js
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
const routerApi = require('./router');
const bodyParser = require('body-parser'); // post 数据是需要
const express = require('express');
const app = express();
// const cors = require('cors');

// app.use(cors());
app.use(express.static('public'));
// app.use(express.static(path.join(__dirname, 'public')));
// console.log(express.static('public'));
//修改限制大小
app.use(bodyParser.json({limit:'50mb'}));
app.use(bodyParser.urlencoded({limit:'50mb',extended:true}));

// 后端api路由
app.use('/api', routerApi);

// 监听端口
app.listen(3000);
console.log('success listen at port:3000......');