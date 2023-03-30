FROM hexpm/elixir:1.14.2-erlang-25.3-alpine-3.17.2

ARG cnb_uid=1000
ARG cnb_gid=1001
ARG phoenix_version=1.7.1

# Install packages that we want to make available at both build and run time
RUN apk add --update bash ca-certificates git

# Create user and group
RUN addgroup -g ${cnb_gid} cnb && \
  adduser -u ${cnb_uid} -G cnb -s /bin/bash -D cnb

# Set required CNB information
ENV CNB_USER_ID=${cnb_uid}
ENV CNB_GROUP_ID=${cnb_gid}
