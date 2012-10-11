"
notice: Copyright Jan Vrany & Dale Henrichs 2012
category: description
"
preRequisites
    "list all required packages.
     This list can be maintained manually or (better) generated and
     updated by scanning the superclass hierarchies and looking for
     global variable accesses. (the browser has a menu function for that)
     Howevery, often too much is found, and you may want to explicitely
     exclude individual packages in the #excludedFromPrerequisites method."

    ^ #(
        #'exept:expecco'
        #'exept:expecco/manifestApi'
        #'exept:expecco/reportGenerator'
        #'exept:httpPortal/widgets'
        #'exept:libcrypt'
        #'exept:osi/asn1'
        #'exept:workflow'
        #'stx:goodies/monticello'
        #'stx:goodies/simpleServices'
        #'stx:goodies/sunit'
        #'stx:goodies/webServer'
        #'stx:libbasic'    "Object - superclass of CypressJSONReader "
        #'stx:libbasic2'
        #'stx:libbasic3'
        #'stx:libcomp'
        #'stx:libcompat'
        #'stx:libdb/libodbc'
        #'stx:libdb/libsqlite'
        #'stx:libhtml'
        #'stx:libtool'
        #'stx:libtool2'
        #'stx:libview'
        #'stx:libview2'
        #'stx:libwidg'
        #'stx:libwidg2'
    )
