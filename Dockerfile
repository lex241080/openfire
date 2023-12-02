FROM alpine

LABEL maintainer="lex_admin <andrey@best-home.xyz>" \
  name="openfire" description="Openfire XMPP Server"

ENV TZ=UTC

RUN apk -U add --no-cache tzdata shadow openjdk11 && \
  wget -O openfire_4_7_5.tar.gz https://www.igniterealtime.org/downloadServlet?filename=openfire/openfire_4_7_5.tar.gz && \
  tar xf openfire_4_7_5.tar.gz -C /opt && rm openfire_4_7_5.tar.gz

COPY entrypoint.sh /

RUN chmod +x /entrypoint.sh && \
  cp -r /opt/openfire/conf /usr/local/etc && \
  cp -r /opt/openfire/plugins /usr/local/lib && \
  cp -r /opt/openfire/resources/security /usr/local/lib

EXPOSE 9090 9091 5222 5223 7070 7443 5269 5270 5275 5276 5262 5263 7777

VOLUME [ "/opt/openfire/conf" ]
VOLUME [ "/opt/openfire/plugins" ]
VOLUME [ "/opt/openfire/resources/security" ]

CMD ["/entrypoint.sh"]