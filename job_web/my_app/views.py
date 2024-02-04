from django.shortcuts import render

from my_app.utils.all_map import AllMap

all_map = AllMap()
data = {}
index_h = "278px"
index_w = "434px"
data["p1"] = all_map.get_p1("610px", "900px")
data["p2"] = all_map.get_p2()
data["p3"] = all_map.get_p3()
data["p4"] = all_map.get_p4(index_h, index_w)
data["p5"] = all_map.get_p5(index_h, index_w)
data["p6"] = all_map.get_p6(index_h, index_w)
data["p7"] = all_map.get_p7(index_h, "898px")
data["p8"] = all_map.get_p8(index_h, index_w)


def index(request):
    return render(request, "index.html", data)
