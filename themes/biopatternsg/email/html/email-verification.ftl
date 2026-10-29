<#import "template.ftl" as layout>
<#assign updatePasswordLink = link?replace("realms/biopatternsg/login-actions/action-token", "update-password")>
<@layout.emailLayout>
<table role="presentation" width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#eff4ff" style="background-color: #eff4ff; width: 100%; margin: 0; padding: 48px 16px;">
  <tr>
    <td align="center">
      <!-- Contenedor centrado max-width: 512px -->
      <table role="presentation" class="email-container" border="0" cellpadding="0" cellspacing="0" width="100%" style="max-width: 512px; width: 100%; margin: 0 auto;">
        
        <!-- Badge / Píldora Centrada sobre la Tarjeta -->
        <tr>
          <td align="center" style="padding-bottom: 24px;">
            <table role="presentation" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td style="background-color: #d9e8ff; border-radius: 9999px; padding: 4px 12px; font-family: 'Space Grotesk', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif; font-size: 10px; font-weight: 700; text-transform: uppercase; letter-spacing: 0.3em; color: #001f4d; line-height: 16px;">
                  <span style="display: inline-block; width: 6px; height: 6px; background-color: #0050cb; border-radius: 50%; vertical-align: middle; margin-right: 8px;"></span>VERIFICACIÓN DE INVESTIGADOR
                </td>
              </tr>
            </table>
          </td>
        </tr>

        <!-- Tarjeta Principal Glass-Panel -->
        <tr>
          <td>
            <table role="presentation" width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#fcfdff" style="background-color: #fcfdff; border-radius: 16px; border: 1px solid #eff1f7; box-shadow: 0 16px 64px -12px rgba(13, 28, 46, 0.14); border-collapse: separate;">
              <tr>
                <td class="card-cell" style="padding: 32px;">
                  
                  <!-- Título y Subtítulo -->
                  <h1 style="margin: 0 0 8px 0; color: #1a1b22; font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif; font-size: 24px; font-weight: 900; letter-spacing: -0.01em; line-height: 1.25;">
                    Confirma tu Correo
                  </h1>
                  <p style="margin: 0 0 32px 0; color: #4a4455; font-family: 'Space Grotesk', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; font-weight: 500; text-transform: uppercase; letter-spacing: 0.05em; line-height: 1.4;">
                    ACTIVACIÓN DE CUENTA DE INVESTIGADOR
                  </p>

                  <!-- Párrafo Explicativo -->
                  <p style="margin: 0 0 24px 0; color: #4a4455; font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 1.65;">
                    Se ha registrado una cuenta en <strong>Biopatternsg</strong> con esta dirección de correo electrónico. Para activar tu cuenta de investigador y confirmar tu identidad, haz clic en el siguiente botón:
                  </p>

                  <!-- Bloque Informativo Estilo 'Label + Input' -->
                  <table role="presentation" width="100%" border="0" cellpadding="0" cellspacing="0" style="margin-bottom: 24px;">
                    <tr>
                      <td style="padding-bottom: 8px; font-family: 'Space Grotesk', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif; font-size: 10px; font-weight: 700; text-transform: uppercase; letter-spacing: 0.3em; color: #4a4455;">
                        ESTADO DE LA CUENTA
                      </td>
                    </tr>
                    <tr>
                      <td style="background-color: #e8e7f1; border-radius: 8px; padding: 12px 16px; font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; font-weight: 500; color: #1a1b22;">
                        Verificación de correo pendiente
                      </td>
                    </tr>
                  </table>

                  <!-- Botón CTA -->
                  <table role="presentation" width="100%" border="0" cellpadding="0" cellspacing="0" style="margin-top: 24px;">
                    <tr>
                      <td align="center">
                        <!--[if mso]>
                        <v:roundrect xmlns:v="urn:schemas-microsoft-com:vml" xmlns:w="urn:schemas-microsoft-com:office:word" href="${updatePasswordLink}" style="height:50px;v-text-anchor:middle;width:448px;" arcsize="24%" fillcolor="#0050cb" stroke="f">
                          <w:anchorlock/>
                          <center style="color:#ffffff;font-family:'Segoe UI',sans-serif;font-size:14px;font-weight:bold;">Validar Cuenta</center>
                        </v:roundrect>
                        <![endif]-->
                        <!--[if !mso]><!-->
                        <a href="${updatePasswordLink}" style="display: block; width: 100%; box-sizing: border-box; background-color: #0050cb; background-image: linear-gradient(135deg, #0066FF 0%, #0052cc 100%); color: #ffffff; text-decoration: none; border-radius: 12px; padding: 16px 32px; font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; font-weight: 700; text-align: center; letter-spacing: 0.02em;">
                          Validar Cuenta
                        </a>
                        <!--<![endif]-->
                      </td>
                    </tr>
                  </table>

                  <!-- Pie de Tarjeta con Divisor -->
                  <table role="presentation" width="100%" border="0" cellpadding="0" cellspacing="0" style="margin-top: 32px; border-top: 1px solid #eeedf7;">
                    <tr>
                      <td align="center" style="padding-top: 32px;">
                        <p style="margin: 0 0 16px 0; color: #4a4455; font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; line-height: 1.6; text-align: center;">
                          Este enlace caducará en ${linkExpirationFormatter(linkExpiration)}. Si no solicitaste esta cuenta, ignora este mensaje.
                        </p>
                        <a href="https://bioai.redclara.net" style="color: #0050cb; font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; font-weight: 700; text-decoration: none; display: inline-block;">
                          Volver al portal de acceso
                        </a>
                      </td>
                    </tr>
                  </table>

                </td>
              </tr>
            </table>
          </td>
        </tr>

        <!-- Debajo de la Tarjeta: Copyright -->
        <tr>
          <td align="center" style="padding-top: 32px;">
            <p style="margin: 0; color: #7b7487; font-family: 'Space Grotesk', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif; font-size: 11px; text-transform: uppercase; letter-spacing: 0.15em; font-weight: 500;">
              &copy; 2026 Biopatternsg Research Project
            </p>
          </td>
        </tr>

      </table>
    </td>
  </tr>
</table>
</@layout.emailLayout>
