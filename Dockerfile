# =============================
#
# 실행 코드 예시
# docker run --name volume_hosting_v12 \
#         -v C/Users/COM/VscodeProject/docker_volume_test:/root \
#         -p 8000:5555 \ 
#         volume_test_hosting:v8
#
# =============================

# =============================
#
# python hosting 스크립트 실행 예시
#
# =============================

FROM python:3.11

WORKDIR /code

EXPOSE 5555

RUN apt-get update && \
    apt-get install -y wget unzip && \
    apt-get clean
    
RUN apt-get update && apt-get install -y libgl1

# Install dependencies
RUN apt-get install -f

# # 필요한 Python 패키지 설치
RUN pip install flask

COPY . .

# ADD hello.py .

### ENTRYPOINT가 먼저 실행되는 듯

CMD ["python3", "main.py"]

# ENTRYPOINT ["bin/sh", "pwd", "ls", "cd app", "echo hello_container.txt", "ls"]

# =============================
#
# host 통신 실행 예시
#
# =============================

# FROM nginx:latest

# # Expose port 80 (standard web server port)
# EXPOSE 80  

# # Assuming you have an index.html file
# COPY index.html /usr/share/nginx/html  


# =============================
#
# python 스크립트 실행 예시
#
# =============================

# FROM python

# WORKDIR /root

# ADD main.py .

# CMD ["python3", "main.py"]