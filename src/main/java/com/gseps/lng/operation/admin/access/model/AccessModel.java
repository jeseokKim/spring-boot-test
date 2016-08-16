package com.gseps.lng.operation.admin.access.model;

import com.gseps.lng.operation.base.model.BaseModel;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper=false)
@SuppressWarnings("serial")
public class AccessModel extends BaseModel {
    private String accessId;
    private String accessName;
    private String password;
    private String deptName;
    private String useYn;
    private String mngYn;
}
