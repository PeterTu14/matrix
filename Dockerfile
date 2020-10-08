FROM scratch
ADD alpine-minirootfs-3.12.0-x86_64.tar.gz /
LABEL maintainer="ptutka <peto10@post.sk>" \
	  description="alpine linux with cmatrix"
RUN apk update \
	&& apk add cmatrix
CMD [ "cmatrix" ]
