FROM alpine:3.6
ADD https://share-aws-nx.s3.cn-northwest-1.amazonaws.com/shiny/kubectl1.7.4 /usr/local/bin/kubectl
RUN chmod +x /usr/local/bin/kubectl
EXPOSE 8001
ENTRYPOINT ["/usr/local/bin/kubectl", "proxy"]
