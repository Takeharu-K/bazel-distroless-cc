FROM takeharuk/bgc:v1.1 as builder
COPY . /app
WORKDIR /app
RUN bazel build ... 

FROM gcr.io/distroless/cc:latest as runner
# FROM gcr.io/distroless/cc:debug as runner
COPY --from=builder /app/bazel-out/k8-fastbuild/bin /app/bin
CMD [ "./app/bin/hello" ]