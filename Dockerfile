FROM condaforge/miniforge3:24.3.0-0

WORKDIR /opt
COPY index.html .
EXPOSE 80

CMD [ "python", "-m", "http.server", "80" ]
