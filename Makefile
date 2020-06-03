image = kadock/s6-hugo:edge
volumes = -v /srv/hugo/image/site:/var/lib/hugo/www

build:
	docker build -t ${image} .

run:
	docker run --rm -i -t -p 8181:80 ${volumes} ${image}

shell:
	docker run --rm -i -t ${volumes} ${image} /bin/sh
