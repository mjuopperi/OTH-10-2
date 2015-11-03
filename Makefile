CC = g++
CFLAGS =-c -Wall
OBJS = kello.o kello_main.o viisari.o
SRCS = $(OBJS:%.o=src/%.cpp)
APP = Kello

all: svn-export $(APP) clean

$(APP): $(OBJS)
	$(CC) $(OBJS) -o $(APP)

svn-export:
	svn export --username markusej "https://innoscm.edusrv.metropolia.fi/svn/ohteha/trunk/Kellokay/src/"

$(OBJS):
	$(CC) $(CFLAGS) $(SRCS)	

clean:
	rm *o
