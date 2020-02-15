kubeadm config images pull --image-repository=registry.aliyuncs.com/google_containers
kubeadm init --pod-network-cidr=10.244.0.0/16 --apiserver-advertise-address=172.17.0.1 --image-repository=registry.aliyuncs.com/google_containers
cp /etc/kubernetes/admin.conf ~/.kube/config
kubectl taint nodes --all node-role.kubernetes.io/master-
kubectl apply -f kube-flannel.yml
