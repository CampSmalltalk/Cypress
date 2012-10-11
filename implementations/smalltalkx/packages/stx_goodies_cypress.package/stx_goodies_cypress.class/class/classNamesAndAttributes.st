"
notice: Copyright Jan Vrany & Dale Henrichs 2012
category: description - contents
"
classNamesAndAttributes
    "lists the classes which are to be included in the project.
     Each entry in the list may be: a single class-name (symbol),
     or an array-literal consisting of class name and attributes.
     Attributes are: #autoload or #<os> where os is one of win32, unix,..."

    ^ #(
        "<className> or (<className> attributes...) in load order"
        #'stx_goodies_cypress'
        CypressAbstractReaderWriter
        CypressModel
        CypressClass
        CypressMethod
        CypressPackage
        CypressRepository
        CypressAbstractWriter
        CypressWriter
        CypressJSONReader
        CypressAbstractReader
        CypressFileTreeReader
        CypressReader
    )
