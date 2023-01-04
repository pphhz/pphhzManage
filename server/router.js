const express = require('express');
const md5 = require('js-md5');
const router = express.Router();
const api = require('./api');
const multer = require("multer"); //图片上传
const fs = require('fs');

const createFolder = function(folder){
  try{
      fs.accessSync(folder); 
  }catch(e){
      fs.mkdirSync(folder);
  }  
};
const uploadFolder = './upload';
createFolder(uploadFolder);
// 通过 filename 属性定制
const storage = multer.diskStorage({
  destination: function (req, file, cb) {
      cb(null, uploadFolder);    // 保存的路径，备注：需要自己创建
  },
  filename: function (req, file, cb) {
      // 将保存文件名设置为 字段名 + 时间戳，比如 logo-1478521468943
      cb(null, file.fieldname + '-' + Date.now());
  }
});
// 通过 storage 选项来对 上传行为 进行定制化
const upload = multer({ storage: storage })
router.get('/'  + md5('getValue'), (req, res, next) => {
  api.getValue(req, res, next);
});

router.post('/'  + md5('setValue'), (req, res, next) => {
  api.setValue(req, res, next);
});

router.get('/'  + md5('getArticle'), (req, res, next) => {
  api.getArticle(req, res, next);
});

router.post('/'  + md5('setUser'),(req,res,next)=>{
  api.setUser(req,res,next);
})

router.post('/'  + md5('userLogin'),(req,res,next)=>{
  api.userLogin(req,res,next);
})

router.get('/'  + md5('admin/getArticleById'),(req,res,next)=>{
  api.getArticleById(req,res,next);
})

router.get('/'  + md5('admin/getTagAll'),(req,res,next)=>{
  api.getTagAll(req,res,next);
})

// router.get('/admin/getTag',(req,res,next)=>{
//   api.getTag(req,res,next);
// })

router.post('/'  + md5('admin/delTag'),(req,res,next)=>{
  api.delTag(req,res,next);
})

router.post('/'  + md5('admin/updateTag'),(req,res,next)=>{
  api.updateTag(req,res,next);
})

router.post('/'  + md5('admin/insertTag'),(req,res,next)=>{
  api.insertTag(req,res,next);
})

router.post('/'  + md5('admin/addArticle'),(req,res,next)=>{
  api.addArticle(req,res,next);
})

router.post('/'  + md5('admin/updateArticle'),(req,res,next)=>{
  api.updateArticle(req,res,next);
})

router.post('/'  + md5('admin/updArticle'),(req,res,next)=>{
  api.updArticle(req,res,next);
})
router.get('/'  + md5('getArticleByTag'),(req,res,next)=>{
  api.getArticleByTag(req,res,next);
})
router.get('/'  + md5('getArticleByTagPerson'),(req,res,next)=>{
  api.getArticleByTagPerson(req,res,next);
})
router.get('/'  + md5('admin/getWebsite'),(req,res,next)=>{
  api.getWebsite(req,res,next);
})
router.post('/'  + md5('admin/updateWebsite'),(req,res,next)=>{
  api.updateWebsite(req,res,next);
})
router.post('/'  + md5('admin/delWebsite'),(req,res,next)=>{
  api.delWebsite(req,res,next);
})
router.post('/'  + md5('admin/addWebsite'),(req,res,next)=>{
  api.addWebsite(req,res,next);
})
router.get('/'  + md5('admin/getWeb'),(req,res,next)=>{
  api.getWeb(req,res,next);
})
router.post('/'  + md5('admin/updateWeb'),(req,res,next)=>{
  api.updateWeb(req,res,next);
})
router.post('/'  + md5('admin/delWeb'),(req,res,next)=>{
  api.delWeb(req,res,next);
})
router.post('/'  + md5('admin/addWeb'),(req,res,next)=>{
  api.addWeb(req,res,next);
})
router.get('/'  + md5('admin/getPic'),(req,res,next)=>{
  api.getPic(req,res,next);
})
router.post('/'  + md5('admin/updatePic'),(req,res,next)=>{
  api.updatePic(req,res,next);
})
router.post('/'  + md5('admin/updatePicLike'),(req,res,next)=>{
  api.updatePicLike(req,res,next);
})
router.post('/'  + md5('admin/delPic'),(req,res,next)=>{
  api.delPic(req,res,next);
})
router.post('/'  + md5('admin/addPic'),(req,res,next)=>{
  api.addPic(req,res,next);
})
router.post('/'  + md5('admin/delArticle'),(req,res,next)=>{
  api.delArticle(req,res,next);
})

router.post('/'  + md5('insertComments'),(req,res,next)=>{
  api.insertComments(req,res,next);
})

router.post('/'  + md5('updateCount'),(req,res,next)=>{
  api.addViewOrStart(req,res,next);
})

router.post('/'  + md5('uploadImg',upload.single('imgFile')),(req,res,next)=>{
  api.uploadPic(req,res,next);
})

router.get('/'  + md5('upload/*'),(req,res,next)=>{
  api.getImg(req,res,next);
})

router.get('/'  + md5('getPicAll'),(req,res,next)=>{
  api.getPicAll(req,res,next);
})

router.get('/'  + md5('getWebAll'),(req,res,next)=>{
  api.getWebAll(req,res,next);
})

router.get('/'  + md5('getWebsiteAll'),(req,res,next)=>{
  api.getWebsiteAll(req,res,next);
})
console.log('/'  + md5('getWebAll'));
module.exports = router;

