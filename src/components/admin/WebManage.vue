<!--
 * @Author: luting 18851908011@qq.com
 * @Date: 2022-12-13 09:07:37
 * @LastEditors: luting 18851908011@qq.com
 * @LastEditTime: 2022-12-14 15:26:54
 * @FilePath: \pphhzManage\src\components\admin\WebsiteManage.vue
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
-->
<template>
        <website-component :name="'Web'"></website-component>
</template>
  
<script>
import WebsiteComponent from '@/components/admin/modules/WebsiteComponent'
export default {
    name: "WebManage",
    components: {
        WebsiteComponent
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
<style scoped>

</style>
  