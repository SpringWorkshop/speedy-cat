FROM daocloud.io/java:8
RUN mkdir /app/
COPY ./target/config-service-0.0.1.jar /app/
COPY ./buildtask/entrypoint.sh /app/
CMD ["./entrypoint.sh"]