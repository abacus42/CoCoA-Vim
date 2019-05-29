VIMDIR=$(DESTDIR)/usr/share/vim
ADDONS=${VIMDIR}/addons
REGISTRY=${VIMDIR}/registry

all:

install:
	mkdir -pv ${ADDONS}/ftdetect
	cp -v ftdetect/cocoa.vim ${ADDONS}/ftdetect/cocoa.vim
	mkdir -pv ${ADDONS}/syntax
	cp -v syntax/cocoa.vim ${ADDONS}/syntax/cocoa.vim
	mkdir -pv ${ADDONS}/indent
	cp -v indent/cocoa.vim ${ADDONS}/indent/cocoa.vim
	mkdir -pv ${REGISTRY}
	cp -v registry/cocoa.yaml ${REGISTRY}/cocoa.yaml

