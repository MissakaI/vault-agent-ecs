FROM hashicorp/vault:1.19

RUN mkdir -p /vault-agent
COPY agent.hcl /vault-agent/agent.hcl
COPY shell-all-secrets.env.ctmpl /vault-agent/shell-all-secrets.env.ctmpl
COPY entrypoint.sh ./entrypoint.sh
RUN chmod +x entrypoint.sh

ENTRYPOINT [ "sh", "./entrypoint.sh" ]