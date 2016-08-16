package com.gseps.lng.operation.admin.code.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gseps.lng.operation.admin.code.model.CodeModel;
import com.gseps.lng.operation.admin.code.repository.CodeMapper;
import com.gseps.lng.operation.admin.code.service.CodeService;

@Service
public class CodeServiceImpl implements CodeService {
	@Autowired
	private CodeMapper codeMapper;

	@Override
	public List<CodeModel> selectCodeList(CodeModel searchDomain) {
		return codeMapper.selectCodeList(searchDomain);
	}

}
