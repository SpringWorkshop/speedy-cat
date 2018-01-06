FROM daocloud.io/java:8
RUN mkdir /app/
COPY ./target/service-monitor-0.0.1.jar /app/
COPY ./buildtask/entrypoint.sh /app/
CMD ["./entrypoint.sh"]