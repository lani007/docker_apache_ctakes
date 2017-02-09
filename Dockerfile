FROM java:8

ADD http://mirror.softaculous.com/apache/ctakes/ctakes-3.2.2/apache-ctakes-3.2.2-bin.tar.gz /
RUN ln -s /apache-ctakes-3.2.2 /apache-ctakes
