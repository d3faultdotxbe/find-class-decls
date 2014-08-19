I spent hours trying to get the RecursiveASTVisitor tutorial ( http://clang.llvm.org/docs/RAVFrontendAction.html ) to compile/link on Debian Wheezy, so I might as well share the results that worked.

Even though the target is Debian Wheezy, you need the Jessie (3.4 at time of writing) build of LLVM/Clang, so put the following line in your /etc/apt/sources.list
deb http://http.debian.net/debian/ jessie main

Then:
```
# apt-get update
# apt-get install -t jessie libclang-3.4-dev llvm-3.4-dev
```

Clone this repo and cd into it as normal user, then:
```
$ mkdir build
$ cd build
$ cmake ../
$ make
```

Test it out:
```
./find-class-decls "namespace n { namespace m { class C {}; } }"
```


I suck at using CMake and don't care enough to learn how to do this properly, which is why you see hard-coded paths in the CMake config files <3...

