<!--
 * @Author: luting 18851908011@qq.com
 * @Date: 2022-12-13 09:07:37
 * @LastEditors: luting 18851908011@qq.com
 * @LastEditTime: 2022-12-14 15:18:37
 * @FilePath: \pphhzManage\src\components\admin\WebsiteManage.vue
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
-->
<template>
    <el-row style="margin-top: 50px;">
        <el-col :span="24">
            <el-card class="box-card">
                <el-row :gutter="20" style="margin-bottom: 15px">
                    <el-col :span="6">
                        <el-input placeholder="请输入网站名" @change="queryBtn" v-model="query.name" clearable>
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
                    <el-table-column prop="name" label="网站名" align="center">
                    </el-table-column>
                    <el-table-column prop="href" label="URL" align="center">
                    </el-table-column>
                    <el-table-column prop="tag" label="标签" align="center">
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
        <modal-component :name="name" :tag-option="tagOption" ref="websiteModal" @close="close"></modal-component>
    </el-row>
</template>
  
<script>
import ModalComponent from '@/components/admin/modules/ModalComponent'
export default {
    name: "WebsiteComponent",
    components: {
        ModalComponent
    },
    props:{
        name:{
        type:String,
        required:true,
        default:''
   },
  
    
   },
    data() {
        return {
            total: 0,
            tagOption: {},
            query: {
                current: 1,
                size: 10,
                name: ''
            },
            userList: []
        }
    },
    created() {
        this.getUserListAll()
        this.getUserList()
    },
    methods: {
        getUserList() {
            this.axios
                .get("/api/admin/get" +  this.name, {
                    params: { name: this.query.name, pageNum: this.query.current, pageSize: this.query.size }
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
        getUserListAll() {
            this.axios
                .get("/api/get" +  this.name + "All", {
                })
                .then(res => { debugger
                    if(res.data.length>0){
                        res.data.forEach(element => {
                            // if(Object.keys(this.tagOption).indexOf(element.tag)==-1){
                                // console.log(Object.keys(this.tagOption))
                                this.tagOption[element.title] = element.title
                                // console.log( this.tagOption)

                            // }
                        });
                    } 
                })
                .catch(error => {
                    console.log(error);
                });
        },
        handleSelectionChange(val) {
        },
        // 新增
        add() {
            this.$refs.websiteModal.add()
        },
        // 修改
        handleEdit(index, row) {
            // 显示弹窗
            this.$refs.websiteModal.edit(row)
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
  