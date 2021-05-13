require 'inheritable'

function std:class_extends(__class1, __class2)
    return { classes_new=__class1,__class2}
end