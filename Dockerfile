FROM takeharuk/bgc:v1.1 as builder
COPY . /app
WORKDIR /app
RUN bazel build ... && \
    cp ./bazel-bin/hello /hello 

FROM gcr.io/distroless/cc as runner
COPY --from=builder /hello /hello
CMD [ "./hello" ]