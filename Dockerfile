FROM denoland/deno:latest

WORKDIR /app

COPY deno-proxy/ ./

RUN deno install

EXPOSE 3456

CMD ["deno", "run", "--allow-net", "--allow-env", "--allow-read", "--allow-write", "src/main.ts"]
