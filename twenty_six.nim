# cerner_2^5_2020
# Using JSON in nim
import json

let jsonObject = """{"name": "Sky", "age": 32}"""
let jsonArray = """[7, 8, 9]"""

let parsedObject = parseJson(jsonObject)
let name = parsedObject["name"].getStr()
# This will print Sky
echo name

let parsedArray = parseJson(jsonArray)
let eight = parsedArray[1].getInt()
# This will print 8
echo eight