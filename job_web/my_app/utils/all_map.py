import pandas as pd
from pyecharts import options as opts
from pyecharts.charts import Map, Bar
from pyecharts.charts import Pie, Line, WordCloud
from pyecharts.globals import SymbolType

from job_web import conn
from my_app.models import Top20, Company_type

province_city = {
    '北京': ['北京'],
    '天津': ['天津'],
    '上海': ['上海'],
    '重庆': ['重庆'],
    '河北': ['石家庄', '保定', '唐山', '邯郸', '邢台', '沧州', '衡水', '廊坊', '承德', '秦皇岛', '张家口'],
    '山西': ['太原', '大同', '阳泉', '长治', '临汾', '晋中', '运城', '忻州', '朔州', '吕梁', '晋城'],
    '内蒙古': ['呼和浩特', '包头', '乌海', '赤峰', '通辽', '鄂尔多斯', '呼伦贝尔', '巴彦卓尔', '乌兰察布', '兴安',
               '锡林郭勒', '阿拉善'],
    '辽宁': ['沈阳', '葫芦岛', '大连', '盘锦', '鞍山', '铁岭', '本溪', '丹东', '抚顺', '锦州', '辽阳', '阜新', '朝阳',
             '营口'],
    '吉林': ['长春', '吉林', '通化', '白城', '四平', '辽源', '松原', '白山', '延边'],
    '黑龙江': ['哈尔滨', '大兴安岭', '伊春', '牡丹江', '大庆', '鸡西', '鹤岗', '绥化', '齐齐哈尔', '黑河', '佳木斯',
               '双鸭山', '七台河'],
    '江苏': ['南京', '无锡', '常州', '扬州', '徐州', '苏州', '连云港', '盐城', '淮安', '宿迁', '镇江', '南通', '泰州'],
    '浙江': ['杭州', '宁波', '温州', '嘉兴', '湖州', '绍兴', '金华', '衢州', '舟山', '义乌', '台州', '丽水'],
    '安徽': ['合肥', '芜湖', '蚌埠', '淮南', '马鞍山', '淮北', '铜陵', '安庆', '黄山', '滁州', '阜阳', '宿州', '六安',
             '亳州', '池州', '宣城'],
    '福建': ['福州', '厦门', '莆田', '三明', '泉州', '漳州', '南平', '龙岩', '宁德'],
    '江西': ['南昌', '景德镇', '萍乡', '九江', '抚州', '鹰潭', '赣州', '吉安', '宜春', '新余', '上饶'],
    '山东': ['济南', '青岛', '淄博', '枣庄', '东营', '烟台', '潍坊', '济宁', '泰安', '威海', '日照', '临沂', '德州',
             '聊城', '滨州', '菏泽'],
    '河南': ['郑州', '开封', '洛阳', '平顶山', '安阳', '鹤壁', '新乡', '焦作', '濮阳', '许昌', '漯河', '三门峡', '南阳',
             '商丘', '信阳', '周口', '驻马店'],
    '湖北': ['武汉', '黄石', '十堰', '宜昌', '襄阳', '鄂州', '荆门', '孝感', '荆州', '黄冈', '咸宁', '随州', '恩施'],
    '湖南': ['长沙', '株洲', '湘潭', '衡阳', '邵阳', '岳阳', '常德', '张家界', '益阳', '郴州', '永州', '怀化', '娄底',
             '湘西'],
    '广东': ['广州', '韶关', '深圳', '珠海', '汕头', '佛山', '江门', '湛江', '茂名', '肇庆', '惠州', '梅州', '汕尾',
             '河源', '阳江', '清远', '东莞', '中山', '潮州', '揭阳', '云浮'],
    '广西': ['南宁', '柳州', '桂林', '梧州', '北海', '防城港', '钦州', '贵港', '玉林', '百色', '贺州', '河池', '来宾',
             '崇左'],
    '海南': ['海口', '三亚', '三沙', '儋州'],
    '四川': ['成都', '自贡', '阿坝', '甘孜', '凉山', '攀枝花', '泸州', '德阳', '绵阳', '广元', '遂宁', '内江', '乐山',
             '南充', '眉山', '宜宾', '广安', '达州', '雅安', '巴中', '资阳'],
    '贵州': ['贵阳', '六盘水', '遵义', '安顺', '毕节', '铜仁', '黔东南', '黔南', '黔西南'],
    '云南': ['昆明', '曲靖', '玉溪', '保山', '昭通', '丽江', '普尔', '临沧', '楚雄', '红河', '文山', '西双版纳', '大理',
             '德宏', '怒江', '迪庆'],
    '西藏': ['拉萨', '日喀则', '昌都', '林芝', '山南', '那曲', '阿里'],
    '陕西': ['西安', '铜川', '宝鸡', '咸阳', '渭南', '延安', '汉中', '榆林', '安康', '商洛'],
    '甘肃': ['兰州', '嘉峪关', '金昌', '白银', '天水', '武威', '张掖', '平凉', '酒泉', '庆阳', '定西', '陇南', '临夏',
             '甘南'],
    '青海': ['西宁', '海东', '海南', '海西', '海北', '黄南', '果洛', '玉树'],
    '宁夏': ['银川', '石嘴山', '吴忠', '固原', '中卫'],
    '新疆': ['乌鲁木齐', '克拉玛依', '吐鲁番', '哈密', '阿克苏', '喀什', '和田', '塔城', '阿勒泰', '伊犁', '博尔塔拉',
             '昌吉', '巴音郭楞', '克孜勒苏']
}

province_dict = {
    '上海': '上海市',
    '北京': '北京市',
    '四川': '四川省',
    '天津': '天津市',
    '安徽': '安徽省',
    '山东': '山东省',
    '广东': '广东省',
    '江苏': '江苏省',
    '河南': '河南省',
    '浙江': '浙江省',
    '湖北': '湖北省',
    '湖南': '湖南省',
    '福建': '福建省',
    '辽宁': '辽宁省',
    '重庆': '重庆市',
    '陕西': '陕西省'
}


class AllMap():
    def get_p1(self, h, w):
        """职位分布地图"""
        detail_df = pd.DataFrame(list(province_dict.items()), columns=['province', 'province_all'])
        map_df = pd.DataFrame([(province, city) for province, cities in province_city.items() for city in cities],
                              columns=['province', 'city'])
        sql_query = "SELECT * FROM `城市职位需求量`"
        df = pd.read_sql_query(sql_query, conn)
        df['city'] = df['city']
        data = pd.merge(df, map_df, on='city', how='left')
        data = data.groupby('province')['num'].sum()
        data = data.reset_index()
        max_ = data['num'].max()
        data = pd.merge(data, detail_df, on='province', how='left')
        map = (
            Map(init_opts=opts.InitOpts(height=h, width=w))
            .add("数量", [[i[0], int(i[1])] for i in zip(data['province_all'].tolist(), data['num'].tolist())],
                 maptype='china', is_roam=False,
                 label_opts=opts.LabelOpts(color="#FFF", is_show=True), is_map_symbol_show=False)
            .set_global_opts(
                title_opts=opts.TitleOpts(is_show=False, title="title"),
                legend_opts=opts.LegendOpts(is_show=False, textstyle_opts=opts.TextStyleOpts(color="#fff")),  # 去掉图例
                visualmap_opts=opts.VisualMapOpts(max_=max_, textstyle_opts=opts.TextStyleOpts(color="#fff"))
            )
            .render_embed()
        )
        return map

    def get_p2(self):
        """Top20岗位名称表格"""
        top20_obj = Top20.objects.filter().order_by('-num')
        return top20_obj

    def get_p3(self):
        """企业类型表格"""
        company_obj = Company_type.objects.filter().order_by('-num')
        return company_obj

    def get_p4(self, h, w):
        """城市岗位分布"""
        sql_query = "SELECT * FROM `城市职位需求量`"
        df = pd.read_sql_query(sql_query, conn)
        df['sum'] = df["num"].sum()
        df["percent_p4"] = (df["num"] / df['sum']) * 100
        df["percent_p4"] = df["percent_p4"].round(2)
        # 货物重量比
        c = (
            Pie(init_opts=opts.InitOpts(height=h, width=w))
            .add("", df[["city", "percent_p4"]].values,
                 label_opts=opts.LabelOpts(color="#fff", is_show=False))
            .set_global_opts(
                legend_opts=opts.LegendOpts(is_show=False, textstyle_opts=opts.TextStyleOpts(color="#FFF")))
            .set_series_opts(label_opts=opts.LabelOpts(formatter="{b}: {c}%", color="#FFF"))
            .render_embed()
        )
        return c

    def get_p5(self, h, w):
        """词云"""
        counts = {}
        cursor = conn.cursor()
        sql_1 = "SELECT * FROM `经验要求`"
        cursor.execute(sql_1)
        result_1 = cursor.fetchall()
        for i in result_1:
            counts[i[0]] = i[1]
        sql_2 = "SELECT * FROM `学历要求`"
        cursor.execute(sql_2)
        result_2 = cursor.fetchall()
        for i in result_2:
            counts[i[0]] = i[1]
        items = list(counts.items())  # 将无序的字典类型转换为可排序的列表类型
        items.sort(key=lambda x: x[1], reverse=True)
        # 设置词云图
        wordcloud = (
            WordCloud(init_opts=opts.InitOpts(height=h, width=w))
            .add(series_name="出现数量", data_pair=items, word_size_range=[20, 100], shape=SymbolType.DIAMOND)
            .set_global_opts(
                title_opts=opts.TitleOpts(title="评论词云", title_textstyle_opts=opts.TextStyleOpts(font_size=23),
                                          is_show=False),
                legend_opts=opts.LegendOpts(is_show=False, textstyle_opts=opts.TextStyleOpts(color="#fff")),
                tooltip_opts=opts.TooltipOpts(is_show=True),
                # 设置白色主题
                visualmap_opts=opts.VisualMapOpts(is_show=False, max_=50, min_=0, range_color=["#FFFFFF", "#FFFFFF"]),
            )
        )
        return wordcloud.render_embed()

    def get_p6(self, h, w):
        """6: 薪水分布折线图"""
        sql_query = "SELECT * FROM `薪水分布`"
        df = pd.read_sql_query(sql_query, conn)
        p6 = (
            Line(init_opts=opts.InitOpts(height=h, width=w))
            .add_xaxis([str(i) + "小时" for i in df['salary'].tolist()])
            .add_yaxis("数量", df['num'].tolist(), is_smooth=True,
                       label_opts=opts.LabelOpts(is_show=False, color="#fff"))
            .set_series_opts(
                areastyle_opts=opts.AreaStyleOpts(opacity=0.5),
                label_opts=opts.LabelOpts(is_show=False),
            )
            .set_global_opts(
                legend_opts=opts.LegendOpts(is_show=False, textstyle_opts=opts.TextStyleOpts(color="white")),
                xaxis_opts=opts.AxisOpts(axislabel_opts=opts.LabelOpts(color="#fff"),
                                         axisline_opts=opts.AxisLineOpts(
                                             linestyle_opts=opts.LineStyleOpts(color="#fff")),
                                         splitline_opts=opts.SplitLineOpts(is_show=True,
                                                                           linestyle_opts=opts.LineStyleOpts(
                                                                               color="#fff")),
                                         axistick_opts=opts.AxisTickOpts(is_align_with_label=True),
                                         is_scale=False,
                                         boundary_gap=False,
                                         ),
                yaxis_opts=opts.AxisOpts(axislabel_opts=opts.LabelOpts(color="#fff"),
                                         axisline_opts=opts.AxisLineOpts(
                                             linestyle_opts=opts.LineStyleOpts(color="#fff")),
                                         splitline_opts=opts.SplitLineOpts(is_show=True,
                                                                           linestyle_opts=opts.LineStyleOpts(
                                                                               color="#fff")))
            )
        )
        return p6.render_embed()

    def get_p7(self, h, w):
        """7: 城市分布折线图"""
        sql_query = "SELECT * FROM `城市分布`"
        df = pd.read_sql_query(sql_query, conn)
        p7 = (
            Bar(init_opts=opts.InitOpts(height=h, width=w))
            .add_xaxis(df["city"].tolist())
            .add_yaxis("职位数量", df["num"].tolist(),
                       label_opts=opts.LabelOpts(is_show=False, color="#fff"))
            .set_series_opts(
                label_opts=opts.LabelOpts(is_show=False),
            )
            .set_global_opts(
                legend_opts=opts.LegendOpts(is_show=False, textstyle_opts=opts.TextStyleOpts(color="white")),
                xaxis_opts=opts.AxisOpts(axislabel_opts=opts.LabelOpts(color="#fff"),
                                         axisline_opts=opts.AxisLineOpts(
                                             linestyle_opts=opts.LineStyleOpts(color="#fff")),
                                         splitline_opts=opts.SplitLineOpts(is_show=True,
                                                                           linestyle_opts=opts.LineStyleOpts(
                                                                               color="#fff")),
                                         axistick_opts=opts.AxisTickOpts(is_align_with_label=True),
                                         is_scale=False,
                                         boundary_gap=False,
                                         ),
                yaxis_opts=opts.AxisOpts(axislabel_opts=opts.LabelOpts(color="#fff"),
                                         axisline_opts=opts.AxisLineOpts(
                                             linestyle_opts=opts.LineStyleOpts(color="#fff")),
                                         splitline_opts=opts.SplitLineOpts(is_show=True,
                                                                           linestyle_opts=opts.LineStyleOpts(
                                                                               color="#fff")))
            )
        )

        return p7.render_embed()

    def get_p8(self, h, w):
        """8: 学历要求折线图"""
        sql_query = "SELECT * FROM `学历要求`"
        df = pd.read_sql_query(sql_query, conn)
        p8 = (
            Line(init_opts=opts.InitOpts(height=h, width=w))
            .add_xaxis(df['education'].tolist())
            .add_yaxis("数量", df['num'].tolist(), is_smooth=True,
                       label_opts=opts.LabelOpts(is_show=False, color="#fff"))
            .set_series_opts(
                areastyle_opts=opts.AreaStyleOpts(opacity=0.5),
                label_opts=opts.LabelOpts(is_show=False),
            )
            .set_global_opts(

                legend_opts=opts.LegendOpts(is_show=False, textstyle_opts=opts.TextStyleOpts(color="white")),
                xaxis_opts=opts.AxisOpts(axislabel_opts=opts.LabelOpts(color="#fff"),
                                         axisline_opts=opts.AxisLineOpts(
                                             linestyle_opts=opts.LineStyleOpts(color="#fff")),
                                         splitline_opts=opts.SplitLineOpts(is_show=True,
                                                                           linestyle_opts=opts.LineStyleOpts(
                                                                               color="#fff")),
                                         axistick_opts=opts.AxisTickOpts(is_align_with_label=True),
                                         is_scale=False,
                                         boundary_gap=False,
                                         ),
                yaxis_opts=opts.AxisOpts(axislabel_opts=opts.LabelOpts(color="#fff"),
                                         axisline_opts=opts.AxisLineOpts(
                                             linestyle_opts=opts.LineStyleOpts(color="#fff")),
                                         splitline_opts=opts.SplitLineOpts(is_show=True,
                                                                           linestyle_opts=opts.LineStyleOpts(
                                                                               color="#fff")))
            )
        )

        return p8.render_embed()
