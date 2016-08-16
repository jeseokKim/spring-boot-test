package com.gseps.lng.operation.admin.code.controller;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.gseps.lng.operation.admin.code.model.CodeModel;
import com.gseps.lng.operation.admin.code.service.CodeService;
import com.gseps.lng.operation.base.controller.BaseController;

/**
 * Code Controller
 * @author IT0557
 *
 */
@Controller
@RequestMapping("/admin/code")
public class CodeController extends BaseController {

    @Autowired
    private CodeService codeService;

    /**
     * 코드관리 조회
     */
    @RequestMapping(value = "/codeMngt", method = RequestMethod.GET)
    public String codeMngtView(Model model, CodeModel searchModel) {
    	logger.info("=========================================================================================================");
    	logger.info(searchModel.getSearchKey());
    	logger.info("=========================================================================================================");
    	List<CodeModel> codeModel = new ArrayList<CodeModel>();
    	codeModel = codeService.selectCodeList(searchModel);

        model.addAttribute("codeList", codeModel );
    	model.addAttribute("totalSize", codeModel.size());

        return "admin/code/codeMngt";
    }

}
