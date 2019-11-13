# CTOP

[![CircleCI](https://circleci.com/gh/Jarzamendia/ctop/tree/master.svg?style=svg)](https://circleci.com/gh/Jarzamendia/ctop/tree/master)

Imagem com o [CTop](https://github.com/bcicen/ctop) do Bcicen em um Container!

De vez em quando eu queria dar uma olhada no uso de recursos e log de um container sem ter que mandar um Docker ps... Docker logs... Isso é muito chato e cansativo. Subir o Portainer só para isso me parecia matar uma mosca com um canhão. 

Para resolver isto, criei este Container, com o CTop do Bcicen, que é o que eu mais gosto, em um Alpine.

## Modo de Uso

docker run -ti --rm -v /var/run/docker.sock:/var/run/docker.sock jarzamendia/ctop:latest