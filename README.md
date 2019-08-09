# RUST-Static_link


To statically link and run Rust app on Kubernetes

1. Download and install rust-musl-builder

2. Run these commands to Static compile rust

$ alias rust-musl-builder='docker run --rm -it -v "$(pwd)":/home/rust/src ekidd/rust-musl-builder'
$ rust-musl-builder cargo build --release


3. Build Docker file

$ cat Dockerfile  

FROM scratch
ADD target/x86_64-unknown-linux-musl/release/hello-rust /
EXPOSE 8080
CMD ["/hello-rust"]

4. Build Docker file

docker build -t ravij/hello-rust-docker .

5. Validate Docker File. Run this docker file locally and check

docker run - rm - name rust-iron -p 8080:8080 ravij/hello-rust-docker
On 8080


6. Docker Pusk to Docker Hub { alternatively you can also push to Harbor}

7. Create Helm Cluster role and binding  

8. Create Helm chart

helm create  hello-rust

8. Configure Helm with Readiness and Liveness probe. Fix deployment.yaml

9. Install  helm chart

helm install -n hello-rust  ./

10. Package helm to share { TBD }
