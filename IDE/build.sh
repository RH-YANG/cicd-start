# 설치된 buildx 버전 확인
docker buildx version

# Build 인스턴스 생성 및 사용 설정
docker buildx create --name mybuilder --use

# 맥과 윈도우 모두 가능하게 플랫폼 지정해서 이미지 생성하기
# 멀티 플랫폼으로 하려면 buildx를 사용해야함
# 하단 두개 중 한개 사용
#### 생성된 빌드 인스턴스로 이미지 생성하기
docker buildx build  --builder multi-builder --platform linux/amd64,linux/arm64  -t rrhh1122/cloud-cicd --push .
#### 기본 인스턴스로 이미지 생성하기
docker buildx build  --platform linux/amd64,linux/arm64  -t rrhh1122/cloud-cicd --push . 