<!--
 * @Author: luting 18851908011@qq.com
 * @Date: 2022-12-13 09:07:37
 * @LastEditors: luting 18851908011@qq.com
 * @LastEditTime: 2022-12-14 16:40:18
 * @FilePath: \pphhzManage\src\components\admin\WebsiteManage.vue
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
-->
<template>
    <div class="home-left" v-if="isShowSubMenu">
      <ul v-for="(item, index) in dict" :key="index">
        <router-link
          tag="li"
          :to="item.path"
          class="item"
          :class="{ bg: index == activeIndex }"
        >
          <div @click="bgcChange(index)">{{ item.discp }}</div>
        </router-link>
      </ul>
    </div>
</template>
  
<script>
export default {
    name:  "Manage",
    components: {
    },
    data() {
        return {
        }
    },
    created() {
          },
    methods: {
    },
}
</script>
<style scoped  lang="scss">
 .home-left {
    width: 250px;
    height: 100%;
    // margin-left: -100%;
    box-sizing: border-box;
    float: left;
    text-align: center;
    background-color: #eee;
    border-bottom-right-radius: 10px;
    position: fixed;
    left: 0;
    top: 40px;
    box-shadow: 5px 5px 5px rgba(111, 112, 211,20%);
    ul {
      li {
        line-height: 40px;
        border-bottom: 1px solid #efefef;

        div {
          width: 100%;
        }
      }
    }
  }
</style>
  