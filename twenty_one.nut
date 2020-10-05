// cerner_2^5_2020
// using switch in squirrel

function typy(obj)
{
    switch(typeof obj)
    {
        case "integer":
        case "float":
            return "is a number";
        case "table":
        case "array":
            return "is a container";
        default:
            return "is other stuff"
    }
}

local a=1,b={},c=function(a,b){return a+b;}

print("a "+typy(a)+"\n");
print("b "+typy(b)+"\n");
print("c "+typy(c)+"\n");