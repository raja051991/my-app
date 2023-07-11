FROM tomcat:8
# Take the war and copy to webapps of tomcat
COPY target/project.war /usr/local/tomcat/webapps/
WORKDIR /webapps
COPY /KUBERNETES/workspace/Project/src/main/webapp/index.html /usr/local/tomcat/webapps/form.html
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]
