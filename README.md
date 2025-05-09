# LAN of DOOM Palworld Server

Containerized private Palworld server.

Try it with:

```
$ ./run-local.sh
```

## Configuration

The server configuration is stored alongside saved games in the `/opt/palworld/Pal/Saved/` folder.

Read more about server configuration at [https://docs.palworldgame.com/settings-and-operation/configuration](https://docs.palworldgame.com/settings-and-operation/configuration/).

## Installation

```yaml
apiVersion: v1
kind: Service
metadata:
    name: palworld
spec:
    selector:
        app: palworld
    ports:
        - port: 8211
            protocol: UDP
            targetPort: palworld
    type: LoadBalancer
---
apiVersion: apps/v1
kind: StatefulSet
metadata:
    name: palworld
spec:
    serviceName: palworld
    replicas: 1
    selector:
        matchLabels:
            app: palworld
    template:
        metadata:
            labels:
                app: palworld
        spec:
            containers:
                - name: palworld
                    image: ghcr.io/lanofdoom/palworld-server:latest
                    ports:
                        - name: palworld
                            containerPort: 8211
                            protocol: UDP
```
