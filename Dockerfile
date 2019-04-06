FROM alt:sisyphus

#RUN apt-get update && apt-get -y install apt rpm && apt-get -y dist-upgrade && apt-get -y install ghc8.2.2 gcc curl zlib-devel git && apt-get clean && git clone --depth 1 git://github.com/haskell/cabal.git && cd cabal/cabal-install && ./bootstrap.sh && mv /root/.cabal/bin/cabal /usr/bin/cabal && rm -rf /var/cache/apt /cabal /root/.cabal
RUN apt-get update && apt-get -y install apt rpm && apt-get -y install ghc8.2.2 gcc curl zlib-devel git && apt-get clean && git clone --depth 1 git://github.com/haskell/cabal.git && cd cabal/cabal-install && ./bootstrap.sh && mv /root/.cabal/bin/cabal /usr/bin/cabal && rm -rf /var/cache/apt /cabal /root/.cabal
#RUN apt-get -y install libsasl2-devel libsasl2-plugin-gssapi

ENTRYPOINT []
