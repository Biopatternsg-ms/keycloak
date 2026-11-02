<#macro registrationLayout bodyClass="" displayInfo=false displayMessage=true displayRequiredFields=false>
<!DOCTYPE html>
<html class="${properties.kcHtmlClass!}" lang="${lang}"<#if realm.internationalizationEnabled> dir="${(locale.rtl)?then('rtl','ltr')}"</#if>>

<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <#if properties.meta?has_content>
        <#list properties.meta?split(' ') as meta>
            <meta name="${meta?split('==')[0]}" content="${meta?split('==')[1]}"/>
        </#list>
    </#if>
    <title>${msg("loginTitle",(realm.displayName!'Biopatternsg'))}</title>
    <link rel="icon" href="${url.resourcesPath}/img/favicon.ico" />

    <!-- Google Fonts Inter & Space Grotesk -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;900&family=Space+Grotesk:wght@500;700&display=swap" rel="stylesheet">

    <!-- CSS -->
    <#if properties.stylesCommon?has_content>
        <#list properties.stylesCommon?split(' ') as style>
            <link href="${url.resourcesCommonPath}/${style}" rel="stylesheet" />
        </#list>
    </#if>
    <#if properties.styles?has_content>
        <#list properties.styles?split(' ') as style>
            <link href="${url.resourcesPath}/${style}" rel="stylesheet" />
        </#list>
    </#if>

    <!-- Scripts -->
    <#if properties.scripts?has_content>
        <#list properties.scripts?split(' ') as script>
            <script src="${url.resourcesPath}/${script}" type="text/javascript"></script>
        </#list>
    </#if>
    <script type="importmap">
        {
            "imports": {
                "rfc4648": "${url.resourcesCommonPath}/vendor/rfc4648/rfc4648.js"
            }
        }
    </script>
    <script src="${url.resourcesPath}/js/menu-button-links.js" type="module"></script>
    <#if scripts??>
        <#list scripts as script>
            <script src="${script}" type="text/javascript"></script>
        </#list>
    </#if>
    <script type="module">
        import { startSessionPolling } from "${url.resourcesPath}/js/authChecker.js";

        startSessionPolling(
            "${url.ssoLoginInOtherTabsUrl?no_esc}"
        );
    </script>
    <script type="module">
        document.addEventListener("click", (event) => {
            const link = event.target.closest("a[data-once-link]");

            if (!link) {
                return;
            }

            if (link.getAttribute("aria-disabled") === "true") {
                event.preventDefault();
                return;
            }

            const { disabledClass } = link.dataset;

            if (disabledClass) {
                link.classList.add(...disabledClass.trim().split(/\s+/));
            }

            link.setAttribute("role", "link");
            link.setAttribute("aria-disabled", "true");
        });
    </script>
    <#if authenticationSession??>
        <script type="module">
            import { checkAuthSession } from "${url.resourcesPath}/js/authChecker.js";

            checkAuthSession(
                "${authenticationSession.authSessionIdHash}"
            );
        </script>
    </#if>
</head>

<body class="${properties.kcBodyClass!} bp-page-body" data-page-id="login-${pageId}">
<div class="bp-page-container">
    <div class="bp-content-wrapper">

        <!-- Badge / Píldora de Marca Superior -->
        <div class="bp-brand-badge-container">
            <div class="bp-brand-badge">
                <span class="bp-brand-dot"></span>
                <span class="bp-brand-text">BIOPATTERNSG</span>
            </div>
        </div>

        <!-- Tarjeta Principal Glass / Card -->
        <div class="bp-card">
            <div class="bp-card-top-accent"></div>

            <header class="bp-card-header">
                <#if realm.internationalizationEnabled && locale.supported?size gt 1>
                    <div class="bp-locale-container" id="kc-locale">
                        <div class="bp-locale-dropdown menu-button-links">
                            <button tabindex="1" id="kc-current-locale-link" class="bp-locale-btn" aria-label="${msg("languages")}" aria-haspopup="true" aria-expanded="false" aria-controls="language-switch1">
                                <span>${locale.current}</span>
                                <svg width="12" height="12" viewBox="0 0 12 12" fill="none"><path d="M2.5 4.5L6 8L9.5 4.5" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/></svg>
                            </button>
                            <ul role="menu" tabindex="-1" aria-labelledby="kc-current-locale-link" id="language-switch1" class="bp-locale-menu">
                                <#assign i = 1>
                                <#list locale.supported as l>
                                    <li class="bp-locale-item-wrapper" role="none">
                                        <a role="menuitem" id="language-${i}" class="bp-locale-item<#if l.label == locale.current> active</#if>" href="${l.url}">${l.label}</a>
                                    </li>
                                    <#assign i++>
                                </#list>
                            </ul>
                        </div>
                    </div>
                </#if>

                <#if !(auth?has_content && auth.showUsername() && !auth.showResetCredentials())>
                    <#if displayRequiredFields>
                        <div class="bp-header-title-wrap">
                            <span class="bp-required-note"><span class="bp-required-star">*</span> ${msg("requiredFields")}</span>
                            <h1 id="kc-page-title" class="bp-card-title"><#nested "header"></h1>
                        </div>
                    <#else>
                        <h1 id="kc-page-title" class="bp-card-title"><#nested "header"></h1>
                    </#if>
                <#else>
                    <#if displayRequiredFields>
                        <div class="bp-header-title-wrap">
                            <span class="bp-required-note"><span class="bp-required-star">*</span> ${msg("requiredFields")}</span>
                            <#nested "show-username">
                            <div id="kc-username" class="bp-attempted-username-row">
                                <label id="kc-attempted-username">${auth.attemptedUsername}</label>
                                <a id="reset-login" href="${url.loginRestartFlowUrl}" aria-label="${msg("restartLoginTooltip")}">
                                    <span class="bp-tooltip-icon">&#8635;</span>
                                </a>
                            </div>
                        </div>
                    <#else>
                        <#nested "show-username">
                        <div id="kc-username" class="bp-attempted-username-row">
                            <label id="kc-attempted-username">${auth.attemptedUsername}</label>
                            <a id="reset-login" href="${url.loginRestartFlowUrl}" aria-label="${msg("restartLoginTooltip")}">
                                <span class="bp-tooltip-icon">&#8635;</span>
                            </a>
                        </div>
                    </#if>
                </#if>
            </header>

            <div id="kc-content" class="bp-card-body">
                <#-- Alert Messages (warning, error, success, info) -->
                <#if displayMessage && message?has_content && (message.type != 'warning' || !isAppInitiatedAction??)>
                    <div class="bp-alert bp-alert-${message.type} alert-${message.type}" role="alert">
                        <div class="bp-alert-icon">
                            <#if message.type = 'success'>
                                <svg viewBox="0 0 20 20" fill="currentColor" width="18" height="18"><path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clip-rule="evenodd"/></svg>
                            <#elseif message.type = 'warning'>
                                <svg viewBox="0 0 20 20" fill="currentColor" width="18" height="18"><path fill-rule="evenodd" d="M8.257 3.099c.765-1.36 2.722-1.36 3.486 0l5.58 9.92c.75 1.334-.213 2.98-1.742 2.98H4.42c-1.53 0-2.493-1.646-1.743-2.98l5.58-9.92zM11 13a1 1 0 11-2 0 1 1 0 012 0zm-1-8a1 1 0 00-1 1v3a1 1 0 002 0V6a1 1 0 00-1-1z" clip-rule="evenodd"/></svg>
                            <#elseif message.type = 'error'>
                                <svg viewBox="0 0 20 20" fill="currentColor" width="18" height="18"><path fill-rule="evenodd" d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-7 4a1 1 0 11-2 0 1 1 0 012 0zm-1-9a1 1 0 00-1 1v4a1 1 0 102 0V6a1 1 0 00-1-1z" clip-rule="evenodd"/></svg>
                            <#else>
                                <svg viewBox="0 0 20 20" fill="currentColor" width="18" height="18"><path fill-rule="evenodd" d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-7-4a1 1 0 11-2 0 1 1 0 012 0zM9 9a1 1 0 000 2v3a1 1 0 001 1h1a1 1 0 100-2v-3a1 1 0 00-1-1H9z" clip-rule="evenodd"/></svg>
                            </#if>
                        </div>
                        <div class="bp-alert-text">
                            <span class="bp-alert-summary">${kcSanitize(message.summary)?no_esc}</span>
                        </div>
                    </div>
                </#if>

                <#nested "form">

                <#if auth?has_content && auth.showTryAnotherWayLink()>
                    <form id="kc-select-try-another-way-form" action="${url.loginAction}" method="post">
                        <div class="bp-form-group">
                            <input type="hidden" name="tryAnotherWay" value="on"/>
                            <a href="#" id="try-another-way" class="bp-link-subtle"
                               onclick="document.forms['kc-select-try-another-way-form'].requestSubmit();return false;">${msg("doTryAnotherWay")}</a>
                        </div>
                    </form>
                </#if>

                <#nested "socialProviders">

                <#if displayInfo>
                    <div id="kc-info" class="bp-info-area">
                        <div id="kc-info-wrapper">
                            <#nested "info">
                        </div>
                    </div>
                </#if>
            </div>
        </div>

        <!-- Debajo de la Tarjeta: Copyright / Footer -->
        <footer class="bp-footer">
            <p class="bp-footer-text">&copy; 2026 Biopatternsg Research Project</p>
        </footer>

    </div>
</div>
</body>
</html>
</#macro>
