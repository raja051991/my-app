FROM tomcat:8
# Take the war and copy to webapps of tomcat
COPY target/project.war /usr/local/tomcat/webapps/
COPY /home/ubuntu/KUBERNETES/workspace/Project/src/main/webapp/index.html  /usr/local/tomcat/webapps/index.html
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]
