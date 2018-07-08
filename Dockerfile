FROM node:8 as build-deps

# Global install yarn package manager
RUN apt-get update && apt-get install -y curl apt-transport-https && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update && apt-get install -y yarn

RUN yarn --version
RUN npm --version

WORKDIR /usr/src/app

COPY . ./
RUN yarn
RUN npm run build

FROM busybox:latest
WORKDIR /html
COPY --from=build-deps /usr/src/app/build /html
