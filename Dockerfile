FROM quay.io/keycloak/keycloak:26.5.6 AS builder

# Copiar los providers al directorio de providers
COPY providers/ /opt/keycloak/providers/

# Pre-construir y registrar los providers dentro del servidor Keycloak
RUN /opt/keycloak/bin/kc.sh build

FROM quay.io/keycloak/keycloak:26.5.6
COPY --from=builder /opt/keycloak/ /opt/keycloak/

USER root
# Eliminar certificados de eMudhra / emSign de cacerts (CVE-2026-91403)
RUN keytool -delete -alias "cn_emsign_ecc_root_ca__c3,o_emudhra_inc,ou_emsign_pki,c_us [jdk]" -cacerts -storepass changeit || true && \
    keytool -delete -alias "cn_emsign_ecc_root_ca__g3,o_emudhra_technologies_limited,ou_emsign_pki,c_in [jdk]" -cacerts -storepass changeit || true && \
    keytool -delete -alias "cn_emsign_root_ca__c1,o_emudhra_inc,ou_emsign_pki,c_us [jdk]" -cacerts -storepass changeit || true && \
    keytool -delete -alias "cn_emsign_root_ca__g1,o_emudhra_technologies_limited,ou_emsign_pki,c_in [jdk]" -cacerts -storepass changeit || true && \
    keytool -delete -alias "emsigneccrootcag3" -cacerts -storepass changeit || true && \
    keytool -delete -alias "emsignrootcag1" -cacerts -storepass changeit || true
USER 1000
