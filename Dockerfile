FROM scratch

ADD target/x86_64-unknown-linux-musl/release/hello-rust /
EXPOSE 8080

CMD ["/hello-rust"]
