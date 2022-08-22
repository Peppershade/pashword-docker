FROM node:alpine

# Set workdir
WORKDIR /pashword

# Install packages
RUN apk --no-cache add git \
 # Clone the repository
 && git clone --depth=1 https://github.com/NayamAmarshe/pashword.git /pashword \
 && apk --no-cache del git \
 && npm install \
 && npm run build

EXPOSE 3000

CMD ["npm", "start"]