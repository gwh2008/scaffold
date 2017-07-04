/**
 * 初始化e代驾详情对话框
 */
var EDrivingInfoDlg = {
    eDrivingInfoData : {},
    validateFields: {
        title: {
            validators: {
                notEmpty: {
                    message: '标题不能为空'
                }
            }
        },
        content: {
            validators: {
                notEmpty: {
                    message: '内容不能为空'
                }
            }
        }
    }
};

/**
 * 清除数据
 */
EDrivingInfoDlg.clearData = function() {
    this.eDrivingInfoData = {};
}

/**
 * 设置对话框中的数据
 *
 * @param key 数据的名称
 * @param val 数据的具体值
 */
EDrivingInfoDlg.set = function(key, val) {
    this.eDrivingInfoData[key] = (typeof value == "undefined") ? $("#" + key).val() : value;
    return this;
}

/**
 * 设置对话框中的数据
 *
 * @param key 数据的名称
 * @param val 数据的具体值
 */
EDrivingInfoDlg.get = function(key) {
    return $("#" + key).val();
}

/**
 * 关闭此对话框
 */
EDrivingInfoDlg.close = function() {
    parent.layer.close(window.parent.EDriving.layerIndex);
}

/**
 * 收集数据
 */
EDrivingInfoDlg.collectData = function() {
    this.set('id').set('title').set('content');
}

/**
 * 验证数据是否为空
 */
EDrivingInfoDlg.validate = function () {
    $('#eDrivingInfoForm').data("bootstrapValidator").resetForm();
    $('#eDrivingInfoForm').bootstrapValidator('validate');
    return $("#eDrivingInfoForm").data('bootstrapValidator').isValid();
}

/**
 * 提交添加
 */
EDrivingInfoDlg.addSubmit = function() {

    this.clearData();
    this.collectData();

    if (!this.validate()) {
        return;
    }

    //提交信息
    var ajax = new $ax(Feng.ctxPath + "/eDriving/add", function(data){
        Feng.success("添加成功!");
        window.parent.EDriving.table.refresh();
        EDrivingInfoDlg.close();
    },function(data){
        Feng.error("添加失败!" + data.responseJSON.message + "!");
    });
    ajax.set(this.eDrivingInfoData);
    ajax.start();
}

/**
 * 提交修改
 */
EDrivingInfoDlg.editSubmit = function() {

    this.clearData();
    this.collectData();

    if (!this.validate()) {
        return;
    }
    //提交信息
    var ajax = new $ax(Feng.ctxPath + "/eDriving/update", function(data){
        Feng.success("修改成功!");
        window.parent.EDriving.table.refresh();
        EDrivingInfoDlg.close();
    },function(data){
        Feng.error("修改失败!" + data.responseJSON.message + "!");
    });
    ajax.set(this.eDrivingInfoData);
    ajax.start();
}

$(function() {
    Feng.initValidator("eDrivingInfoForm", EDrivingInfoDlg.validateFields);
});
