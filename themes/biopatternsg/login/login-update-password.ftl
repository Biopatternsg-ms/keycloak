<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=!messagesPerField.existsError('password','password-confirm'); section>
    <#if section = "header">
        ${msg("updatePasswordTitle")}
    <#elseif section = "form">
        <form id="kc-passwd-update-form" class="bp-form" onsubmit="login.disabled = true; return true;" action="${url.loginAction}" method="post">
            
            <div class="bp-form-group">
                <label for="password-new" class="bp-label">${msg("passwordNew")}</label>
                <div class="bp-input-wrapper">
                    <input type="password" id="password-new" name="password-new" class="bp-input <#if messagesPerField.existsError('password','password-confirm')>bp-input-error-state</#if>"
                           autofocus autocomplete="new-password"
                           placeholder="••••••••••••"
                           aria-invalid="<#if messagesPerField.existsError('password','password-confirm')>true</#if>"
                    />
                    <button class="bp-password-toggle-btn" type="button" aria-label="${msg('showPassword')}"
                            aria-controls="password-new" data-password-toggle
                            data-label-show="${msg('showPassword')}" data-label-hide="${msg('hidePassword')}">
                        <svg class="eye-icon eye-show" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true" width="18" height="18">
                            <path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"></path>
                            <circle cx="12" cy="12" r="3"></circle>
                        </svg>
                        <svg class="eye-icon eye-hide" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true" width="18" height="18" style="display:none;">
                            <path d="M17.94 17.94A10.07 10.07 0 0 1 12 20c-7 0-11-8-11-8a18.45 18.45 0 0 1 5.06-5.94M9.9 4.24A9.12 9.12 0 0 1 12 4c7 0 11 8 11 8a18.5 18.5 0 0 1-2.16 3.19m-6.72-1.07a3 3 0 1 1-4.24-4.24"></path>
                            <line x1="1" y1="1" x2="23" y2="23"></line>
                        </svg>
                    </button>
                </div>
                <#if messagesPerField.existsError('password')>
                    <span id="input-error-password" class="bp-input-error-msg" aria-live="polite">
                        ${kcSanitize(messagesPerField.get('password'))?no_esc}
                    </span>
                </#if>
            </div>

            <div class="bp-form-group">
                <label for="password-confirm" class="bp-label">${msg("passwordConfirm")}</label>
                <div class="bp-input-wrapper">
                    <input type="password" id="password-confirm" name="password-confirm"
                           class="bp-input <#if messagesPerField.existsError('password-confirm')>bp-input-error-state</#if>"
                           autocomplete="new-password"
                           placeholder="••••••••••••"
                           aria-invalid="<#if messagesPerField.existsError('password-confirm')>true</#if>"
                    />
                    <button class="bp-password-toggle-btn" type="button" aria-label="${msg('showPassword')}"
                            aria-controls="password-confirm" data-password-toggle
                            data-label-show="${msg('showPassword')}" data-label-hide="${msg('hidePassword')}">
                        <svg class="eye-icon eye-show" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true" width="18" height="18">
                            <path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8z"></path>
                            <circle cx="12" cy="12" r="3"></circle>
                        </svg>
                        <svg class="eye-icon eye-hide" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true" width="18" height="18" style="display:none;">
                            <path d="M17.94 17.94A10.07 10.07 0 0 1 12 20c-7 0-11-8-11-8a18.45 18.45 0 0 1 5.06-5.94M9.9 4.24A9.12 9.12 0 0 1 12 4c7 0 11 8 11 8a18.5 18.5 0 0 1-2.16 3.19m-6.72-1.07a3 3 0 1 1-4.24-4.24"></path>
                            <line x1="1" y1="1" x2="23" y2="23"></line>
                        </svg>
                    </button>
                </div>
                <#if messagesPerField.existsError('password-confirm')>
                    <span id="input-error-password-confirm" class="bp-input-error-msg" aria-live="polite">
                        ${kcSanitize(messagesPerField.get('password-confirm'))?no_esc}
                    </span>
                </#if>
            </div>

            <div class="bp-form-group bp-logout-sessions-group">
                <label class="bp-checkbox-container" for="logout-sessions">
                    <input type="checkbox" id="logout-sessions" name="logout-sessions" value="on" checked>
                    <span class="bp-checkbox-mark">
                        <svg viewBox="0 0 12 10" fill="none" xmlns="http://www.w3.org/2000/svg" width="12" height="10">
                            <path d="M1.5 5L4.5 8L10.5 2" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                        </svg>
                    </span>
                    <span class="bp-checkbox-label">${msg("logoutOtherSessions")}</span>
                </label>
            </div>

            <div id="kc-form-buttons" class="bp-form-actions">
                <#if isAppInitiatedAction??>
                    <input name="login" class="bp-button bp-button-primary bp-button-large" type="submit" value="${msg("doSubmit")}" />
                    <button class="bp-button bp-button-default bp-button-large" type="submit" name="cancel-aia" value="true">${msg("doCancel")}</button>
                <#else>
                    <input name="login" class="bp-button bp-button-primary bp-button-block bp-button-large" type="submit" value="${msg("doSubmit")}" />
                </#if>
            </div>
        </form>
        <script type="module" src="${url.resourcesPath}/js/passwordVisibility.js"></script>
    </#if>
</@layout.registrationLayout>
