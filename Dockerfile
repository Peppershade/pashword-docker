FROM alpine:latest

# Install packages
RUN apk add git npm

# Clone the repository
RUN git clone https://github.com/NayamAmarshe/pashword.git

# Set workdir
WORKDIR /pashword

# Install dependencies
RUN npm install

ENV PORT 3000
EXPOSE 3000

CMD ["npm", "run", "dev"]