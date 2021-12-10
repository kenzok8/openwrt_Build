FROM scratch

MAINTAINER kenzok8 "https://github.com/kenzok8/openwrt_Build"

ADD ${{ env.VERSION }}-${{matrix.target}}.gz /
