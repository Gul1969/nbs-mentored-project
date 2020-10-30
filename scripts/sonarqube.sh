#! /bin/bash
sonar-scanner \
  -Dsonar.projectKey=challenge \
  -Dsonar.souces=. \
  -Dsonar.host.url=http://localhost:9000 \
  -Dsonar.login=1cfbba2a7ca01b90448f3b575c31f24d4c21eb5a \
