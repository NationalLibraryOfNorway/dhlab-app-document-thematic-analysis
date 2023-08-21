# set base image (host OS)
FROM python:3.10.12-bookworm

# set the working directory in the container
WORKDIR /code

COPY requirements.txt /code/

# install dependencies
RUN pip install -r requirements.txt

# copy working files to the working directory
# COPY . /code
COPY themes_words.py gnl.py resources/DHlab_logo_web_en_black.png /code/


EXPOSE 8501

# command to run on container start
CMD ["streamlit", "run", "themes_words.py", "--server.baseUrlPath", "/tema", "--browser.gatherUsageStats=False"]
