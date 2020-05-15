FROM scratch

# Extract runtime required files from trescott/gnat-dev build environment
COPY --from=trescott/gnat-dev /lib/x86_64-linux-gnu/ld-* /lib/
COPY --from=trescott/gnat-dev /lib/x86_64-linux-gnu/libc-* /lib/
COPY --from=trescott/gnat-dev /lib/x86_64-linux-gnu/libc.* /lib/
COPY --from=trescott/gnat-dev /lib/x86_64-linux-gnu/libdl* /lib/
COPY --from=trescott/gnat-dev /lib/x86_64-linux-gnu/libgcc* /lib/
COPY --from=trescott/gnat-dev /lib/x86_64-linux-gnu/ld-linux* /lib64/
COPY --from=trescott/gnat-dev /usr/lib/x86_64-linux-gnu/ada /usr/lib/x86_64-linux-gnu/ada
COPY --from=trescott/gnat-dev /usr/lib/x86_64-linux-gnu/libgnat-9.so.1 /usr/lib/x86_64-linux-gnu/

