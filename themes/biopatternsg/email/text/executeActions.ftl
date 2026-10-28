<#ftl output_format="plainText">
<#assign requiredActionsText><#if requiredActions??><#list requiredActions><#items as reqActionItem>${msg("requiredAction.${reqActionItem}")}<#sep>, </#items></#list><#else></#if></#assign>
<#assign updatePasswordLink = link?replace("realms/biopatternsg/login-actions/action-token", "update-password")>

${msg("executeActionsBody",updatePasswordLink, linkExpiration, realmName, requiredActionsText, linkExpirationFormatter(linkExpiration))}
