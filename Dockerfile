# Replace this with the build for your image. This placeholder simply provides
# a minimal, buildable starting point based on Chainguard Wolfi.
FROM cgr.dev/chainguard/wolfi-base

RUN apk update && apk add --no-cache ca-certificates-bundle

ENTRYPOINT ["/bin/sh"]
