<!--
 * @Author: luting 18851908011@qq.com
 * @Date: 2022-12-13 09:07:37
 * @LastEditors: luting 18851908011@qq.com
 * @LastEditTime: 2022-12-16 09:07:23
 * @FilePath: \pphhzManage\src\components\admin\WebsiteManage.vue
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
-->
<template>
    <el-row style="margin-top: 50px;">
        <el-col :span="24">
            <el-card class="box-card">
                <el-row :gutter="20" style="margin-bottom: 15px">
                    <el-col :span="6">
                        <el-input placeholder="请输入绘画标题" @change="queryBtn" v-model="query.alt" clearable>
                            <el-button slot="append" icon="el-icon-search" @click="queryBtn"></el-button>
                        </el-input>

                    </el-col>
                </el-row>
                <el-button type="primary" icon="el-icon-plus" @click="add">新增</el-button>
                <el-button type="danger" icon="el-icon-delete" @click="deleteBatch">删除</el-button>

                <el-table @selection-change="handleSelectionChange" :data="userList" border stripe ref="userTable"
                    style="width: 100%;margin-top: 20px;">
                    <el-table-column align="center" type="selection" width="55">
                    </el-table-column>
                    <el-table-column prop="alt" label="绘画标题" align="center">
                    </el-table-column>
                    <el-table-column prop="src" label="URL" align="center">
                    </el-table-column>
                    <el-table-column prop="time" label="绘画时间" align="center">
                    </el-table-column>  
                    <el-table-column prop="time" label="预览" align="center">
                        <template slot-scope="scope">
                        <img @click="visibleScaleBig=true;choosedSrc=scope.row.src" :src="scope.row.src"  style="height: 50px;"> 
                        </template>
                    </el-table-column>  
                   <el-table-column align="center" label="操作" >
        <!-- <template slot="header" slot-scope="scope">
          <el-input v-model="search" size="mini" placeholder="输入关键字搜索"/>
        </template>-->
        <template slot-scope="scope">
          <el-button size="mini" @click="handleEdit(scope.$index, scope.row)">编辑</el-button>
          <el-button size="mini" type="danger" @click="handleDelete(scope.$index, scope.row)">删除</el-button>
        </template>
      </el-table-column>
                </el-table>
                <el-pagination @size-change="handleSizeChange" @current-change="handleCurrentChange"
                    style="margin-top: 20px;" :current-page="query.current" :page-sizes="[10, 20, 30, 40, 50]"
                    :page-size="query.size" layout="total, sizes, prev, pager, next, jumper" :total="total"> // 总条数
                </el-pagination>

            </el-card>
        </el-col>
        <pic-modal :name="name" ref="picModal" @close="close"></pic-modal>
      <!-- 点击图片能放大查看 -->
    <el-dialog  :title="'查看图片'" centered  width="1200" :destroy-on-close="true" :visible="visibleScaleBig"
      >

      <template slot="footer">
        <el-button key="cancelScaleBig" @click="visibleScaleBig=false">取消</el-button>
      </template>
      <img  style="width:auto;margin:0 auto;display: block;height: 500px;" :src="choosedSrc" alt="">
    </el-dialog>
      </el-row>
</template>
  
<script>
import PicModal from '@/components/admin/modules/PicModal'
export default {
    name: "PicManage",
    components: {
        PicModal
    },
    props:{
   },
    data() {
        return {
            name: 'Pic',
            visibleScaleBig: false,
            total: 0,
            choosedSrc: '',
            query: {
                alt: '',
                current: 1,
                size: 10,
            },
            userList: []
        }
    },
    created() {
        this.getUserList()
    },
    methods: {
        getUserList() {
            this.axios
                .get("/api/admin/get" +  this.name, {
                    params: { alt: this.query.alt, pageNum: this.query.current, pageSize: this.query.size }
                })
                .then(res => {
                    // if (res.data[0].length > 0) {
                    this.userList = res.data[0];
                    this.total = res.data[1][0].count
                    // }
                })
                .catch(error => {
                    console.log(error);
                });
        },
       
        handleSelectionChange(val) {
        },
        // 新增
        add() {
            this.$refs.picModal.add()
        },
        // 修改
        handleEdit(index, row) {
            // 显示弹窗
            this.$refs.picModal.edit(row)
        },
        //单个删除
        handleDelete(index, row) {
            this.$confirm('是否删除?', '提示', {
                confirmButtonText: '确定',
                cancelButtonText: '取消',
                type: 'warning'
            }).then(() => {  
                this.axios.post('/api/admin/del'+  this.name, {
                    id: row.id
                }).then(res => {
                        this.$message({
                            type: 'success',
                            message: '删除成功!'
                        });
                        this.getUserList();
                }).catch(err => {
                    console.log(err);
                })
            }).catch(() => {
                return false;
            });
        },
        deleteBatch() {
            const ids = [];
            const _selectData = this.$refs.userTable.selection;
            if (_selectData.length === 0) {
                this.$message({
                    message: '请至少选择一行数据',
                    type: 'warning'
                });
                return false;
            }
            for (const i in _selectData) {debugger
                ids.push(_selectData[i].id)
            }
            this.$confirm('是否删除?', '提示', {
                confirmButtonText: '确定',
                cancelButtonText: '取消',
                type: 'warning'
            }).then(() => {
                this.axios.post('/api/admin/del'+  this.name, {
                    // id: ids.toString()
                    id: ids
                }).then(res => {
                        this.$message({
                            type: 'success',
                            message: '删除成功!'
                        });
                        this.getUserList();
                }).catch(err => {
                    console.log(err);
                })
            }).catch(() => {
                return false;
            });
        },

        //当前每页数量改变事件
        handleSizeChange(newSize) {
            this.query.size = newSize;
            this.getUserList();
        },
        close() {
            this.getUserList();
        },
        // 当前页数改变事件
        handleCurrentChange(current) {
            this.query.current = current;
            this.getUserList();
        },
        queryBtn() {
            // 再次调用加载用户数据方法
            this.getUserList();
        }
    },
}
</script>
<style scoped>

</style>
  