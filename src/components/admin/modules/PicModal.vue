<!--
 * @Author: luting 18851908011@qq.com
 * @Date: 2022-12-13 09:15:45
 * @LastEditors: luting 18851908011@qq.com
 * @LastEditTime: 2022-12-15 16:34:41
 * @FilePath: \pphhzManage\src\components\admin\modules\WebsiteModal.vue
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
-->
<template>

    <!--新增弹窗-->
    <el-dialog center :title="title" :visible.sync="visible" width="30%">
        <el-form :model="model" :rules="addRules" ref="addRuleForm" label-width="90px">
            <el-form-item label="绘画标题" prop="alt">
                <el-input v-model="model.alt"></el-input>
            </el-form-item>
            <el-form-item label="URL" prop="src">
                <el-input v-model="model.src"></el-input>
            </el-form-item>
            <el-form-item label="绘画时间" prop="time">
                <el-input v-model="model.time"></el-input>
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
    name: "PicModal",
    data() {
        return {
            title: '',
            visible: false,
            options: [],
            model: {
                alt: '',
                src: '',
                time: '',
            },
            addRules: {
                alt: [
                    { required: true, message: '请输入绘画标题', trigger: 'blur' },
                    { min: 1, max: 12, message: '长度在 1 到 12 个字符', trigger: 'blur' }
                ],
                src: [
                    { required: true, message: '请输入正确的url', trigger: 'blur', pattern: /^https?:\/\/(([a-zA-Z0-9_-])+(\.)?)*(:\d+)?(\/((\.)?(\?)?=?&?[a-zA-Z0-9_-](\?)?)*)*$/i },
                ],
                time: [
                    { required: true, message: '请输入绘画时间', trigger: 'blur' },
                ],

            }
        }
    },
    props: {
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
                alt: '',
                src: '',
                time: '',
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
  