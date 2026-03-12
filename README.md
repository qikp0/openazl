# OpenAZL

Azure Linux is a rather interesting Linux distribution. It is used on various Azure services (such as the Azure Cloud Shell). It also has a container image.

But there is one small issue with the pre-made container image: it uses a proprietary license; one that limits who can update it and has a rather odd $5 liability settlement.

By making pre-built images, we can avoid this, and this is what OpenAZL does.

## Usage

Use the container image: [`ghcr.io/qikp/openazl:VERSION`](https://github.com/users/qikp0/packages/container/package/openazl). Replace `VERSION` with the desired Azure Linux version, such as `3.0`.
