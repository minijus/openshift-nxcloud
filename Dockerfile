FROM nxprivatecloud/nxcloud

COPY supervisor/ /etc/supervisor/
COPY entrypoint.sh /entrypoint.sh

RUN touch /ordered_startup.log
RUN chmod 666 /ordered_startup.log
RUN chmod 755 /entrypoint.sh

CMD ["/entrypoint.sh"]
