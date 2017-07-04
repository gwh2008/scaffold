/**
 * e代驾管理初始化
 */
var EDriving = {
    id: "EDrivingTable",	//表格id
    seItem: null,		//选中的条目
    table: null,
    layerIndex: -1
};

/**
 * 初始化表格的列
 */
EDriving.initColumn = function () {
    return [
        {field: 'selectItem', radio: true},
        {title: 'id', field: 'id', visible: false, align: 'center', valign: 'middle'},
        {title: 'e标题', field: 'title', align: 'center', valign: 'middle', sortable: true},
        {title: 'e内容', field: 'content', align: 'center', valign: 'middle', sortable: true},
        {title: '发布者', field: 'createrName', align: 'center', valign: 'middle', sortable: true},
        {title: '创建时间', field: 'createtime', align: 'center', valign: 'middle', sortable: true}
    ];
};

/**
 * 检查是否选中
 */
EDriving.check = function () {
    var selected = $('#' + this.id).bootstrapTable('getSelections');
    if(selected.length == 0){
        Feng.info("请先选中表格中的某一记录！");
        return false;
    }else{
        EDriving.seItem = selected[0];
        return true;
    }
};

/**
 * 点击添加e代驾
 */
EDriving.openAddEDriving = function () {
    var index = layer.open({
        type: 2,
        title: '添加e代驾',
        area: ['800px', '420px'], //宽高
        fix: false, //不固定
        maxmin: true,
        content: Feng.ctxPath + '/eDriving/eDriving_add'
    });
    this.layerIndex = index;
};

/**
 * 点击修改e代驾
 */
EDriving.openEditEDriving = function () {
    if (this.check()) {
        var index = layer.open({
            type: 2,
            title: '修改e代驾',
            area: ['800px', '420px'], //宽高
            fix: false, //不固定
            maxmin: true,
            content: Feng.ctxPath + '/eDriving/eDriving_update/' + this.seItem.id
        });
        this.layerIndex = index;
    }
};

/**
 * 打开查看e代驾详情
 */
EDriving.openEDrivingDetail = function () {
    if (this.check()) {
        var index = layer.open({
            type: 2,
            title: 'e代驾详情',
            area: ['800px', '420px'], //宽高
            fix: false, //不固定
            maxmin: true,
            content: Feng.ctxPath + '/eDriving/eDriving_update/' + EDriving.seItem.id
        });
        this.layerIndex = index;
    }
};

/**
 * 删除e代驾
 */
EDriving.delete = function () {
    if (this.check()) {
        var ajax = new $ax(Feng.ctxPath + "/eDriving/delete", function (data) {
            Feng.success("删除成功!");
            EDriving.table.refresh();
        }, function (data) {
            Feng.error("删除失败!" + data.responseJSON.message + "!");
        });
        ajax.set("eDrivingId",this.seItem.id);
        ajax.start();
    }
};

/**
 * 查询e代驾列表
 */
EDriving.search = function () {
    var queryData = {};
    queryData['condition'] = $("#condition").val();
    EDriving.table.refresh({query: queryData});
};

$(function () {
    var defaultColunms = EDriving.initColumn();
    var table = new BSTable(EDriving.id, "/eDriving/list", defaultColunms);
    table.setPaginationType("client");
    EDriving.table = table.init();
});
