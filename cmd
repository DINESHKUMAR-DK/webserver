kubectl create secret docker-registry harbor-secrete --docker-server=10.0.8.158 --docker-username='admin' --docker-password='Harbor12345'



apiVersion: v1
kind: Pod
metadata:
  name: webserver
spec:
  containers:
    - name: ngnix
      image: 10.0.8.158/k8/web-server
      imagePullPolicy: Always
      ports:
      - name: nginx
        containerPort: 8080
        protocol: TCP
  imagePullSecrets:
    - name: harbor-secrete
