kubectl create secret docker-registry harbor-secrete --docker-server=10.0.8.158 --docker-username='admin' --docker-password='Harbor12345'



apiVersion: v1
kind: Pod
metadata:
  name: ngnix-image
spec:
  containers:
    - name: ngnix
      image: phx.ocir.io/ansh81vru1zp/project01/ngnix-lb:latest
      imagePullPolicy: Always
      ports:
      - name: nginx
        containerPort: 8080
        protocol: TCP
  imagePullSecrets:
    - name: ocirsecret