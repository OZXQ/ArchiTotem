local LOCALE = GetLocale()
ArchiTotemLocale = setmetatable({}, {
    __index = function(t, k)
        local v = tostring(k)
        rawset(t, k, v)
        if (LOCALE ~= "enUS") and (LOCALE ~= "enGB") then
            ArchiTotem_Print(string.format(" %q not found for %s", v, LOCALE), "debug")
        end
        return v
    end
})

local L = ArchiTotemLocale

if LOCALE == "zhCN" then
    L["Searing Totem"] = "灼热图腾"
    L["Fire Nova Totem"] = "火焰新星图腾"
    L["Magma Totem"] = "熔岩图腾"
    L["Frost Resistance Totem"] = "冰霜抗性图腾"
    L["Flametongue Totem"] = "火舌图腾"

    L["Earthbind Totem"] = "地缚图腾"
    L["Tremor Totem"] = "战栗图腾"
    L["Strength of Earth Totem"] = "大地之力图腾"
    L["Stoneskin Totem"] = "石肤图腾"
    L["Stoneclaw Totem"] = "石爪图腾"

    L["Mana Spring Totem"] = "法力之泉图腾"
    L["Fire Resistance Totem"] = "火焰抗性图腾"
    L["Poison Cleansing Totem"] = "祛毒图腾"
    L["Disease Cleansing Totem"] = "祛病图腾"
    L["Healing Stream Totem"] = "治疗之泉图腾"

    L["Tranquil Air Totem"] = "宁静之风图腾"
    L["Grounding Totem"] = "根基图腾"
    L["Windfury Totem"] = "风怒图腾"
    L["Grace of Air Totem"] = "风之优雅图腾"
    L["Nature Resistance Totem"] = "自然抗性图腾"
    L["Windwall Totem"] = "风墙图腾"
    L["Sentry Totem"] = "岗哨图腾"

    L["Totemic Recall"] = "图腾召回"
    L["Cast All"] = "一键施放"

    L["Cast Earth Totem"] = "施放大地图腾"
    L["Cast Fire Totem"] = "施放火焰图腾"
    L["Cast Water Totem"] = "施放水之图腾"
    L["Cast Air Totem"] = "施放空气图腾"
    L["Cast Totemic Recall"] = "施放图腾召回"

    -- Other translations
    L["ver."] = "版本"
    L["loaded"] = "已加载"
    L["Earth totems shown: "] = "显示的大地图腾："
    L["Fire totems shown: "] = "显示的火焰图腾："
    L["Water totems shown: "] = "显示的水之图腾："
    L["Air totems shown: "] = "显示的空气图腾："
    L["Elements must be written in English!"] = "元素必须用英文书写！"
    L["Direction set to: Down"] = "方向设置为：向下"
    L["Direction set to: Up"] = "方向设置为：向上"
    L["Direction must be down or up!"] = "方向必须是 down 或 up！"
    L["Order set to: "] = "顺序设置为："
    L["Specify scale"] = "指定缩放"
    L["Scale must be a number!"] = "缩放必须是一个数字！"
    L["Scale set to: "] = "缩放设置为："
    L["Showing all totems on mouseover"] = "鼠标悬停时显示所有图腾"
    L["Showing only one element on mouseover"] = "鼠标悬停时只显示一个元素"
    L["Totems will move the the bottom line when cast"] = "施放时图腾将移动到底部行"
    L["Totems will stay where they are when cast"] = "施放时图腾将停留在原地"
    L["Timers are now turned on"] = "计时器现在已开启"
    L["Timers are now turned off"] = "计时器现在已关闭"
    L["Tooltips are now turned on"] = "工具提示现在已开启"
    L["Tooltips are now turned off"] = "工具提示现在已关闭"
    L["Debuging are now turned on"] = "调试现在已开启"
    L["Debuging are now turned off"] = "调试现在已关闭"
    L["Available commands:"] = "可用命令："
    L["/at set <earth/fire/water/air> # - Sets the totems shown of that element to #."] =
    "/at set <earth/fire/water/air> # - 设置该元素显示的图腾数量为 #。"
    L["/at direction <up/down> - Set the direction totems pop up."] =
    "/at direction <up/down> - 设置图腾弹出的方向。"
    L["/at order <element 1, element 2, element 3, element 4> - Sets the order of the totems, from left to right."] =
    "/at order <element 1, element 2, element 3, element 4> - 设置图腾的顺序，从左到右。"
    L["/at scale # - Sets the scale of ArchiTotem, default is 1."] =
    "/at scale # - 设置 ArchiTotem 的缩放，默认值为 1。"
    L["/at showall - Toggles show all mode, displaying all totems on mouseover."] =
    "/at showall - 切换显示所有模式，鼠标悬停时显示所有图腾。"
    L["/at bottomcast - Toggles moving totems to the bottom line when cast"] =
    "/at bottomcast - 切换施放时将图腾移动到底部行。"
    L["/at timers - Toggles showing timers"] = "/at timers - 切换显示计时器"
    L["/at tooltip - Toggles showing tooltips"] = "/at tooltip - 切换显示工具提示"
    L["/at debug - Toggles debuging"] = "/at debug - 切换调试"
    L["Moving the bar:"] = "移动栏："
    L["Ctrl-RightClick and Drag any of the main buttons"] = "Ctrl-右键并拖动任何主按钮"
    L["Ordering totems of same element:"] = "排序同一元素的图腾："
    L["Ctrl-LeftClick any of the buttons"] = "Ctrl-左键单击任何按钮"
    L["Unavailable command. Type /at for help."] = "不可用命令。输入 /at 获取帮助。"
    L["You cast (.*) Totem."] = "你施放了(.*)图腾。"
    L["from Totemic Recall."] = "图腾召回。"
end

BINDING_NAME_CAST_EARTH_TOTEM = L["Cast Earth Totem"]
BINDING_NAME_CAST_FIRE_TOTEM = L["Cast Fire Totem"]
BINDING_NAME_CAST_WATER_TOTEM = L["Cast Water Totem"]
BINDING_NAME_CAST_AIR_TOTEM = L["Cast Air Totem"]
BINDING_NAME_CAST_TOTEMIC_RECALL = L["Cast Totemic Recall"]