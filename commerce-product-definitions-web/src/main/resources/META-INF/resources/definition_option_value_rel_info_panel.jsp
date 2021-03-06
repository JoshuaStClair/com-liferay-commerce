<%--
/**
 * Copyright (c) 2000-present Liferay, Inc. All rights reserved.
 *
 * This library is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free
 * Software Foundation; either version 2.1 of the License, or (at your option)
 * any later version.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
 * details.
 */
--%>

<%@ include file="/init.jsp" %>

<%
List<CPDefinitionOptionValueRel> cpDefinitionOptionValueRels = (List<CPDefinitionOptionValueRel>)request.getAttribute(CPWebKeys.CP_DEFINITION_OPTION_VALUE_RELS);

if (cpDefinitionOptionValueRels == null) {
	cpDefinitionOptionValueRels = Collections.emptyList();
}
%>

<c:choose>
	<c:when test="<%= cpDefinitionOptionValueRels.size() == 1 %>">

		<%
		CPDefinitionOptionValueRel cpDefinitionOptionValueRel = cpDefinitionOptionValueRels.get(0);

		request.setAttribute("info_panel.jsp-entry", cpDefinitionOptionValueRel);
		%>

		<div class="sidebar-header">
			<ul class="sidebar-header-actions">
				<li>
					<liferay-util:include page="/definition_option_value_rel_action.jsp" servletContext="<%= application %>" />
				</li>
			</ul>

			<h4><%= HtmlUtil.escape(cpDefinitionOptionValueRel.getName(languageId)) %></h4>
		</div>

		<div class="sidebar-body">
			<h5><liferay-ui:message key="id" /></h5>

			<p>
				<%= HtmlUtil.escape(String.valueOf(cpDefinitionOptionValueRel.getCPDefinitionOptionValueRelId())) %>
			</p>
		</div>
	</c:when>
	<c:otherwise>
		<div class="sidebar-header">
			<h4><liferay-ui:message arguments="<%= cpDefinitionOptionValueRels.size() %>" key="x-items-are-selected" /></h4>
		</div>
	</c:otherwise>
</c:choose>