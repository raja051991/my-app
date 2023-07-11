FROM tomcat:8
# Take the war and copy to webapps of tomcat
COPY target/project.war /usr/local/tomcat/webapps/
CMD ["uvicorn", "main:myapp", "--host", "0.0.0.0", "--port", "8080"]
