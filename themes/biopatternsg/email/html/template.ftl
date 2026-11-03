<#macro emailLayout>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="${(locale.language)!'es'}" dir="${(ltr?? && !ltr)?then('rtl','ltr')}" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="x-apple-disable-message-reformatting">
  <title>Biopatternsg</title>
  <!-- Google Fonts: Inter & Space Grotesk -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;700;900&family=Space+Grotesk:wght@500;700&display=swap" rel="stylesheet">
  <!--[if mso]>
  <xml>
    <o:OfficeDocumentSettings>
      <o:AllowPNG/>
      <o:PixelsPerInch>96</o:PixelsPerInch>
    </o:OfficeDocumentSettings>
  </xml>
  <![endif]-->
  <style type="text/css">
    /* Reset & Base */
    body, table, td, a { -webkit-text-size-adjust: 100%; -ms-text-size-adjust: 100%; }
    table, td { mso-table-lspace: 0pt; mso-table-rspace: 0pt; }
    img { -ms-interpolation-mode: bicubic; border: 0; outline: none; text-decoration: none; }
    body { margin: 0 !important; padding: 0 !important; width: 100% !important; background-color: #eff4ff; font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif; }

    /* Main Content Typography */
    .email-body-content {
      font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif;
      font-size: 15px;
      line-height: 1.6;
      color: #4a4455;
    }
    .email-body-content p {
      margin: 0 0 18px 0;
      font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif;
      font-size: 15px;
      line-height: 1.6;
      color: #4a4455;
    }
    .email-body-content p:last-child {
      margin-bottom: 0;
    }

    /* CTA Button & Links */
    .email-body-content a,
    .email-body-content a:link,
    .email-body-content a:visited,
    .email-body-content .cta-button {
      display: inline-block;
      background-color: #0066FF;
      background-image: linear-gradient(135deg, #0066FF 0%, #0052cc 100%);
      color: #ffffff !important;
      border-radius: 12px;
      padding: 14px 28px;
      font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif;
      font-size: 14px;
      font-weight: 700;
      text-decoration: none !important;
      text-align: center;
      letter-spacing: 0.02em;
      box-shadow: 0 4px 14px rgba(0, 102, 255, 0.25);
      margin: 10px 0;
    }
    .email-body-content a:hover,
    .email-body-content .cta-button:hover {
      background-color: #0052cc;
      background-image: linear-gradient(135deg, #0052cc 0%, #003fa3 100%);
      color: #ffffff !important;
    }

    /* Mobile Responsive */
    @media only screen and (max-width: 600px) {
      .card-cell {
        padding: 28px 20px !important;
      }
      .email-container {
        width: 100% !important;
        max-width: 100% !important;
      }
      .email-body-content a,
      .email-body-content .cta-button {
        display: block !important;
        width: 100% !important;
        box-sizing: border-box !important;
      }
    }
  </style>
</head>
<body style="margin: 0 !important; padding: 0 !important; width: 100% !important; background-color: #eff4ff; -webkit-font-smoothing: antialiased;">
<table role="presentation" width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#eff4ff" style="background-color: #eff4ff; width: 100%; margin: 0; padding: 48px 16px;">
  <tr>
    <td align="center">
      <!-- Contenedor centrado max-width: 540px -->
      <table role="presentation" class="email-container" border="0" cellpadding="0" cellspacing="0" width="100%" style="max-width: 540px; width: 100%; margin: 0 auto;">
        
        <!-- Píldora de marca superior -->
        <tr>
          <td align="center" style="padding-bottom: 24px;">
            <table role="presentation" border="0" cellpadding="0" cellspacing="0" style="margin: 0 auto;">
              <tr>
                <td style="background-color: #d9e8ff; border-radius: 9999px; padding: 6px 16px; font-family: 'Space Grotesk', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif; font-size: 11px; font-weight: 700; text-transform: uppercase; letter-spacing: 0.25em; color: #001f4d; line-height: 16px;">
                  <span style="display: inline-block; width: 6px; height: 6px; background-color: #0050cb; border-radius: 50%; vertical-align: middle; margin-right: 8px;"></span>BIOPATTERNSG
                </td>
              </tr>
            </table>
          </td>
        </tr>

        <!-- Tarjeta Principal Glass / Card -->
        <tr>
          <td>
            <table role="presentation" width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#fcfdff" style="background-color: #fcfdff; border-radius: 16px; border: 1px solid #eff1f7; box-shadow: 0 16px 64px -12px rgba(13, 28, 46, 0.14); border-collapse: separate; overflow: hidden;">
              <!-- Barra de acento superior con degradado azul -->
              <tr>
                <td height="4" style="height: 4px; line-height: 4px; font-size: 4px; background-color: #0050cb; background-image: linear-gradient(90deg, #0050cb 0%, #0066FF 50%, #00a2ff 100%); border-top-left-radius: 16px; border-top-right-radius: 16px;">
                  &nbsp;
                </td>
              </tr>
              <!-- Área de contenido principal -->
              <tr>
                <td class="card-cell" style="padding: 36px 32px 32px 32px;">
                  <div class="email-body-content" style="font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif; font-size: 15px; color: #4a4455; line-height: 1.6;">
                    <#nested>
                  </div>
                </td>
              </tr>
            </table>
          </td>
        </tr>

        <!-- Divisor inferior y pie de copyright -->
        <tr>
          <td align="center" style="padding-top: 24px;">
            <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="100%">
              <tr>
                <td style="border-top: 1px solid #e2e8f0; font-size: 0; line-height: 0; height: 1px;">&nbsp;</td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td align="center" style="padding-top: 16px; padding-bottom: 24px;">
            <p style="margin: 0; color: #7b7487; font-family: 'Space Grotesk', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif; font-size: 11px; text-transform: uppercase; letter-spacing: 0.15em; font-weight: 500; line-height: 1.4;">
              &copy; 2026 Biopatternsg Research Project
            </p>
          </td>
        </tr>

      </table>
    </td>
  </tr>
</table>
</body>
</html>
</#macro>
