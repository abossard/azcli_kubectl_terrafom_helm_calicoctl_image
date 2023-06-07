FROM debian:bullseye-slim
COPY install-packages.sh .
RUN /bin/bash install-packages.sh
COPY install-standalone.sh .
RUN /bin/bash install-standalone.sh

ARG USERNAME=user
ARG USER_UID=1000
ARG USER_GID=$USER_UID
RUN groupadd --gid $USER_GID $USERNAME \
    && useradd --uid $USER_UID --gid $USER_GID -m $USERNAME

# USER $USERNAME