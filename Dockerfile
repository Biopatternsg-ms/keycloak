FROM quay.io/keycloak/keycloak:26.5.6 AS builder

# Copiar los providers al directorio de providers
COPY providers/ /opt/keycloak/providers/

# Pre-construir y registrar los providers dentro del servidor Keycloak
RUN /opt/keycloak/bin/kc.sh build

FROM quay.io/keycloak/keycloak:26.5.6
COPY --from=builder /opt/keycloak/ /opt/keycloak/
