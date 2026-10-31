<#ftl output_format="plainText">
<#assign updatePasswordLink = link?replace("realms/biopatternsg/login-actions/action-token", "update-password")>
VERIFICACIÓN DE INVESTIGADOR
============================

Confirma tu Correo
ACTIVACIÓN DE CUENTA DE INVESTIGADOR

Se ha registrado una cuenta en Biopatternsg con esta dirección de correo electrónico. Para activar tu cuenta de investigador y confirmar tu identidad, haz clic en el siguiente enlace:

ESTADO DE LA CUENTA:
Verificación de correo pendiente

Para validar tu cuenta, accede al siguiente enlace:
${updatePasswordLink}

Este enlace caducará en ${linkExpirationFormatter(linkExpiration)}. Si no solicitaste esta cuenta, ignora este mensaje.

Volver al portal de acceso: https://bioai.redclara.net

© 2026 Biopatternsg Research Project
