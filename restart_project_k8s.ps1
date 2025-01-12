
kubectl delete -f .\k8s-config --all
kubectl delete -f .\k8s-config\frontend --all
kubectl delete -f .\k8s-config\api-gateway --all
kubectl delete -f .\k8s-config\user-service --all
kubectl delete -f .\k8s-config\notification-service --all
kubectl delete -f .\k8s-config\venue-service --all
kubectl delete -f .\k8s-config\event-service --all
kubectl delete -f .\k8s-config\payment-service --all
kubectl delete -f .\k8s-config\rabbitmq --all
kubectl delete -f .\k8s-config\postgres --all
kubectl delete pvc postgres-pvc
kubectl delete pv postgres-pv


kubectl apply -f .\k8s-config\postgres\postgres-pvc.yaml
kubectl apply -f .\k8s-config\postgres\postgres-pv.yaml
kubectl apply -f .\k8s-config
kubectl apply -f .\k8s-config\postgres
kubectl apply -f .\k8s-config\rabbitmq
kubectl apply -f .\k8s-config\notification-service
kubectl apply -f .\k8s-config\venue-service
kubectl apply -f .\k8s-config\event-service
kubectl apply -f .\k8s-config\payment-service
kubectl apply -f .\k8s-config\user-service
kubectl apply -f .\k8s-config\api-gateway
kubectl apply -f .\k8s-config\frontend


