FROM finanzcheck/docker-node-java 

RUN wget "https://bootstrap.pypa.io/get-pip.py" -O /tmp/get-pip.py \
    && python /tmp/get-pip.py \
    && pip install awscli==1.11.25 \
    && rm -fr /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && rm -rf /var/runtime /var/lang \
    && curl https://lambci.s3.amazonaws.com/fs/nodejs8.10.tgz | tar -zx -C /

CMD ["npm", "rebuild"]
