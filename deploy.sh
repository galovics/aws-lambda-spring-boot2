# Plain Java stack
aws s3 cp plainjava/build/libs/plainjava-0.0.1-SNAPSHOT-all.jar s3://aws-lambda-spring-boot2/plainjava-0.0.1-SNAPSHOT-all.jar
aws cloudformation deploy --template-file stack.yml --stack-name aws-lambda-plain-java-stack --capabilities CAPABILITY_NAMED_IAM \
  --parameter-overrides \
  apiGatewayName=aws-lambda-plainjava-api \
  functionName=aws-lambda-plain-java-function \
  functionHandler=com.arnoldgalovics.blog.LambdaHandler \
  s3BucketKey=plainjava-0.0.1-SNAPSHOT-all.jar
aws cloudformation describe-stacks --stack-name aws-lambda-plain-java-stack --query "Stacks[0].Outputs" --output json

# Spring Boot 2 stack
aws s3 cp springboot2/build/libs/springboot2-0.0.1-SNAPSHOT-all.jar s3://aws-lambda-spring-boot2/springboot2-0.0.1-SNAPSHOT-all.jar
aws cloudformation deploy --template-file stack.yml --stack-name aws-lambda-spring-boot2-stack --capabilities CAPABILITY_NAMED_IAM \
  --parameter-overrides \
  apiGatewayName=aws-lambda-springboot2-api \
  functionName=aws-lambda-spring-boot2-function \
  functionHandler=com.arnoldgalovics.blog.LambdaHandler \
  s3BucketKey=springboot2-0.0.1-SNAPSHOT-all.jar
aws cloudformation describe-stacks --stack-name aws-lambda-spring-boot2-stack --query "Stacks[0].Outputs" --output json