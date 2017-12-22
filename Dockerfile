FROM ubuntu
RUN apt-get update
RUN apt-get install -y cvs xinetd openssl
ADD files/* /root/
RUN chmod +x /root/*.sh
RUN useradd cvs
ENV CVSROOT /var/local/cvs
EXPOSE 2401
CMD ["/root/run.sh"]
