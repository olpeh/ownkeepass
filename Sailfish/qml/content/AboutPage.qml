/***************************************************************************
**
** Copyright (C) 2013-2014 Marko Koschak (marko.koschak@tisno.de)
** All rights reserved.
**
** This file is part of ownKeepass.
**
** ownKeepass is free software: you can redistribute it and/or modify
** it under the terms of the GNU General Public License as published by
** the Free Software Foundation, either version 2 of the License, or
** (at your option) any later version.
**
** ownKeepass is distributed in the hope that it will be useful,
** but WITHOUT ANY WARRANTY; without even the implied warranty of
** MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
** GNU General Public License for more details.
**
** You should have received a copy of the GNU General Public License
** along with ownKeepass. If not, see <http://www.gnu.org/licenses/>.
**
***************************************************************************/

import QtQuick 2.0
import Sailfish.Silica 1.0
import "../common"

Page {
    id: page
    SilicaFlickable {
        anchors.fill: parent
        contentWidth: parent.width
        contentHeight: col.height

        // Show a scollbar when the view is flicked, place this over all other content
        VerticalScrollDecorator {}

        Column {
            id: col
            width: parent.width
            spacing: Theme.paddingLarge

            PageHeaderExtended {
                title: "ownKeepass"
                subTitle: "Password Safe"
            }

            SilicaLabel {
                font.pixelSize: Theme.fontSizeLarge
                font.bold: true
                text: "About"
            }

            Image {
                anchors.horizontalCenter: parent.horizontalCenter
                source: "/usr/share/icons/hicolor/86x86/apps/harbour-ownkeepass.png"
            }

            SilicaLabel {
                textFormat: Text.StyledText
                linkColor: Theme.highlightColor
                horizontalAlignment: Text.AlignHCenter
                text: "Version " + ownKeepassSettings.version + " (beta)<br>\
Copyright (C) 2013-2014 Marko Koschak &lt;marko.koschak@tisno.de&gt;<br>"
            }

            SilicaLabel {
                textFormat: Text.StyledText
                linkColor: Theme.highlightColor
                text: "ownKeepass is a password safe for the Sailfish OS platform.<br>\
Source code is available at: <a href=\"https://github.com/jobe-m/ownkeepass\">https://github.com/jobe-m/ownkeepass</a><br>\
If you think you found a bug please report it also on github. Thanks :)<br>\
If you have comments, suggestions, ideas about ownKeepass or just want to say thank you please go here: \
<a href=\"http://www.tisno.de/index.php/open-source\">http://www.tisno.de/index.php/open-source</a><br>"
                onLinkActivated: {
                    console.log(link + " link activated")
                    Qt.openUrlExternally(link)
                }
            }

            SilicaLabel {
                font.pixelSize: Theme.fontSizeLarge
                font.bold: true
                text: "License"
            }

            SilicaLabel {
                textFormat: Text.StyledText
                linkColor: Theme.highlightColor
                text: "This program is free software: you can redistribute it and/or modify it under the \
terms of the GNU General Public License as published by the Free Software Foundation, either version 2 of \
the License, or (at your option) any later version.<br><br>\
This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even \
the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public \
License for more details: <a href=\"http://www.gnu.org/licenses/\">http://www.gnu.org/licenses/</a>.<br><br>\
\
<b>ownKeepass includes source code from other projects:</b><br><br>\
\
KeepassX database code:<br>\
Copyright (C) 2005-2006 by Tarek Saidi<br>\
GPLv2<br><br>\
\
AES crypto:<br>\
Copyright (c) 1998-2008, Brian Gladman, Worcester, UK. All rights reserved.<br><br>\
LICENSE TERMS<br><br>\
The redistribution and use of this software (with or without changes) is allowed without the payment of fees or royalties provided that:<br><br>\
1. source code distributions include the above copyright notice, this list of conditions and the following disclaimer;<br><br>\
2. binary distributions include the above copyright notice, this list of conditions and the following disclaimer in their documentation;<br><br>\
3. the name of the copyright holder is not used to endorse products built using this software without specific written permission.<br><br>\
DISCLAIMER<br><br>\
This software is provided \'as is\' with no explicit or implied warranties in respect of its properties, including, but not limited to, correctness and/or fitness for purpose.<br><br>\
\
Arcfour crypto:<br>\
Copyright (C) 2003-2008 Dominik Reichl<br>\
GPLv2 or later<br><br>\
\
Blowfish crypto:<br>\
Copyright (C) 1998, 2001, 2002 Free Software Foundation, Inc.<br>\
Copyright (C) 2003 by Michael Buesch<br>\
Copyright (C) 2007 by Tarek Saidi<br>\
GPLv2<br><br>\
\
SHA256:<br>\
Copyright (C) 2001-2003 by Christophe Devine<br>\
Copyright (C) 2005-2006 by Tarek Saidi<br>\
GPLv2<br><br>\
\
Twofish crypto:<br>\
Copyright (c) 2002 by Niels Ferguson<br>\
GPL<br><br>\
\
Class wrapper for Twofish crypto:<br>\
Copyright (C) 2005-2007 Tarek Saidi<br>\
Copyright (c) 2003, 2004 Dominik Reichl<br>\
GPLv2<br><br>\
\
Yarrow pseudo-randomness generator:<br>\
Copyright (C) 2007 Tarek Saidi<br>\
Copyright (C) 2001 Niels Müler<br>\
GPLv2<br>"
                onLinkActivated: {
                    console.log(link + " link activated")
                    Qt.openUrlExternally(link)
                }
            }
        }
    }
}
