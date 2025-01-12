FROM alpine:3.8

LABEL maintainer="Gunter Miegel <gunter.miegel@coinboot.io>"
LABEL org.label-schema.build-date=$BUILD_DATE
LABEL org.label-schema.vcs-url="https://github.com/frzb/softduplex"
LABEL org.label-schema.vcs-ref=$VCS_REF

RUN apk update && apk add pdftk file

#USER softduplex
COPY softduplex /bin/
CMD ["sh","/bin/softduplex"]
