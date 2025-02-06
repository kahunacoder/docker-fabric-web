Simple docker-compose setup that runs the fabric web ui on port 5173.

On the first run, start the container with `command: fabric -U`. This will download/update the patterns for you! 

Enjoy!

```yaml
services:
  fabric:
    image: coolmast/fabric
    restart: unless-stopped
    ports:
      - 5173:5173
    volumes:
      - ./config:/root/.config/fabric
```

Also create an .env file in ./config/.env as

```
DEFAULT_VENDOR=OpenAI
DEFAULT_MODEL=chatgpt-4o-latest
PATTERNS_LOADER_GIT_REPO_URL=https://github.com/danielmiessler/fabric.git
PATTERNS_LOADER_GIT_REPO_PATTERNS_FOLDER=patterns
OPENAI_API_KEY=YOUR_OPENAI_API_KEY
OPENAI_API_BASE_URL=https://api.openai.com/v1
```
