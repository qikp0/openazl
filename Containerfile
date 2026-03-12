FROM registry.access.redhat.com/ubi9/ubi:latest as builder

ARG VERSION
RUN dnf install dnf-plugins-core -y && \
    dnf config-manager --add-repo "https://packages.microsoft.com/azurelinux/${VERSION}/prod/base/x86_64/" && \
    dnf clean all

RUN dnf install --nogpgcheck --disablerepo="ubi-*" --installroot /target-rootfs -y \
    azurelinux-release \
    azurelinux-repos \
    bash \
    ca-certificates \
    coreutils \
    tdnf

FROM scratch

COPY --from=builder /target-rootfs/ /

CMD ["/bin/bash"]
