FROM alpine

ENV APP_ROOT /app
ENV NODE_ENV production

WORKDIR ${APP_ROOT}

RUN apk update && apk --no-cache add jq

COPY ss-adapter entrypoint.sh ${APP_ROOT}/

CMD ["sh", "entrypoint.sh"]
