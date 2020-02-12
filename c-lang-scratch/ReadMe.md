## Damn Small Linux Container Image

This is my attempt at creating a **damn small container** with nothing but a small **C Program** with _statically linked_ libraries and therefore having `No Dependencies` to be included in docker image !!

Have a look at my [Dockerfile](./Dockerfile). It's multi-stage build file where first stage "builder" is "gcc" image used for compiling and given `C source code` into `Statically Linked Executable` using an additional compiler switch `-static`.

After it's build a `binary`, i have copied the binary into my `scratch` image and set `CMD` to path of file.

Pre-Built Image is available at docker hub, try following command to pull it!
`docker pull mahendrshinde/damn-small`

