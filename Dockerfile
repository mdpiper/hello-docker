FROM condaforge/miniforge3

WORKDIR /opt

COPY index.html .

EXPOSE 80

CMD [ "python", "-m", "http.server", "80" ]
