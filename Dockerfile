FROM kadock/s6:edge

RUN apk add --no-cache libgcc libstdc++ musl hugo git
RUN mkdir -p /var/lib/hugo/www

VOLUME ["/var/lib/hugo/www"]

ENTRYPOINT ["/usr/bin/hugo", "server", "-D", "-p", "80", "-s", "/var/lib/hugo/www", "--bind", "0.0.0.0"]

EXPOSE 80/tcp
