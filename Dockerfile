# Start from nothing
FROM scratch

# Extract runtime required files from build environment
COPY /lib/x86_64-linux-gnu/ld-* /lib/
COPY /lib/x86_64-linux-gnu/libc-* /lib/
COPY /lib/x86_64-linux-gnu/libc.* /lib/
COPY /lib/x86_64-linux-gnu/libdl* /lib/
COPY /lib/x86_64-linux-gnu/libgcc* /lib/
RUN /bin/ln -s /lib /lib64
COPY /usr/lib/x86_64-linux-gnu/ada /usr/lib/x86_64-linux-gnu/ada
COPY /usr/lib/x86_64-linux-gnu/libgnat-9.so.1 /usr/lib/x86_64-linux-gnu/

# Container's program:
ENTRYPOINT ["/main"]

# This step is last because it will always change. Anything after this will not be cache-able.
# Extract build result
COPY /build/target/main /

