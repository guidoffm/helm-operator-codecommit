FROM fluxcd/helm-operator:1.2.0
LABEL description="Based on fluxcd/helm-operator and extended by the Git plugin for CodeCommit"
RUN helm3 plugin install https://github.com/hypnoglow/helm-s3.git --version 0.9.2
