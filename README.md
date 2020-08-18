# homebrew-mypdfsigner
Homebrew formula for mypdfsigner.

## How to install
    brew tap kryptokoder/mypdfsigner
    brew install mypdfsigner

## How to test
    mypdfsigner -h
    mypdfsigner -i /usr/local/opt/mypdfsigner/tests/example.pdf -o /tmp/example-signed.pdf -z /usr/local/opt/mypdfsigner/tests/mypdfsigner.conf -v -q
    open /tmp/example-signed.pdf

## How to learn more
    open https://www.kryptokoder.com/manual.html
