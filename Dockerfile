FROM denoland/deno:2.1.4

WORKDIR /app

COPY deno-proxy/deno.json deno-proxy/deno.lock ./
RUN deno install --entrypoint main.ts

COPY deno-proxy/ ./

EXPOSE 3456

CMD ["deno", "run", "--allow-net", "--allow-env", "src/main.ts"]
