docker build -t scoquix/multi-client:latest -t scoquix/multi-client:$SHA -f ./client/Dockerfile ./client
docker build -t scoquix/multi-server:latest -t scoquix/multi-server:$SHA -f ./server/Dockerfile ./server
docker build -t scoquix/multi-worker:latest -t scoquix/multi-worker:$SHA -f ./worker/Dockerfile ./worker

docker push scoquix/multi-client:latest
docker push scoquix/multi-server:latest
docker push scoquix/multi-worker:latest

docker push scoquix/multi-client:$SHA
docker push scoquix/multi-server:$SHA
docker push scoquix/multi-worker:$SHA

kubectl apply -f k8s
kubectl set image deployments/server-deployment server=scoquix/multi-server:$SHA
kubectl set image deployments/client-deployment client=scoquix/multi-client:$SHA
kubectl set image deployments/worker-deployment worker=scoquix/multi-worker:$SHA