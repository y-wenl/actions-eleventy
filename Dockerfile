FROM node:10-alpine
RUN npm install -g @11ty/eleventy@1.0.0-canary.44 --unsafe-perm
COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
