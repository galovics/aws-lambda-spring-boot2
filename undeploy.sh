echo "Deleting stacks"
aws cloudformation delete-stack --stack-name aws-lambda-plain-java-stack
aws cloudformation delete-stack --stack-name aws-lambda-spring-boot2-stack
echo "Deletion initiated, waiting until stack deletion is complete"
aws cloudformation wait stack-delete-complete --stack-name aws-lambda-plain-java-stack
aws cloudformation wait stack-delete-complete --stack-name aws-lambda-spring-boot2-stack
echo "Deletion completed"