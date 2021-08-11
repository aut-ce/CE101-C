year = input()

if year % 400 == 0:
    print("{} True".format(year))
elif year % 100 == 0:
    print("{} False".format(year))
elif year % 4 == 0:
    print("{} True".format(year))
else:
    print("{} False".format(year))