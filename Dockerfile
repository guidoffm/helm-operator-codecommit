FROM docker-hub-remote.bahnhub.tech.rz.db.de/fluxcd/helm-operator:1.2.0
RUN helm3 plugin install https://github.com/hypnoglow/helm-s3.git --version 0.9.2
