# Select final stage based on TARGETARCH ARG
FROM ghcr.io/riddlecp/kcc:docker-base-20230809
LABEL com.kcc.name="Kindle Comic Converter"
LABEL com.kcc.author="Ciro Mattia Gonano, Paweł Jastrzębski and Darodi. Forked by Riddlecp"
LABEL org.opencontainers.image.description='Kindle Comic Converter'
LABEL org.opencontainers.image.documentation='https://github.com/riddlecp/kcc'
LABEL org.opencontainers.image.source='https://github.com/riddlecp/kcc'
LABEL org.opencontainers.image.authors='riddlecp'
LABEL org.opencontainers.image.url='https://github.com/riddlecp/kcc'
LABEL org.opencontainers.image.documentation='https://github.com/riddlecp/kcc'
LABEL org.opencontainers.image.vendor='riddlecp'
LABEL org.opencontainers.image.licenses='ISC'
LABEL org.opencontainers.image.title="Kindle Comic Converter"

COPY . /opt/kcc
RUN /opt/kcc/getKindlegen.sh
RUN cat /opt/kcc/kindlecomicconverter/__init__.py | grep version | awk '{print $3}' | sed "s/'//g" > /IMAGE_VERSION

ENTRYPOINT ["/opt/kcc/kcc-c2e.py"]
CMD ["-h"]