FROM alpine/git:latest as cloner
RUN git clone https://github.com/dbohdan/remarshal.git /src/remarshal
RUN cd /src/remarshal && git checkout v0.8.0

FROM python:3.6-alpine3.7 as resource
COPY --from=cloner /src/remarshal /src/remarshal
WORKDIR /src/remarshal
RUN python setup.py install

FROM resource
