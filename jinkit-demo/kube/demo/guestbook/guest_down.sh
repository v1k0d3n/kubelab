kubectl stop rc -l "name in (redis-master, redis-slave, frontend)"
kubectl delete service -l "name in (redis-master, redis-slave, frontend)"
