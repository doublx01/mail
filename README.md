
docker build -t doublx2/mail .<br>
docker run --name mail -d -p 25:25 -p 3000:3000 doublx2/mail


