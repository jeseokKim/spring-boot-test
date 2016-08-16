package com.gseps.lng.operation.admin.code.repository;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.gseps.lng.operation.admin.code.model.CodeModel;

@Repository
public interface CodeMapper {

	List<CodeModel> selectCodeList(CodeModel searchDomain);

}
