# 볼륨 생성 (volume name : cloud-cicd-src)
# 컨테이너 생성시 사용할 마운트를 미리 추가해놓는다(별칭으로 사용)
# 해당 명령어를 하나씩 실행한다.

docker volume create \
--opt device="D:/cicd/cicd-start/IDE" \
--opt o=bind --opt type=none cloud-cicd-src

docker volume create  \
--opt device="D:/cicd/cicd-start/IDE/vscode" \
--opt o=bind --opt type=none vscode

docker volume create  \
--opt device="D:/cicd/cicd-start/IDE/jenkins" \
--opt o=bind --opt type=none jenkins-home

# 볼륨 생성 확인
docker volume ls