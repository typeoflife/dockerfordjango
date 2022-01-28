FROM python:3.8
COPY ./stocks_products /stocks_products
RUN pip install -r stocks_products/requirements.txt
RUN /stocks_products/manage.py collectstatic
CMD ["python", "/stocks_products/manage.py", "runserver", "0.0.0.0:80"]
