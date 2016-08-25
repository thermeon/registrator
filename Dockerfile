FROM scratch

COPY registrator /bin/registrator

ENTRYPOINT ["/bin/registrator"]
