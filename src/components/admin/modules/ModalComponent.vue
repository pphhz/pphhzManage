<!--
 * @Author: luting 18851908011@qq.com
 * @Date: 2022-12-13 09:15:45
 * @LastEditors: luting 18851908011@qq.com
 * @LastEditTime: 2022-12-15 15:33:24
 * @FilePath: \pphhzManage\src\components\admin\modules\WebsiteModal.vue
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
-->
<template>

    <!--新增弹窗-->
    <el-dialog center  :title="title"  :visible.sync="visible" width="30%">
        <el-form :model="model" :rules="addRules" ref="addRuleForm" label-width="90px">
            <el-form-item label="网站名" prop="name">
                <el-input v-model="model.name"></el-input>
            </el-form-item>
            <el-form-item label="url" prop="href">
                <el-input v-model="model.href"></el-input>
            </el-form-item>
            <el-form-item label="标签" prop="tag">
                <el-select filterable
    allow-create v-model="model.tag"  :popper-append-to-body="false" placeholder="请选择标签"
                    style="width:100%">
                    <el-option v-for="item in tagOption" :key="item" :label="item" :value="item"></el-option>
                </el-select> 
            </el-form-item>
        </el-form>
        <span slot="footer" class="dialog-footer">
            <el-button @click="visible = false">取 消</el-button>
            <el-button type="primary" @click="insertSubmit">确 定</el-button>
        </span>
    </el-dialog>
</template>

<script>
export default {
    name: "WebsiteManage",
    data() {
        return {
            visible: false,
            title: '',
            options: [],
            model: {
                name: '',
                href: '',
                tag: '',
            },
            addRules: {
                name: [
                    { required: true, message: '请输入网站名', trigger: 'blur' },
                    { min: 1, max: 12, message: '长度在 1 到 12 个字符', trigger: 'blur' }
                ],
                href: [
                    { required: true, message: '请输入正确的url', trigger: 'blur', pattern: /^https?:\/\/(([a-zA-Z0-9_-])+(\.)?)*(:\d+)?(\/((\.)?(\?)?=?&?[a-zA-Z0-9_-](\?)?)*)*$/i },
                ],
                tag: [
                    { required: true, message: '请选择标签', trigger: 'blur' },
                ],

            }
        }
    },
    props: {
        tagOption: {
            required: true,
            type: Object
        },
        name:{
        type:String,
        required:true,
        default:''
   }
    },
    created() {
    },
    methods: {
        // 
        add() {
            this.title="新增" 
            this.visible = true
            this.model = {
                name: '',
                tag: '',
                href: ''
            }
            this.$nextTick(() => {
                this.$refs.addRuleForm.resetFields();
            })
        },
        edit(record) {
            this.title="编辑" 
            this.visible = true
            this.model = Object.assign({}, record)
        },

        close() {
            this.visible = false
        },
        insertSubmit() {
            // 判断是否通过校验
            this.$refs['addRuleForm'].validate((valid) => {
                if (valid) {
                    const headers = { "content-type": "application/json;charset=UTF-8" };
                    let url = ''
                    if (this.model.id) {
                        url = '/api/admin/update'+  this.name
                    } else {
                        url = '/api/admin/add'+  this.name
                    }
                    this.axios.post(url,
                        this.model
                    ).then(res => {
                        if ((res.data.status == true)) {
                            this.$message({
                                message: "保存成功",
                                type: "success"
                            });
                            this.close()
                            this.$emit('close')
                        } else {
                            this.$message({
                                type: 'error',
                                message: '保存失败!'
                            });
                        }
                    }).catch(err => {
                        console.log(err);
                    })
                } else {
                    return false;
                }
            });
        }

    },
}
</script>
<style scoped>

</style>
  