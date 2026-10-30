<#ftl output_format="plainText">
<#outputformat "plainText">
<#assign requiredActionsText><#if requiredActions??><#list requiredActions><#items as reqActionItem>${msg("requiredAction.${reqActionItem}")}<#sep>, </#sep></#items></#list></#if></#assign>
</#outputformat>
<#assign updatePasswordLink = link?replace("realms/biopatternsg/login-actions/action-token", "update-password")>
ACCIÓN REQUERIDA · BIOPATTERNSG
================================

Acción Requerida
ACTUALIZACIÓN DE CUENTA

Un administrador ha solicitado que actualices la información de tu cuenta en Biopatternsg. Por favor, revisa la acción requerida y utiliza el enlace a continuación para completar el proceso de forma segura.

ACCIÓN SOLICITADA:
<#if requiredActionsText?has_content>${requiredActionsText?replace("Verify Email", "Verificar Correo Electrónico", "i")?replace("Update Password", "Actualizar Contraseña", "i")}<#else>Verificación y Actualización de Cuenta</#if>

Para completar la acción solicitada, haz clic en el siguiente enlace:
${updatePasswordLink}

Este enlace caducará en ${linkExpirationFormatter(linkExpiration)}. Si no solicitaste este cambio o desconoces esta solicitud, ignora este mensaje.

Volver al portal de acceso: https://bioai.redclara.net

© 2026 Biopatternsg Research Project
