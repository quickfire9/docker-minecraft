FROM azul/zulu-openjdk:18.0.2.1-18.32.13

WORKDIR /server
ADD fabric-server-mc.1.19-loader.0.14.9-launcher.0.11.1.jar .
COPY server_data/* .

ENTRYPOINT [ "java", "-Xmx2G", "-jar", "fabric-server-mc.1.19-loader.0.14.9-launcher.0.11.1.jar", "nogui", "eula=true" ]
#ENTRYPOINT ["/bin/bash"]