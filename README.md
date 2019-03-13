A minimal environment for testing a tarball of ruby.

```
$ wget https://.../ruby-X.X.X.tar.gz
$ docker build -t ruby-tarball-test-env .
$ docker run --rm -ti -v `pwd`/ruby-X.X.X.tar.gz:/root/ruby-X.X.X.tar.gz ruby-tarball-test-env
```
