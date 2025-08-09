CFLAGS  = -I/usr/local/include/libdrm -I/usr/local/include
LDFLAGS = -L/usr/local/lib

LIBS = -lEGL -lgbm -ldrm -lm -lOpenGL

all:
	cc -c -o drmgl.o drmgl.c ${CFLAGS}
	cc -o drmgl drmgl.o ${LDFLAGS} ${LIBS}
	strip drmgl

clean:
	rm -f drmgl.o drmgl
