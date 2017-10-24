docker run \
--name putiosync -d \
-v `pwd`/completed:/volumes/completed \
-v `pwd`/config:/root/.putiosync \
-v `pwd`/incomplete:/volumes/incomplete \
putiosync 
