DOCKER_USERNAME=lijunbo@zoho.com
DOCKER_PASSWORD=ZwoUrmLTH5y0a4K8

echo $DOCKER_PASSWORD | docker login registry.cn-qingdao.aliyuncs.com -u $DOCKER_USERNAME --password-stdin

VERSION="1.0"
BETA=$(date +%s)
echo "current version: [$VERSION] [$BETA]"

docker build . -t registry.cn-qingdao.aliyuncs.com/aipyfans/stealer:v$VERSION-$BETA
docker push registry.cn-qingdao.aliyuncs.com/aipyfans/stealer:v$VERSION-$BETA
docker rmi registry.cn-qingdao.aliyuncs.com/aipyfans/stealer:v$VERSION-$BETA