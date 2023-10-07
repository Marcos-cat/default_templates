filepath=~/Documents/Defaults/htmx

mkdir $1

files=("server.go" "templates/index.html" "static/style.css" "static/favicon.ico")

for file in "${files[@]}"; do
	cp -r $filepath/$file $1/$file
done

cd $1

go mod init $1
go mod tidy

go get github.com/gofiber/fiber/v2
go get github.com/gofiber/fiber/v2/middleware/logger
go get github.com/gofiber/template/html/v2

echo "Finished $1"
