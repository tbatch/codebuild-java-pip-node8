# Codebuild Docker Image

This node runtime image is for nodejs lambda functions using dynamodb-local in unit-tests.  It includes java and python-pip.  

In your buildspec you can pip install the aws-sdk.

```
phases:
  install:
    commands:
      - pip install --upgrade awscli
```
