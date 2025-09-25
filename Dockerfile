# To use this Dockerfile, run:
# docker build -t m2scorer . && docker run -v $(pwd):/data m2scorer /data/{path to model output} /data/{path to benchmark gold}

FROM python:2.7.18-alpine

WORKDIR /app

COPY . /app

ENTRYPOINT ["python", "./m2scorer"]
CMD ["example/system", "example/source_gold"]