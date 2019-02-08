# openvas-9-gentoo-overlay
GVM-9 (previously named OpenVAS-9) overlay for Gentoo/Linux

This is not official Gentoo/Linux OpenVAS package.

You can find official Gentoo/Linux OpenVAS package: 
https://packages.gentoo.org/packages/net-analyzer/openvas

    gvm-9.0.0.ebuild
    Version 9

## HOW TO USE

Copy "openvas-overlay.conf" from this repository into /etc/portage/repos.conf/ to use the portage sync capabilities.

    sync repo       --> eix-sync or emaint -a sync
    install package --> emerge --ask net-analyzer/openvas

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
