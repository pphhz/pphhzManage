<!--
 * @Author: luting 18851908011@qq.com
 * @Date: 2022-11-23 14:56:09
 * @LastEditors: luting 18851908011@qq.com
 * @LastEditTime: 2022-11-24 15:34:04
 * @FilePath: \myblog-master\src\components\pages\Header.vue
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
-->
<template>
  <div class="header-wraper">
    <header class="blog-header">
      <h1 class="header-title">
        <router-link to="/">StarBlog</router-link>
      </h1>
      <nav class="header-nav">
        <el-input style="width:300px"
          placeholder="请输入搜索内容"
          prefix-icon="el-icon-search"
          v-model="search"
          class="nav-search"
          autocomplete="off"
          name="aa"
        ></el-input>
        <!-- <div class="nav-search">
          <i class="wmui icon-search"></i>
          <input type="text" maxlength="30" value>
        </div>-->
        <ul>
          <li>
            <router-link to="/lables">标签</router-link>
          </li>
          <li>
            <router-link to="/login">新随笔</router-link>
          </li>
        </ul>
      </nav>
    </header>
  </div>
</template>
<script>
export default {
  name: "Header",
  data() {
    return {
      search: ""
    };
  }
};
</script>
<style scoped>
.header-wraper {
  position: fixed;
  top: 0;
  display: flex;
  width: 100%;
  height: 50px;
  line-height: 50px;
  border-bottom: 1px solid #eee;
  z-index: 999;
  background-color: #fff;
}
.blog-header {
  display: flex;
  width: 960px;
  margin: 0 auto;
  justify-content: space-between;
  padding: 0 15px;
}
.header-title {
  font-size: 20px;
  font-weight: 700;
}
.header-nav {
  display: -webkit-box;
  margin-right: 5rem;
}
.blog-header .header-nav ul {
  list-style: none;
}
.blog-header .header-nav li {
  display: inline-block;
}
.blog-header .header-nav li a {
  padding: 0 15px;
}
</style>
