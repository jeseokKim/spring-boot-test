package com.gseps.lng.operation.model;

import com.gseps.lng.operation.base.model.BaseModel;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper=false)
@SuppressWarnings("serial")
public class City extends BaseModel {
    private Long id;
    private String name;
    private String state;
    private String country;
}