<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common.jsp"%>
<head>

	<meta http-equiv="Content-Type" content="text/html; charset=utf8" />
	<title>微信公共平台</title>
	<script type="text/javascript">
		function doadd(){
			$('#form1').attr('action', '${ctx }/cmd/add?accountId='+$("#accountId").val());
			$('#form1').submit();
		}
	
		function dodelete(id){
			$('#form1').attr('action', '${ctx}/cmd/delete/'+id);
			$('#form1').submit();
		}
		
		function doedit(id){
			$('#form1').attr('action', '${ctx }/cmd/edit/'+id);
			$('#form1').submit();
		}
	
		function doquery(){
			$('#form1').attr('action', '${ctx}/cmd/init?accountId='+$("#accountId").val()+"&condition="+$("#condition").val());
			$('#form1').submit();
		}
		
		function changeAccount() {
			var accountid = $("#accountId").val();
			$('#form1').attr('action', '${ctx}/cmd/init?accountId=' + accountid);
			$('#form1').submit();
		}
		$(function(){
			$("#accountId").val("${accountId}");
		})
		
		function doview(cmdid,msgid){
			$("#tc").remove();
			
			$("#messageId").val(msgid);
			$("#t"+cmdid).append("<table id='tc' width='100%' border='0' align='center' style='margin-top: 20px'></table>");
			ajaxMessage();
		}
	</script>
</head>
<body >
	<form id="form1" method="POST">
	<input type="hidden" id="messageId">
	<div class="b_con">
	<div class="by_box">
		<%@include file="../menu.jsp"%>
		<table width="967" border="0" align="center" cellpadding="0" cellspacing="0">
			
			<tr>
				<td>
					<table width="942" border="0" align="center" cellpadding="0" cellspacing="0">
						<tr>
							<td height="53" background="${images}/shan.png">
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td width="2%">&nbsp;</td>
										<td width="4%"><img src="${images}/oic_3.png" width="30"height="21" /></td>
										<td width="94%" class="biao">智能客服</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td height="350" valign="top" background="${images}/he.png">
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td width="120" valign="top">
											<table width="100%" border="0" cellspacing="0" cellpadding="0">
												<tr>
													<td height="40" bgcolor="#e87352">
														<div align="center" class="biao">智能客服</div>
													</td>
												</tr>
												<tr>
													<td height="40">
														<div align="center" >
															<a href="javascript:doadd()" class="biao1">添加匹配</a>
														</div>
													</td>
												</tr>
											</table>
										</td>
										<td width="1" bgcolor="#999999"><img src="${images}/su.png" width="1" height="257" /></td>
										<td width="770" valign="top">
											<table width="96%" border="0" align="center" cellpadding="0"cellspacing="0">
												<tr>
													<td height="40">
														<table width="100%" border="0"cellspacing="0" cellpadding="0">
															<tr>
																<td width="20%" height="40" class="biao">公众帐号名</td>
																<td>
																	<select id="accountId" style="width: 150px;" onchange="changeAccount()" >
																		<c:forEach items="${accounts}" var="account">
																			<option value="${account.id }">${account.name}</option>
																		</c:forEach>
																	</select>
																</td>
															</tr>
															<tr>
																<td width="20%" height="40" class="biao">用户发送:</td>
																<td><input type="text" id="condition" size="40" value="${condition }"></td>
																<td align="left">
																	<input type="button" value="查询"  class="btn-primary" onclick="doquery()" />&nbsp;
																	
																</td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td >
														<table width="98%" border="0" align="center"cellpadding="0" cellspacing="0">
										 					<tr height="30" bgcolor="#d3d3d3">
																<td width="20%" class="biao">用户发送</td>
																<td width="25%" class="biao">匹配类型</td>
																<td width="40%" class="biao">回复内容</td>
																<td width="15%" class="biao">操作</td>
															</tr>
															<c:forEach items="${cmds}" var="cmd" varStatus="status">
															<tr>
																	<td >${cmd.cmd }</td>
																	<td>
																		<select disabled style="width: 100px">
																			<c:forEach items="${ctypeList }" var="ctype">
																				<c:if test="${ctype.key== cmd.ctype}">
																					<option value="${ctype.key }">${ctype.value}</option>
																				</c:if>
																			</c:forEach>
																		</select>
																	</td>
																	<td >
																		<select style="width: 100px" disabled>
																			<c:forEach items="${messages }" var="message">
																				<c:if test="${cmd.messageId== message.id}">
																					<option value="${message.id }">${message.msgName}</option>
																				</c:if>
																			</c:forEach>
																		</select>
																	</td>
																	<td align="center" class="zeng">
																		<input type="button" value="查看" onclick="doview('${cmd.id}','${cmd.messageId}')"  class="btn-primary" name="btnView" id="btnView${cmd.id }"/>
																		&nbsp;<input type="button" value="修改" onclick="doedit(${cmd.id })"  class="btn-primary"/>
																		&nbsp;<input type="button" value="删除"  class="btn-primary" onclick="dodelete('${cmd.id }')" />
																	</td>
																</tr>
																<tr><td colspan="4" id="t${cmd.id }"></td></tr>
																<tr>
																	<td colspan="4" >
																		<div align="center"><img src="${images}/xian.jpg" width="800" height="1" /></div>
																	</td>
																</tr>
															</c:forEach>
														</table>
													</td>
												</tr>											
													
												
												
											</table>
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td><img src="${images}/xia_zu.png" width="942" height="14" /></td>
						</tr>
						
					</table>
				</td>
			</tr>
		</table>	<%@include file="../bottom.jsp"%>
	</div>
</div>
	</form>
<%@ include file="../content/content.jsp"%>
</body>
</html>