<#ftl output_format="plainText">
<#assign updatePasswordLink = link?replace("realms/biopatternsg/login-actions/action-token", "update-password")>
${msg("passwordResetBody",updatePasswordLink, linkExpiration, realmName, linkExpirationFormatter(linkExpiration))}
