# Upper Circle Academy — attacker toolbox for the field-training labs.
# Authorised, educational use only. A curated set of standard, open-source
# security tools, the same kind of toolkit shipped by Kali/Parrot.
FROM kalilinux/kali-rolling

LABEL org.opencontainers.image.title="UCA Field Lab Toolkit"
LABEL org.opencontainers.image.description="Attacker toolbox for the Upper Circle Academy field-training labs. Authorised, educational use only."
LABEL org.opencontainers.image.source="https://github.com/KazamaDono/Upper_Circle_Academy"

ENV DEBIAN_FRONTEND=noninteractive
ENV PATH="/root/.local/bin:${PATH}"

# System tooling from the Kali repositories.
RUN apt-get update && apt-get install -y --no-install-recommends \
      ca-certificates git curl wget \
      python3 python3-pip python3-dev pipx \
      build-essential libffi-dev libssl-dev \
      nmap netcat-traditional \
      smbclient ldap-utils dnsutils iputils-ping \
      john hydra responder seclists \
  && rm -rf /var/lib/apt/lists/*

# Python-based offensive tooling, each in its own isolated pipx environment.
RUN pipx install impacket \
  && pipx install netexec \
  && pipx install certipy-ad \
  && pipx install bloodhound \
  && pipx install coercer \
  && pipx install ldapdomaindump

WORKDIR /work
CMD ["/bin/bash"]
