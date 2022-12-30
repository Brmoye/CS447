nameList = [
    "Fred Flintstone, 1238 Rocky Road, Bedrock, AR, 12345, 2, 11/08/2016",
    "Wilma Flintstone, 1238 Rocky Road, Bedrock, AR, 12345, 2, 11/08/2016",
    "Barney Rubble, 1236 Rocky Road, Bedrock, AR, 12345, 2, 11/08/2016",
    "Betty Rubble, 1236 Rocky Road, Bedrock, AR 12345, 2, 11/04/2014",
    "Peter Griffin, 621 Cranston Lane, Quahog, RI, 45678, 4, 11/08/2016",
    "Lois Griffin, 621 Cranston Lane, Quahog, RI, 45678, 4, 11/08/2016",
    "Brian Griffin, 621 Cranston Lane, Quahog, RI, 45678, 4, 11/08/2014",
    "Bender Bending Rodriguez, Xr7 Expressway, New New York, Earth, ZZ9, 408, 11/08/2016",
    "Turanga Leela, Xr7 Expressway, New New York, Earth, 408, ZZ9, 11/08/2016"]

newList = []
for name in nameList:
    newList.append(name.split(","))

for i in range(0, len(nameList)):
    print("('%s', '%s', '%s', '%s', '%s')" % (newList[i+1], newList[i+2], newList[i+3], newList[i+4], newList[i+5]))
    
    