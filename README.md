# helm-operator-codecommit

## Build

```bash
TAG=1.2.0
account_id=$(aws sts get-caller-identity --query Account --output text)
$(aws ecr get-login --no-include-email)
docker build -t helm-operator-codecommit:$TAG .

docker tag helm-operator-codecommit:$TAG ${account_id}.dkr.ecr.eu-central-1.amazonaws.com/helm-operator-codecommit:$TAG
docker push ${account_id}.dkr.ecr.eu-central-1.amazonaws.com/helm-operator-codecommit:$TAG
```
