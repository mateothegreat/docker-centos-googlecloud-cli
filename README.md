# Google Cloud Command Line ("gcloud")

```

docker run -it  --rm \
                --name googlecloud-cli \
                appsoa/docker-centos-googlecloud-cli:latest \
                /bin/bash
```

https://cloud.google.com/storage/docs/authentication#service_accounts

```
gcloud auth activate-service-account \
  --key-file /path/to/projectkey.json \
  --project my-google-project \
  -q
```

