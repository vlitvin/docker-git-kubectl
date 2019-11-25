FROM docker:git

# Install requirements
RUN apk add -U openssl curl tar gzip bash ca-certificates gettext

# Install kubectl
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.15.1/bin/linux/amd64/kubectl && \
  chmod +x ./kubectl && mv kubectl /bin/kubectl && \
  kubectl version --client
