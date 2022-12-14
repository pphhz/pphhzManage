/*
 * @Author: luting 18851908011@qq.com
 * @Date: 2022-11-23 14:56:09
 * @LastEditors: luting 18851908011@qq.com
 * @LastEditTime: 2023-01-04 14:26:57
 * @FilePath: \myblog-master\server\sqlMap.js
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
var sqlMap = {
  article: {
    queryById: 'SELECT a.*, GROUP_CONCAT(c.id, "_", c.name) AS tag_string FROM articles AS a LEFT JOIN tag_links AS b ON a.id = b.aid LEFT JOIN tags AS c ON b.tid = c.id WHERE a.id = ? GROUP BY a.id',
    queryAll22: 'SELECT a.*, GROUP_CONCAT(c.id, "_", c.name) AS tag_string FROM articles AS a LEFT JOIN tag_links AS b ON a.id = b.aid LEFT JOIN tags AS c ON b.tid = c.id GROUP BY a.id',
    delById: 'DELETE FROM articles WHERE id = ?',
    updById: 'UPDATE articles SET state=? WHERE id = ?',
    updAllById: 'UPDATE articles SET state=?,title=?,type=?,summary=?,shtml=? WHERE id = ?',
    queryAll: 'SELECT SQL_CALC_FOUND_ROWS * from articles WHERE state =? order by post_time desc limit ?, ?;SELECT FOUND_ROWS() as count',
    queryAllBysu: 'SELECT SQL_CALC_FOUND_ROWS * from articles WHERE state =? AND username =?   order by post_time desc limit ?, ?;SELECT FOUND_ROWS() as count',
    queryAllBysuName: 'SELECT SQL_CALC_FOUND_ROWS * from articles WHERE state =? AND username =? AND  title like ?   order by post_time desc limit ?, ?;SELECT FOUND_ROWS() as count',
    queryAllBysuType: 'SELECT SQL_CALC_FOUND_ROWS * from articles WHERE state =? AND username =?  AND type =? order by post_time desc limit ?, ?;SELECT FOUND_ROWS() as count',
    queryAllBysuNameType: 'SELECT SQL_CALC_FOUND_ROWS * from articles WHERE state =? AND username =? AND  title like ? AND type =? order by post_time desc limit ?, ?;SELECT FOUND_ROWS() as count',
    queryAllBySU: 'SELECT * from articles WHERE state =? AND username =? AND  name =? AND type =?',
    insertComment: 'UPDATE articles SET comments=? WHERE id=?',
    updateViewCount: 'UPDATE articles SET view=?,comment_count=? where id=?',
    insert: 'INSERT INTO articles(username, title,summary,shtml,type, post_time, view, comment_count,state) VALUES (?,?,?,?,?,?,?,?,?)',
    queryByTitle: 'SELECT * FROM articles WHERE title = ?  AND username =?  order by post_time desc ',
    queryByTag: 'SELECT * FROM articles WHERE type=?  order by post_time desc ',
    queryByTagPerson: 'SELECT * FROM articles WHERE type=?  AND username =?  order by post_time desc ',
    queryByTagId: "SELECT " +
      "c.*, ( " +
      "SELECT " +
      "GROUP_CONCAT(aa.id, '_', aa. NAME) " +
      "FROM " +
      "tags AS aa " +
      "LEFT JOIN tag_links AS bb ON aa.id = bb.tid " +
      "WHERE " +
      "bb.aid = c.id " +
      ") AS tag_string " +
      "FROM " +
      "tags AS a " +
      "LEFT JOIN tag_links AS b ON a.id = b.tid " +
      "LEFT JOIN articles AS c ON b.aid = c.id " +
      "WHERE " +
      "a.id = ? " +
      "AND c.id IS NOT NULL"
  },
  tag: {
    queryById: 'SELECT * FROM articles WHERE id=?',
    queryByName: 'SELECT * FROM tags WHERE name=?',
    queryAll: 'SELECT * FROM tags',
    insert: 'INSERT INTO tags(name) VALUES (?)',
    delById: 'DELETE FROM tags WHERE name = ?',
    updateById: 'UPDATE tags SET name = ? WHERE id = ?'
  },
  comment: {
    insert: 'INSERT INTO comments(article_id, user_id, reply_id, reply_comment_id, content, time) VALUES (?,?,?,?,?,?)',
    queryAll: 'SELECT * FROM comments',
    queryByActicleId: 'SELECT c.id, c.article_id, c.user_id, c.reply_id, c.reply_comment_id, c.content, c.time, v.name as user_name, v.avatar, vi.name as reply_name FROM visitors as v RIGHT JOIN comments as c on c.user_id = v.id LEFT JOIN visitors as vi on c.reply_id = vi.id WHERE c.article_id = ?'
  },
  user: {
    update: 'UPDATE users SET avatar = ? WHERE id = ?',
    queryAll: 'SELECT * FROM users',
    queryUsername: 'SELECT * FROM users WHERE userName = ?',
    insert: 'INSERT INTO users(username,password) VALUES (?,?)'
  },
  visitor: {
    insert: 'INSERT INTO visitors(name, email, website, avatar, reminder) VALUES (?,?,?,?,?)',
    queryByEmail: 'SELECT * FROM visitors WHERE email = ?',
    updByEmail: 'UPDATE visitors SET name = ?, website = ?, avatar = ?, reminder = ? WHERE email = ?'
  },
  pic: {
    queryAll: 'SELECT * FROM pics ORDER BY id desc',
    queryAll1: 'SELECT SQL_CALC_FOUND_ROWS * from  pics  order by id desc limit ?, ?;SELECT FOUND_ROWS() as count',
    queryAllBysu: 'SELECT SQL_CALC_FOUND_ROWS * from pics WHERE  alt like ? order by id desc limit ?, ?;SELECT FOUND_ROWS() as count',
    queryAllBySU: 'SELECT * from pics WHERE  alt like ? ORDER BY id desc',
    insert: 'INSERT INTO pics(alt, src, time) VALUES (?,?,?)',
    updAllById: 'UPDATE pics SET  alt=? ,time=? ,src=? WHERE id = ?',
    updatePicLike: 'UPDATE pics SET  who_like=? WHERE id = ?',
    // delById: 'DELETE FROM web WHERE id in ?',
    delById: 'DELETE FROM pics WHERE id in  (?)',
    queryByTitle: 'SELECT * FROM pics WHERE alt = ? ORDER BY id desc',
  },
  web: {
    queryAll: 'SELECT * FROM webs ORDER BY id desc', 
    queryAll1: 'SELECT SQL_CALC_FOUND_ROWS * from  webs  order by id desc limit ?, ?;SELECT FOUND_ROWS() as count',
    queryAllBysu: 'SELECT SQL_CALC_FOUND_ROWS * from webs WHERE  name like ? order by id desc limit ?, ?;SELECT FOUND_ROWS() as count',
    queryAllBySU: 'SELECT * from webs WHERE  name like? ORDER BY id desc',
    insert: 'INSERT INTO webs(name, href, tag) VALUES (?,?,?)',
    updAllById: 'UPDATE webs SET  name=? ,tag=? ,href=? WHERE id = ? ORDER BY id desc',
    // delById: 'DELETE FROM web WHERE id in ? ORDER BY id desc',
    delById: 'DELETE FROM webs WHERE id in  (?) ',
    queryByTitle: 'SELECT * FROM webs WHERE name = ? ORDER BY id desc',
  },
  website: {
    queryAll: 'SELECT * FROM websites ORDER BY id desc',
    queryAll1: 'SELECT SQL_CALC_FOUND_ROWS * from  websites  order by id desc limit ?, ?;SELECT FOUND_ROWS() as count',
    queryAllBysu: 'SELECT SQL_CALC_FOUND_ROWS * from websites WHERE  name like ? order by id desc limit ?, ?;SELECT FOUND_ROWS() as count',
    queryAllBySU: 'SELECT * from websites WHERE  name like?  ORDER BY id desc',
    insert: 'INSERT INTO websites(name, href, tag) VALUES (?,?,?)',
    updAllById: 'UPDATE websites SET  name=? ,tag=? ,href=? WHERE id = ?',
    // delById: 'DELETE FROM websites WHERE id in ?',
    delById: 'DELETE FROM websites WHERE id in  (?)',
    queryByTitle: 'SELECT * FROM websites WHERE name = ?  ORDER BY id desc',
  },
  note: {
    queryAll: "SELECT * FROM websites ORDER BY id desc WHERE " +  "websites.tag = ? ",
  }
}

module.exports = sqlMap;
