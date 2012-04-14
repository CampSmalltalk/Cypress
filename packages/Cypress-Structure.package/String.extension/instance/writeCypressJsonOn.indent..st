*Cypress-Structure
writeCypressJsonOn: aStream indent: startIndent
    aStream
        nextPutAll: '"';
        nextPutAll: self withUnixLineEndings encodeForHTTP;
        nextPutAll: '"'