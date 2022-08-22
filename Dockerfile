FROM alpine:latest

WORKDIR /root/pashword

# Install packages
RUN apk get git npm

# Clone the repository
git clone https://github.com/NayamAmarshe/pashword.git

# Change Directory
cd pashword

# Install dependencies
npm install

ENV PORT 3000
EXPOSE 3000

CMD ["npm", "run", "dev"]