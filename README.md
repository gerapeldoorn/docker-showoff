# docker-showoff
Dockerfile to run showoff presentations in showoff

Example docker-compose file:

```
version: "3.1"

services:
  showoff:
    restart: unless-stopped
    image: gerapeldoorn/showoff:0.19.2
    ports:
      - "9090:9090"
    volumes:
      - ./showoff:/data
 ```
