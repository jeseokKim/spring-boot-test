package com.gseps.lng.operation.admin.code.service;

import java.util.List;

import com.gseps.lng.operation.admin.code.model.CodeModel;

public interface CodeService {

	List<CodeModel> selectCodeList(CodeModel searchDomain);

}
