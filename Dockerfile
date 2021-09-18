FROM node:10-alpine
RUN npm install -g @11ty/eleventy@"$INPUT_VERSION" --unsafe-perm
COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
