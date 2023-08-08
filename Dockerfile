FROM nginx:alpine

WORKDIR /usr/share/nginx/html

COPY page1.html .
COPY page2.html .
COPY page3.html .

EXPOSE 80
