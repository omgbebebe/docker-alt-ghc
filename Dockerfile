FROM alt:sisyphus

RUN apt-get update && apt-get -y install apt rpm && apt-get -y dist-upgrade && apt-get clean

RUN apt-get -y install ghc8.2.2
RUN apt-get -y install gcc curl zlib-devel
RUN apt-get -y install git
RUN git clone --depth 1 git://github.com/haskell/cabal.git
RUN cd cabal/cabal-install && ./bootstrap.sh
RUN mv /root/.cabal/bin/cabal /usr/bin/cabal
#RUN apt-get -y install libsasl2-devel libsasl2-plugin-gssapi

ENTRYPOINT []
