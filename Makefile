export SITE=courses/ba4abw-sp13
MEDIA=media
USER=bereamobi
URI=berea.mobi
  
upload:
	jekyll
	rsync -vaz --exclude week/ -e ssh _site/ ${USER}@${URI}:~/${URI}/${SITE}
	scp ${MEDIA}/.htaccess ${USER}@${URI}:~/${URI}/${SITE}/${MEDIA}/

commit:
	git commit -a -m "$M"

push:
	git push

test:
	@echo #######################################
	@echo Launch server at http://localhost:9000/${SITE}/
	@echo #######################################
	jekyll --server 9000 --auto --base-url /${SITE} 
	# open http://localhost:9000/${SITE}/

kill:
	killall ruby
