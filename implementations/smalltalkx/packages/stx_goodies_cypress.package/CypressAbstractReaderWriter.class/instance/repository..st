"
notice: Copyright Jan Vrany & Dale Henrichs 2012
category: accessing
"
repository:aCypressRepository
    repository := aCypressRepository.
    notice := repository properties at: 'copyrightLine' ifAbsent:[nil].

    "Modified: / 17-09-2012 / 17:20:16 / Jan Vrany <jan.vrany@fit.cvut.cz>"
