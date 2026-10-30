<#ftl output_format="plainText">
<#assign updatePasswordLink = link?replace("realms/biopatternsg/login-actions/action-token", "update-password")>
RECUPERACIÓN DE CONTRASEÑA · INVESTIGADOR
==========================================

Recuperar Acceso
RECUPERACIÓN DE CONTRASEÑA DE LA CUENTA

Hemos recibido una solicitud para restablecer la contraseña asociada a tu cuenta en Biopatternsg. Para configurar una nueva credencial y asegurar tu acceso, haz clic en el siguiente enlace:

ESTADO DE LA SOLICITUD:
Restablecimiento de credenciales solicitado

Para restablecer tu contraseña, accede al siguiente enlace:
${updatePasswordLink}

Este enlace caducará en ${linkExpirationFormatter(linkExpiration)}. Si no solicitaste este cambio, ignora este mensaje.

Volver al portal de acceso: https://bioai.redclara.net

© 2026 Biopatternsg Research Project
