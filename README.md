# Running Spring Boot 2 on AWS Lambda
This project has been created for the 
[Performance of running Spring Boot as AWS Lambda functions](https://arnoldgalovics.com)
post.

It showcases how one could use Spring Boot 2 as a lambda function with all its features.
And also, there's a plain Java version for the same functionality to have
a reference implementation, so it can be used to determine the performance loss caused
by the variety of Spring dependencies and libraries.

# Building & Deploying
Building the application JARs, execute the following from the root directory.
```bash
$ ./gradlew clean shadowJar
```

Then using AWS CLI (after configuring the access keys), deploy the CloudFormation stack.
```bash
$ ./deploy.sh
```

To undeploy the stacks, use the undeploy script.
```bash
$ ./undeploy.sh
```

# License
```text
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
