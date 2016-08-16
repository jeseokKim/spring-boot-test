<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<div class="row">
  <div class="col-lg-12">
    <div class="box">
      <div class="box-header">
        <h2><i class="fa fa-align-justify"></i><span class="break"></span>공통코드리스트</h2>
        <div class="box-icon">
          <a href="form-elements.html#" class="btn-minimize"><i class="fa fa-chevron-up"></i></a>
        </div>
      </div>
      <div class="box-content">
        <form id = "formTable"action="/admin/code/codeMngt" method="get"></form>
        <table id="codeTable" class="table table-bordered table-striped table-condensed table-hover">
          <thead>
            <tr>
              <th>코드ID</th>
              <th>코드명</th>
              <th>상위코드ID</th>
              <th>코드상세내용</th>
              <th>사용여부</th>
              <th>상위코드</th>
              <th>하위코드</th>
            </tr>
          </thead>
          <tbody>
            <c:forEach var="data" items="${codeList}" varStatus="loop">
              <tr>
                <td><c:out value="${data.codeId}"/><input id="codeId" type="hidden" value="${data.codeId}" /><input id="index" type="hidden" value="${loop.index}" /></td>
                <td><c:out value="${data.codeNm}"/></td>
                <td><c:out value="${data.pcodeId}"/><input id="pcodeId" type="hidden" value="${data.pcodeId}" /></td>
                <td><c:out value="${data.codeDesc}"/></td>
                <td><c:out value="${data.useYn}"/></td>
                <c:choose>
                  <c:when test="${data.upCodeYn eq 'Y'}">
                    <td><button id="btnUp" class="btn btn-large btn-primary">상위</button></td>
                  </c:when>
                  <c:otherwise>
                    <td><button class="btn btn-large" disabled="disabled">상위</button></td>
                  </c:otherwise>
                </c:choose>
                <c:choose>
                  <c:when test="${data.downCodeYn eq 'Y'}">
                    <td><button id="btnDown" class="btn btn-large btn-primary">하위</button></td>
                  </c:when>
                  <c:otherwise>
                    <td><button class="btn btn-large" disabled="disabled">하위</button></td>
                  </c:otherwise>
                </c:choose>
              </tr>
            </c:forEach>
          </tbody>
        </table>

        <div class="row">
          <div class="col-md-1 col-xs-12">
           <p>&nbsp;</p>
           <button id="btnHome" class="btn btn-large btn-primary">처음으로</button>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="row">
  <div class="col-lg-12">
    <div class="box">
      <div class="box-header">
        <h2><i class="fa fa-align-justify"></i><span class="break"></span>코드상세</h2>
        <div class="box-icon">
          <a href="form-elements.html#" class="btn-minimize"><i class="fa fa-chevron-up"></i></a>
        </div>
      </div>
      <div class="box-content">
        <div class="row">
        <div class="form-group col-md-3 col-xs-12">
          <label class="control-label" for="compCodeId">코드Id</label>
          <div class="controls">
            <input type="text" class="form-control" id="compCodeId" name="codeId" disabled="disabled">
          </div>
        </div>
        <div class="form-group col-md-3 col-xs-12">
          <label class="control-label" for="compCodeNm">코드명</label>
          <div class="controls">
            <input type="text" class="form-control" id="compCodeNm" name="codeNm">
          </div>
        </div>
        <div class="form-group col-md-3 col-xs-12">
          <label class="control-label" for="compPcodeId">상위코드Id</label>
          <div class="controls">
            <input type="text" class="form-control" id="compPcodeId" name="pcodeId">
          </div>
        </div>
        <div class="form-group col-md-3 col-xs-12">
          <label class="control-label" for="compSortOrder">정렬순서</label>
          <div class="controls">
            <input type="text" class="form-control" id="compSortOrder" name="sortOrder">
          </div>
        </div>

        <div class="form-group col-md-9 col-xs-12">
          <label class="control-label" for="compCodeDesc">상세내역</label>
          <div class="controls">
            <input type="text" class="form-control" id="compCodeDesc" name="codeDesc">
          </div>
        </div>
        <div class="form-group col-md-3 col-xs-12">
          <label class="control-label" for="optionsCheckbox2">사용여부</label>
          <div class="controls">
            <label class="checkbox">
              <input type="checkbox" id="optionsCheckbox2" name ="useYn"/>(checked : Y / N)
            </label>
          </div>
        </div>

        <div class="form-group col-md-3 col-xs-12">
          <label class="control-label" for="compEtc1">기타1</label>
          <div class="controls">
            <input type="text" class="form-control" id="compEtc1" name="etc1">
          </div>
        </div>
        <div class="form-group col-md-3 col-xs-12">
          <label class="control-label" for="compEtc1Desc">기타1내용</label>
          <div class="controls">
            <input type="text" class="form-control" id="compEtc1Desc" name="etc1Desc">
          </div>
        </div>
        <div class="form-group col-md-3 col-xs-12">
          <label class="control-label" for="compEtc2">기타2</label>
          <div class="controls">
            <input type="text" class="form-control" id="compEtc2" name="etc2">
          </div>
        </div>
        <div class="form-group col-md-3 col-xs-12">
          <label class="control-label" for="compEtc2Desc">기타2내용</label>
          <div class="controls">
            <input type="text" class="form-control" id="compEtc2Desc" name="etc2Desc">
          </div>
        </div>

        <div class="form-group col-md-3 col-xs-12">
          <label class="control-label" for="compEtc3">기타3</label>
          <div class="controls">
            <input type="text" class="form-control" id="compEtc3" name="etc3">
            </div>
        </div>
        <div class="form-group col-md-3 col-xs-12">
          <label class="control-label" for="compEtc3Desc">기타3내용</label>
          <div class="controls">
            <input type="text" class="form-control" id="compEtc3Desc" name="etc3Desc">
          </div>
        </div>
        <div class="form-group col-md-3 col-xs-12">
          <label class="control-label" for="compEtc4">기타4</label>
          <div class="controls">
            <input type="text" class="form-control" id="compEtc4" name="etc4">
          </div>
        </div>
        <div class="form-group col-md-3 col-xs-12">
          <label class="control-label" for="compEtc4Desc">기타4내용</label>
          <div class="controls">
            <input type="text" class="form-control" id="compEtc4Desc" name="etc4Desc">
          </div>
        </div>

        <div class="form-group col-md-3 col-xs-12">
          <label class="control-label" for="compEtc5">기타5</label>
          <div class="controls">
            <input type="text" class="form-control" id="compEtc5" name="etc5">
          </div>
        </div>
        <div class="form-group col-md-3 col-xs-12">
          <label class="control-label" for="compEtc5Desc">기타5내용</label>
          <div class="controls">
            <input type="text" class="form-control" id="compEtc5Desc" name="etc5Desc">
          </div>
        </div>

        <div class="form-group col-md-12 col-xs-12 text-right">
         <button id="btnNew" class="btn btn-large btn-primary" type="submit">신규</button>
         <button id="btnNew" class="btn btn-large btn-primary" type="submit">저장</button>
        </div>


      </div>
      </div>
    </div>
  </div>
</div>

<script type="text/javascript">
$(document).ready(function() {

	/**
	 * 페이징번호 생성
	 */
    var totalSize = "${totalSize}"; //조회된 로우 카트

    var pagePerRow = 10; //한페이지에 출력될 로우의 갯수

    var totalPageNum = totalSize / pagePerRow;

	console.log("totalSize = " + totalSize);
    console.log("totalPageNum = " + totalPageNum);
    console.log("round = " + Math.ceil(totalPageNum));

    var totalPage = Math.ceil(totalPageNum)

    if(totalSize > 0) { //조회된 데이터가 있는경우만

        //페이지 생성
        $("<li><a>Prev</a></li>").appendTo($("#paging ul")).find("div");

        for(var i = 1; i < totalPage+1; i ++) {
            $("<li><a name=pageNum>" + i + "</a></li>").appendTo($("#paging ul")).find("div");
        }

        $("<li><a>Next</a></li>").appendTo($("#paging ul")).find("div");

        //생성완료후 1번째 페이지 클래스를 active로 활성화
        $("#paging ul li").eq(1).addClass("active");
    }

	/**
	 * 하위버튼 클릭 이벤트
	 */
    $("#codeTable #btnDown").on("click", function(){
	    console.log("btnUp");
	    var idx = $(this).parents("tr").find("#index").val();
	    var html = '<form role="form" id="downform" action="/admin/code/codeMngt" method="get"><input type="hidden" name="codeId">'
	    		    +'<input type="hidden" name="searchKey" value="2"></form>'
		$("#formTable").append(html);
		$("#downform input[name='codeId']").val($("#codeTable tbody tr").eq(idx).find("#codeId").val());
		$("#downform").submit();
	});

	/**
	 * 상위버튼 클릭 이벤트
	 */
    $("#codeTable #btnUp").on("click", function(){
		console.log("btnUp");
		var idx = $(this).parents("tr").find("#index").val();
		var html = '<form role="form" id="upform" action="/admin/code/codeMngt" method="get"><input type="hidden" name="codeId">'
		           +'<input type="hidden" name="searchKey" value="3"></form>'
		$("#formTable").append(html);
		$("#upform input[name='codeId']").val($("#codeTable tbody tr").eq(idx).find("#pcodeId").val());
		$("#upform").submit();
	});

	/**
	 * 처음으로버튼 클릭 이벤트
	 */
    $("#btnHome").on("click", function(){
		console.log("btnHome");
		var html = '<form role="form" id="Homeform" action="/admin/code/codeMngt" method="get">'
		           +'<input type="hidden" name="searchKey" value="1"></form>'
		$("#formTable").append(html);
		$("#Homeform").submit();
	});
});
</script>