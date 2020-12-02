FROM conda/miniconda3-centos7

WORKDIR /opt

COPY index.html .

EXPOSE 80

CMD [ "python", "-m", "http.server", "80" ]
