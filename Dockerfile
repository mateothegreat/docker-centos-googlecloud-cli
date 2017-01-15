#
# Google Cloud Command Line ("gcloud")
#
FROM centos:7

MAINTAINER Matthew Davis <matthew@appsoa.io>

RUN yum -y install wget which

# Download and install the cloud sdk
RUN wget https://dl.google.com/dl/cloudsdk/release/google-cloud-sdk.tar.gz && \
    tar zxvf google-cloud-sdk.tar.gz && \
    rm google-cloud-sdk.tar.gz && \
    ./google-cloud-sdk/install.sh --usage-reporting=true --path-update=true

# Add gcloud to the path
ENV PATH /google-cloud-sdk/bin:$PATH

# Configure gcloud for your project
RUN echo yes | gcloud components update && \
    echo Yes | gcloud components install kubectl beta docker-credential-gcr