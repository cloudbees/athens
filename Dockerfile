FROM scratch
EXPOSE 8080
ENTRYPOINT ["/athens"]
COPY ./bin/ /