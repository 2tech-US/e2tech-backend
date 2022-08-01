## E2tech Backend

> **NOTE**: This guid support `Linux` and `macOS`

## Requirements

- Install [Docker](https://docs.docker.com/engine/install/)
  - Remember to [add Docker as a non-root user](https://docs.docker.com/engine/install/linux-postinstall/#manage-docker-as-a-non-root-user) when using Linux
- Install make: `sudo apt install build-essential`
- Install [Golang Migrate](https://github.com/golang-migrate/migrate/tree/master/cmd/migrate)

## Run on locally

Clone the project

```bash
git clone --recursive https://github.com/2tech-US/e2tech-backend.git
cd e2tech-backend
```

Build all service

```bash
source up.sh
```

Start server

```bash
source start.sh
```

Stop all service:

```bash
source stop.sh
```

When you want to restart all services, use this command line and build again

```bash
source down.sh
```
