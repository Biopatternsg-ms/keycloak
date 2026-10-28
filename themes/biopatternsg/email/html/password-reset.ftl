<#import "template.ftl" as layout>
<#assign updatePasswordLink = link?replace("realms/biopatternsg/login-actions/action-token", "update-password")>
<@layout.emailLayout>
<div style="background-color: #f4f4f9; padding: 40px 20px; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;">
    <div style="max-width: 500px; margin: 0 auto; background-color: #ffffff; border-radius: 12px; overflow: hidden; box-shadow: 0 4px 15px rgba(0,0,0,0.1); border: 2px dashed #ccc;">
        
        <!-- Banner Image (Tech & Science) -->
        <div style="width: 100%; height: 160px; background-image: url('https://images.unsplash.com/photo-1507413245164-6160d8298b31?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80'); background-size: cover; background-position: center; border-bottom: 2px dashed #eee;">
        </div>

        <!-- Content -->
        <div style="padding: 40px 50px;">
            <h2 style="color: #0a9396; text-align: center; margin-top: 0; font-size: 22px; text-transform: uppercase; letter-spacing: 1px;">Recuperación de Contraseña</h2>
            
            <hr style="border: none; border-top: 1px dashed #eee; margin: 20px 0;">

            <p style="text-align: justify; color: #444; line-height: 1.8; font-size: 15px; margin-bottom: 30px;">
                Alguien solicitó restablecer las credenciales de tu cuenta en <strong>Biopatternsg</strong>. Si fuiste tú, por favor actualiza tu contraseña haciendo clic en el botón a continuación.
            </p>

            <div style="text-align: center; margin: 30px 0;">
                <a href="${updatePasswordLink}" style="display: inline-block; padding: 14px 30px; background-color: #005f73; color: #ffffff; text-decoration: none; border-radius: 6px; font-weight: bold; font-size: 16px; letter-spacing: 0.5px;">Restablecer Contraseña</a>
            </div>

            <p style="text-align: justify; color: #777; line-height: 1.5; font-size: 12px; margin-top: 30px;">
                Este enlace de recuperación caducará en ${linkExpirationFormatter(linkExpiration)}. Si no solicitaste este cambio, puedes ignorar este mensaje de forma segura y tu contraseña permanecerá intacta.
            </p>

        </div>
        
        <!-- Ticket Footer -->
        <div style="background-color: #fbfbfb; border-top: 2px dashed #ddd; padding: 20px; text-align: center;">
            <p style="margin: 0; color: #999; font-size: 11px; text-transform: uppercase; letter-spacing: 1px;">BioIA - Integrando Biología y Tecnología</p>
        </div>
    </div>
</div>
</@layout.emailLayout>
