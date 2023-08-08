# set base image (host OS)
FROM python:3.10-bookworm

# set the working directory in the container
WORKDIR /code

# copy working files to the working directory
COPY . /code

# install dependencies
RUN pip install -r requirements.txt

EXPOSE 8501

# command to run on container start
CMD ["streamlit", "run", "themes_words.py", "--server.BaseUrl", "/tema"]
