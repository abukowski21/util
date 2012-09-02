touch_install_files:
	@(if [ -d NOMPI ];     then touch NOMPI/src/Makefile.RULES; fi)
	@(if [ -d EMPIRICAL ]; then touch EMPIRICAL/srcEE/Makefile.DEPEND \
					  EMPIRICAL/srcIE/Makefile.DEPEND \
					  EMPIRICAL/srcUA/Makefile.RULES; fi)
	@(if [ -d CRASH ];     then touch CRASH/src/Makefile.DEPEND \
					  CRASH/src/Makefile.RULES; fi)
install: touch_install_files
	@(if [ -d HYPRE ]; then cd HYPRE;  make install; fi);

clean:: touch_install_files
	@(if [ -d NOMPI ];     then cd NOMPI/src;  make clean; fi)
	@(if [ -d TIMING ];    then cd TIMING;     make clean; fi)
	@(if [ -d DATAREAD ];  then cd DATAREAD;   make clean; fi)
	@(if [ -d EMPIRICAL ]; then cd EMPIRICAL;  make clean; fi)
	@(if [ -d CRASH ];     then cd CRASH;      make clean; fi)
	@(if [ -d HYPRE ];     then cd HYPRE;      make clean; fi)

distclean:: touch_install_files
	@(if [ -d NOMPI ];     then cd NOMPI/src;  make distclean; fi)
	@(if [ -d TIMING ];    then cd TIMING;     make distclean; fi)
	@(if [ -d DATAREAD ];  then cd DATAREAD;   make distclean; fi)
	@(if [ -d EMPIRICAL ]; then cd EMPIRICAL;  make distclean; fi)
	@(if [ -d CRASH ];     then cd CRASH;      make distclean; fi)
	@(if [ -d HYPRE ];     then cd HYPRE;      make distclean; fi)
	rm -f *~ */src*/Makefile.DEPEND */src*/Makefile.RULES
