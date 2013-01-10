USER=bereamobi
URI=berea.mobi
export SITE=courses/ba4abw-sp13

jekyll
scp -r _site/* ${USER}@${URI}:~/${URI}/${SITE}/
