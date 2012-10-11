"
notice: Copyright Jan Vrany & Dale Henrichs 2012
category: description - project information
"
productInstallDirBaseName
    "Returns a default installDir which will appear in <app>.nsi.
     This is usually not the one you want to keep"

    ^ (self package asCollectionOfSubstringsSeparatedByAny:':/') last
