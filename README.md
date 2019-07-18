# 官网产品文档

数据结构
----

### Product

| Name | Type | Description |
| --- | --- | --- |
| **id** | **string** | 产品ID（后端指定） |
| **product_name** | **string** | 产品名称 |
| **product_manager** | **string** | 产品经理 |
| **pm_email** | **string** | 产品经理邮箱（后端指定）|
| **rd_leader** | **string** | 研发负责人 |
| **rd_email** | **string** | 研发负责人邮箱（后端指定）|
| **current_process** | **string** | 当前流程 |
| **obt_time** | **int:** | 公测时间|
| **ga_time** | **int** | GA时间|
| **process_status** | **string** | 流程状态|
| **description** | **string** | 产品简介 |
| **create_time** | **string** | 创建时间 |
| **update_time** | **string** | 更新时间 |

### Checkpoint

| Name | Type | Description |
| --- | --- | --- |
| **id** | **string** | ID（后端指定） |
| **product_id** | **string** | 产品ID（后端指定） |
| **key_action** | **string** | 关键活动 |
| **cross_dept** | **bool** | 是否跨部门 |
| **check_stage** | **string** | 检查阶段 |
| **internal_release** | **bool** | 是否对内发布 |
| **public_release** | **bool** | 是否对外发布 |
| **related** | **bool** | 是否涉及 |
| **leader** | **string** | 负责人 |
| **description** | **string** | 要求说明 |
| **create_time** | **int** | 创建时间 |
| **update_time** | **int** | 更新时间 |


### DockSystem

| Name | Type | Description |
| --- | --- | --- |
| **id** | **string** | ID（后端指定） |
| **product_id** | **string** | 产品ID（后端指定） |
| **system** | **string** | 对接系统 |
| **internal_requirement** | **bool** | 对内发布要求 |
| **public_requirement** | **bool** | 对外发布要求 |
| **require_stage** | **string** | 要求介入阶段 |
| **dock_stage** | **string** | 接入阶段 |
| **description** | **string** | 备注 |
| **create_time** | **int** | 创建时间 |
| **update_time** | **int** | 更新时间 |

### Function

| Name | Type | Description |
| --- | --- | --- |
| **id** | **string** | ID（后端指定） |
| **product_id** | **string** | 产品ID（后端指定）|
| **function_item** | **string** | 动能项 |
| **relize_stage** | **string** | 实现阶段 |
| **description** | **string** | 限制说明 |
| **create_time** | **int** | 创建时间 |
| **update_time** | **int** | 更新时间 |

### Vulnerability

| Name | Type | Description |
| --- | --- | --- |
| **id** | **string** | ID（后端指定） |
| **product_id** | **string** | 产品ID（后端指定） |
| **obt_assess** | **string** | 公测评估 |
| **ga_assess** | **string** | GA评估 |
| **assess_item** | **string** | 评估项 |
| **description** | **string** | 备注 |
| **create_time** | **int** | 创建时间 |
| **update_time** | **int** | 更新时间 |

### Performance

| Name | Type | Description |
| --- | --- | --- |
| **id** | **string** | ID（后端指定） |
| **product_id** | **string** | 产品ID（后端指定） |
| **performance_index** | **string** | 性能指标 |
| **design_value** | **string** | 设计性能值 |
| **obt_value** | **string** | 公测性能值 |
| **ga_value** | **string** | GA性能值 |
| **description** | **string** | 说明 |
| **create_time** | **int** | 创建时间 |
| **update_time** | **int** | 更新时间 |

### ProcessListOfficialDefine

| Name | Type | Description |
| --- | --- | --- |
| **id** | **string** | ID（后端指定） |
| **product_id** | **string** | 产品ID |
| **current_operator** | **string** | 当前操作人（后端指定） |
| **current_process_id** | **string** | 当前审批人ID（后端指定） |
| **status** | **int** | 审批状态 |
| **created_by** | **string** | 创建人 |
| **finish_time** | **int** | 申请单结束时间 |
| **approved_time** | **int** | 审批时间 |
| **current_stage** | **int** | 当前审批阶段 |
| **review_time** | **string** | 嚬呻时间 |
| **review_recode** | **int** | 评审记录 |
| **improvements** | **[]string** | 改进项 |
| **create_time** | **int** | 创建时间 |
| **update_time** | **int** | 更新时间 |

### Template

| Name | Type | Description |
| --- | --- | --- |
| **description** | **string** | 描述信息 |
| **role** | **角色** | 角色 |
| **principal** | **[]string** | 审批人集合 |
| **approve_status** | **int** | 审批状态 |

home页接口定义
--------
* 新增产品

 [/api/v1/official/product]()
 
**Parameters**

| Name | Type | Description |
| --- | --- | --- |
| **product** | **[Product](#Product)** | 官网产品定义信息 |

```
POST
{
  "data": {
    "item": "kjsianaoqpdmcjaheuaierqd",  //ID
    "pager": null
  },
  "status": {
    "code": "OK",
    "msg": "ok"
  },
  "trace": {
    "destIp": "",
    "id": 1558077958185526000,
    "srcIp": "127.0.0.1",
    "timestamp": 1558077958
  }
}
```

* 查看产品

[/api/v1/official/product]()

**Parameters**

| Name | Type | Description |
| --- | --- | --- |
| **product_name**<br>*optional* | **string** | 产品名称 |
| **product_manager**<br>*optional* | **string** | 产品经理 |

```
GET
{
  "data": {
    "item": []Product, 
    "pager": {
      "page": 1,
      "page_size": 10,
      "total_count": 4
    }
  },
  "status": {
    "code": "OK",
    "msg": "ok"
  },
  "trace": {
    "destIp": "",
    "id": 1558077958185526000,
    "srcIp": "127.0.0.1",
    "timestamp": 1558077958
  }
}
```

* 更新产品

[/api/v1/official/product]()

**Parameters**

| Name | Type | Description |
| --- | --- | --- |
| **id**| **string** | 产品ID |
| **其它可修改字段**<br>*optional* | **object** | 其它字段 |

```
PUT
{
  "status": {
    "code": "OK",
    "msg": "ok"
  },
  "trace": {
    "destIp": "",
    "id": 1558077958185526000,
    "srcIp": "127.0.0.1",
    "timestamp": 1558077958
  }
}
```

* 删除产品

[/api/v1/official/product]()

**Parameters**

| Name | Type | Description |
| --- | --- | --- |
| **id**| **string** | 产品ID |

```
DELETE
{
  "status": {
    "code": "OK",
    "msg": "ok"
  },
  "trace": {
    "destIp": "",
    "id": 1558077958185526000,
    "srcIp": "127.0.0.1",
    "timestamp": 1558077958
  }
}
```

* 查看产品详情\修改

[/api/v1/official/product/:id]()


**Parameters**

| Name | Type | Description |
| --- | --- | --- |
| **id**| **string** | 产品ID |

```
GET
{
  "data": {
    "item": [
    	product: Product,
    	checkpoint: []CheckPoint,
    	dock_system: []DockSystem,
    	function: []Function,
    	vulnerability: []Vulnerability,
    	performance: []Performance
    ]
    "pager": {
      "page": 1,
      "page_size": 10,
      "total_count": 4
    }
  },
  "status": {
    "code": "OK",
    "msg": "ok"
  },
  "trace": {
    "destIp": "",
    "id": 1558077958185526000,
    "srcIp": "127.0.0.1",
    "timestamp": 1558077958
  }
}
```

* 更新检查项

[/api/v1/official/checkpoint]()

**Parameters**

| Name | Type | Description |
| --- | --- | --- |
| **product_id**| **string** | 产品ID |
| **checkpoints**| **[]Checkpoint** | 检查项数组 |

```
PUT
{
  "status": {
    "code": "OK",
    "msg": "ok"
  },
  "trace": {
    "destIp": "",
    "id": 1558077958185526000,
    "srcIp": "127.0.0.1",
    "timestamp": 1558077958
  }
}
```

* 更新接入系统

[/api/v1/official/dock_system]()

**Parameters**

| Name | Type | Description |
| --- | --- | --- |
| **product_id**| **string** | 产品ID |
| **dock_systems**| **[]DockSystem** | 接入系统数组 |

```
PUT
{
  "status": {
    "code": "OK",
    "msg": "ok"
  },
  "trace": {
    "destIp": "",
    "id": 1558077958185526000,
    "srcIp": "127.0.0.1",
    "timestamp": 1558077958
  }
}
```

* 更新功能项

[/api/v1/official/function]()

**Parameters**

| Name | Type | Description |
| --- | --- | --- |
| **product_id**| **string** | 产品ID |
| **functions**| **[]Function** | 功能项数组 |

```
PUT
{
  "status": {
    "code": "OK",
    "msg": "ok"
  },
  "trace": {
    "destIp": "",
    "id": 1558077958185526000,
    "srcIp": "127.0.0.1",
    "timestamp": 1558077958
  }
}
```

* 更新脆弱性评估

[/api/v1/official/vulnerability]()

**Parameters**

| Name | Type | Description |
| --- | --- | --- |
| **product_id**| **string** | 产品ID |
| **vulnerabilitys**| **[]Vulnerability** | 脆弱性评估数组数组 |

```
PUT
{
  "status": {
    "code": "OK",
    "msg": "ok"
  },
  "trace": {
    "destIp": "",
    "id": 1558077958185526000,
    "srcIp": "127.0.0.1",
    "timestamp": 1558077958
  }
}
```

* 更新性能指标

[/api/v1/official/performance]()

**Parameters**

| Name | Type | Description |
| --- | --- | --- |
| **product_id**| **string** | 产品ID |
| **performances**| **[]Performance** | 性能指标数组 |

```
PUT
{
  "status": {
    "code": "OK",
    "msg": "ok"
  },
  "trace": {
    "destIp": "",
    "id": 1558077958185526000,
    "srcIp": "127.0.0.1",
    "timestamp": 1558077958
  }
}
```

模板结构
---
**CheckpointTemplate**

| Name | Type | Description |
| --- | --- | --- |
| **key_action** | **string** | 关键活动 |
| **cross_dept** | **bool** | 是否跨部门 |
| **check_stage** | **string** | 检查阶段 |


**DockSystemTemplate**

| Name | Type | Description |
| --- | --- | --- |
| **system** | **string** | 对接系统 |
| **internal_requirement** | **bool** | 对内发布要求 |
| **public_requirement** | **bool** | 对外发布要求 |
| **require_stage** | **string** | 要求介入阶段 |


运营后台接口
---
* 检查项模板查询

[/api/v1/official/checkpoint-template]()

```
GET
{
  "data": {
    "item": []CheckpointTemplate,
    "pager": null
  },
  "status": {
    "code": "OK",
    "msg": "ok"
  },
  "trace": {
    "destIp": "",
    "id": 1558077958185526000,
    "srcIp": "127.0.0.1",
    "timestamp": 1558077958
  }
}
```

* 接入系统模板查询

[/api/v1/official/dock-system-template]()

```
GET
{
  "data": {
    "item": []DockSystemTemplate,
    "pager": null
  },
  "status": {
    "code": "OK",
    "msg": "ok"
  },
  "trace": {
    "destIp": "",
    "id": 1558077958185526000,
    "srcIp": "127.0.0.1",
    "timestamp": 1558077958
  }
}
```

* 检查项模板更新

[/api/v1/official/checkpoint-template]()

**Parameters**

[]CheckpointTemplate

```
PUT
{
  "status": {
    "code": "OK",
    "msg": "ok"
  },
  "trace": {
    "destIp": "",
    "id": 1558077958185526000,
    "srcIp": "127.0.0.1",
    "timestamp": 1558077958
  }
}
```

* 接入系统模板更新

[/api/v1/official/dock-system-template]()

**Parameters**

[]DockSystemTemplate

```
PUT
{
  "status": {
    "code": "OK",
    "msg": "ok"
  },
  "trace": {
    "destIp": "",
    "id": 1558077958185526000,
    "srcIp": "127.0.0.1",
    "timestamp": 1558077958
  }
}
```

**产品定义流程接口**
---
**使用查询接口时，在filter新增query_missed_field  bool参数，即可忽略查询条件中记录没有的字段**

* 新增产品定义申请

[/api/v1/official/definition]()

**Parameters**

| Name | Type | Description |
| --- | --- | --- |
| **product_id** | **ProcessListOfficialDefine** | 产品定义申请 |
| **processors** | **map[string]string** | 审批人 |
| **processors** | **map[string]string** | 审批人 |
| **pause_status** | **bool** |  是否暂存 true：暂存 |


```
POST
{
  "data": {
    "item": "kjsianaoqpdmcjaheuaierqd",  //ID
    "pager": null
  },
  "status": {
    "code": "OK",
    "msg": "ok"
  },
  "trace": {
    "destIp": "",
    "id": 1558077958185526000,
    "srcIp": "127.0.0.1",
    "timestamp": 1558077958
  }
}
```

* 获取产品定义审批模板

[/api/v1/official/definition-template]()


```
GET
{
  "data": {
    "item": []Template,
    "pager": null
  },
  "status": {
    "code": "OK",
    "msg": "ok"
  },
  "trace": {
    "destIp": "",
    "id": 1558077958185526000,
    "srcIp": "127.0.0.1",
    "timestamp": 1558077958
  }
}
```

* 审批接口

[/api/v1/process/:id]()

**Parameters**

| Name | Type | Description |
| --- | --- | --- |
| **id** | **string** | 审批id |
| **approve_status** | **int** | 审批状态 1 通过  3 拒绝 |
| **data** | **map[string]object** | 更新数据 |

```
PUT
{
  "status": {
    "code": "OK",
    "msg": "ok"
  },
  "trace": {
    "destIp": "",
    "id": 1558077958185526000,
    "srcIp": "127.0.0.1",
    "timestamp": 1558077958
  }
}
```
