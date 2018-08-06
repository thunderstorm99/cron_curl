FROM alpine:3.8
RUN apk add curl
RUN echo -e '#!/bin/sh\ncurl -s $URL' > /etc/periodic/15min/curl
RUN chmod +x /etc/periodic/15min/curl
CMD ["crond", "-f"]
