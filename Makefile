all:
	CC=i586-mingw32msvc-gcc   CGO_ENABLED=1  GOOS=windows GOARCH=386 go build mimikatz.go
	go build crypt.go
test:
	CGO_ENABLED=0 go build mimikatz.go
clean:
	rm crypt mimikatz.exe