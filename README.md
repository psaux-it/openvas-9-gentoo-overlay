# openvas-9-gentoo-overlay
GVM-9 (previously named OpenVAS-9) overlay for Gentoo/Linux

This is not official Gentoo/Linux OpenVAS package.

You can find official Gentoo/Linux OpenVAS package: 
https://packages.gentoo.org/packages/net-analyzer/openvas

    gvm-9.0.0.ebuild
    Version 9

## USAGE

# via local overlays

Copy "openvas-overlay.conf" from this repository into /etc/portage/repos.conf/ to use the portage sync capabilities.
Alternatively you can create a /etc/portage/repos.conf/openvas-overlay.conf file containing:

    [openvas-overlay]
    location = /usr/local/portage/openvas-overlay
    sync-type = git
    sync-uri = https://github.com/hsntgm/openvas-9-gentoo-overlay.git
    priority = 9999

Then run:

    sync repo       --> emerge --sync or eix-sync or emaint -a sync
    install package --> emerge --ask net-analyzer/openvas

# via layman

    layman -o https://raw.github.com/hsntgm/openvas-9-gentoo-overlay/master/repositories.xml -f -a openvas-overlay

Then run --> layman -s openvas-overlay

## USE FLAGS

     IUSE="extras cli gsa ospd ldap radius"

 - extras     --> Required for docs, pdf results and fonts | Recommended
 - cli        --> Command Line Interfaces for OpenVAS-Scanner
 - gsa        --> Greenbone Security Agent (WebUI)
 - ospd       --> Scanner wrappers which share the same communication protocol
 - ldap       --> LDAP Support for Openvas-Libraries
 - radius     --> Radius Support for OpenVAS-Libraries

You can set them /etc/portage/package.use

--------------------------------------------------------------------------------------------------------------------------

## SCRIPTS

    Inspect the scripts. You never blindly run scripts you
    downloaded from the Internet, do you?
