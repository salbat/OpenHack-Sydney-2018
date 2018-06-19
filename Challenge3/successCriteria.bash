```Implement a monitoring/telemetry solution for your cluster and demonstrate it to a coach. This should include:
Memory usage per instance and or node.
CPU usage by instance or node.
Version of the container running on any given instance.
Number of container instances running.
Population of each Minecraft server.
Total current players and available capacity.
Upgrade your instance within the cluster above, to v2.0

Configure your container deployments so that the state is persisted between instance resets. In order for us to verify this, you must ensure that both the default port for Minecraft (25565) and the default port for RCON (25575) must be exposed and available publicly.
```
az aks list -o table
az aks browse --resource-group Challenge2G7MinecraftAU --name AKSClusterG7AU

