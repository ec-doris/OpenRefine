# OpenRefine

This is a fork of https://github.com/OpenRefine/OpenRefine. 

### Generate image and push to ECR

Build image (on Apple Silicon)(dev)
```
docker buildx build --platform linux/amd64 . -t 294118183257.dkr.ecr.eu-west-1.amazonaws.com/linkedopendata-openrefine -f wikibase-bundle.Dockerfile
550062732140.dkr.ecr.eu-central-1.amazonaws.com/linkedopendata-wikibase-bundle:latest
```

Login on ECR repository(dev)
```
aws ecr get-login-password --region eu-west-1 | docker login --username AWS --password-stdin 294118183257.dkr.ecr.eu-west-1.amazonaws.com
```

Push to repository(dev)
```
docker push 294118183257.dkr.ecr.eu-west-1.amazonaws.com/linkedopendata-openrefine
```

If you change the image tag you need to update the manifest on the gitops repository, 
otherwise you can only delete the pod on the cluster and it will regenerate with the new version.
