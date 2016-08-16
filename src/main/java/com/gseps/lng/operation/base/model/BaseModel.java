package com.gseps.lng.operation.base.model;

import java.io.Serializable;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.gseps.lng.operation.admin.access.model.AccessModel;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 공통으로 사용되는 model
 * @author jeseok
 *
 */
@Data
@EqualsAndHashCode(callSuper=false)
@SuppressWarnings("serial")
public class BaseModel implements Cloneable, Serializable{
    private String loginAccessId;
    private String loginAccessIp;
    private String registId;
    private Date registDate;
    private String registIp;
    private String modifyId;
    private Date modifyDate;
    private String modifyIp;

    public BaseModel() {
        try {
            ServletRequestAttributes sra = (ServletRequestAttributes) RequestContextHolder
                    .currentRequestAttributes();
            HttpServletRequest request = sra.getRequest();
            AccessModel access = (AccessModel) request.getSession().getAttribute("accessInfo");

            if (access != null) {
                loginAccessId = access.getAccessId();
                loginAccessIp = request.getRemoteAddr();
            } else {
                loginAccessId = "SYSTEM";
                loginAccessIp = "127.0.0.1";
            }
        } catch (Exception e) {
            loginAccessId = "";
            loginAccessIp = "";
        }
    }
}
