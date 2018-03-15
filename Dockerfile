FROM fedora

RUN dnf install -y gcc-gfortran && \
    dnf clean all && \
    rm -rf /var/cache/yum/*

ADD app.f90 /opt/dice.f90
RUN gfortran /opt/dice.f90 -o /opt/dice
ENTRYPOINT ["/opt/dice"]
