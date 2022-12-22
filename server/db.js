/*
 * @Author: luting 18851908011@qq.com
 * @Date: 2022-11-23 14:56:09
 * @LastEditors: luting 18851908011@qq.com
 * @LastEditTime: 2022-12-22 22:16:11
 * @FilePath: \myblog-master\server\db.js
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
// 数据库连接配置
module.exports = {
    mysql: {
      // host: 'http://1.117.142.17',  // 新建数据库连接时的 主机名或ID地址 内容
      host: 'localhost',  // 新建数据库连接时的 主机名或ID地址 内容
      user: 'root', 
      password: 'root', // root 密码
      database: 'myblog', // 数据库名
      port: '3306'
      // 部署改成下面的远程服务器的数据库
      // host: 'localhost',  // 新建数据库连接时的 主机名或ID地址 内容
      // user: 'luting', 
      // password: 'wal6mingren6', // root 密码
      // database: 'myblog', // 数据库名
      // port: '3306'
    }
  }