<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=false; section>
    <#if section = "header">
        <#if messageHeader??>
            ${kcSanitize(msg("${messageHeader}"))?no_esc}
        <#else>
            ${message.summary}
        </#if>
    <#elseif section = "form">
    <div id="kc-info-message" class="bp-info-message-container">
        
        <!-- Bloque Informativo Estilo 'Label + Input' de Biopatternsg -->
        <div class="bp-info-status-block">
            <span class="bp-info-status-label">
                <#if actionUri?has_content>
                    CONFIRMACIÓN DE ACCIÓN
                <#elseif message.type?? && message.type = 'success'>
                    ESTADO: COMPLETADO
                <#else>
                    ESTADO DE LA SOLICITUD
                </#if>
            </span>
            <div class="bp-info-status-content">
                <p class="bp-instruction-text">
                    ${message.summary}<#if requiredActions??><#list requiredActions>: <b><#items as reqActionItem>${kcSanitize(msg("requiredAction.${reqActionItem}"))?no_esc}<#sep>, </#items></b></#list><#else></#if>
                </p>
            </div>
        </div>

        <#if skipLink??>
        <#else>
            <div class="bp-info-action-wrap">
                <#if pageRedirectUri?has_content>
                    <p><a href="${pageRedirectUri}" class="bp-link-back">${msg("backToApplication")}</a></p>
                <#elseif actionUri?has_content>
                    <p><a href="${actionUri}" class="bp-link-proceed">${msg("proceedWithAction")}</a></p>
                <#elseif (client.baseUrl)?has_content>
                    <p><a href="${client.baseUrl}" class="bp-link-back">${msg("backToApplication")}</a></p>
                </#if>
            </div>
        </#if>
    </div>
    </#if>
</@layout.registrationLayout>
