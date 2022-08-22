FROM alpine:latest

WORKDIR /root/pashword

# Install packages
RUN apk add git npm

# Clone the repository
RUN git clone https://github.com/NayamAmarshe/pashword.git

# Change Directory
RUN cd pashword

# Install dependencies
RUN npm install

ENV PORT 3000
EXPOSE 3000

CMD ["npm", "run", "dev"]