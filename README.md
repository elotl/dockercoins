# dockercoins

This is the demo application originally used in Jérôme Petazzoni's [orchestration workshop](https://github.com/jpetazzo/container.training).

[Kubernetes Hands-on Workshop](https://training.play-with-kubernetes.com/kubernetes-workshop/)
```
rng = web service generating random bytes
hasher = web service computing hash of POSTed data
worker = background process using rng and hasher
webui = web interface to watch progress
```

## To Run with Kubernetes

```bash
cd kube
for manifest in *.yml; do kubectl apply -f $manifest; done
```

Then connect into the webui cluster IP. You can tunnel into the node or change the service to be a LoadBalancer.