FROM quay.io/keycloak/keycloak:26.5.6

# Copiar los providers comunitarios (webhooks) al directorio oficial de providers
COPY providers/ /opt/keycloak/providers/
