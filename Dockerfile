FROM java:7

ADD http://mirror.softaculous.com/apache/ctakes/ctakes-3.2.2/apache-ctakes-3.2.2-bin.tar.gz /
ADD https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/ytex/ctakes-ytex-lib-3.1.2-SNAPSHOT.zip /

RUN tar -xzf apache-ctakes-3.2.2-bin.tar.gz
RUN ln -s /apache-ctakes-3.2.2 /apache-ctakes
RUN mkdir temp
RUN unzip ctakes-ytex-lib-3.1.2-SNAPSHOT.zip -d temp/
RUN cp -a temp/lib/. /apache-ctakes/lib/
RUN rm apache-ctakes-3.2.2-bin.tar.gz
RUN rm ctakes-ytex-lib-3.1.2-SNAPSHOT.zip
RUN rm -r temp