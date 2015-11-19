FROM cloudlens/dnx:1.0.0-beta8

ENV DNX_VERSION=1.0.0-beta8 DNX_USER_HOME=/opt/dnx
RUN dnu commands install Microsoft.Dnx.Watcher $DNX_VERSION --packages $DNX_USER_HOME/bin

VOLUME /project

COPY rundnx.sh /

EXPOSE 5000

CMD ["/bin/bash", "/rundnx.sh"]
