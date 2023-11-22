# 공식 uwsgi flask 이미지를 부모 이미지로 사용
FROM tiangolo/uwsgi-nginx-flask:python3.11

# 현재 디렉토리에서 ./app 내용을 컨테이너의 /app으로 복사
COPY ./app /app
CMD ["uwsgi", "--ini", "uwsgi.ini"]
