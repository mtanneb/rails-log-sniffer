# Rails Log Sniffer



## Installation on Mac

**Copy and run in terminal**

```shell
cd /usr/local/bin && curl -o sniffer https://raw.githubusercontent.com/mtanneb/rails-log-sniffer/master/sniffer.rb && chmod +x sniffer && cd ~
```
## Usage
```shell
sniffer development.log
```
output
```shell
Traceback (most recent call last):
	3: from /usr/local/bin/sniffer:5:in `<main>'
	2: from /usr/local/bin/sniffer:5:in `with_index'
	1: from /usr/local/bin/sniffer:5:in `foreach'
/usr/local/bin/sniffer:8:in `block in <main>': Unsafe job enqueued at line: 38. (RuntimeError)
```