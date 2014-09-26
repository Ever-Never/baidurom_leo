.class public Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;
.super Ljava/lang/Object;
.source "ResUtil.java"


# static fields
.field private static final CLOUDY:I = 0x66

.field public static final DIVIDER_BETWEEN_DAY_AND_NIGHT_AM:J = 0x6L

.field public static final DIVIDER_BETWEEN_DAY_AND_NIGHT_PM:J = 0x12L

.field private static final DUSTY:I = 0x68

.field private static final FOGGY:I = 0x67

.field private static final RAINY:I = 0x69

.field private static final SHADY:I = 0x6b

.field private static final SNOWY:I = 0x6a

.field private static final SUNNY_DAY:I = 0x64

.field private static final SUNNY_NIGHT:I = 0x65

.field public static mClockImage:[I

.field public static mTransparentClockImage:[I

.field private static widgetBackgroudImages:Landroid/util/SparseIntArray;

.field private static widgetBacksideIcons:Landroid/util/SparseIntArray;

.field private static widgetFrontBanners:Landroid/util/SparseIntArray;

.field private static widgetIcons:Landroid/util/SparseIntArray;

.field private static widgetTransparentBacksideIcons:Landroid/util/SparseIntArray;

.field private static widgetTransparentIcons:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 16
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->mClockImage:[I

    .line 20
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->mTransparentClockImage:[I

    .line 25
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->widgetIcons:Landroid/util/SparseIntArray;

    .line 26
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->widgetTransparentIcons:Landroid/util/SparseIntArray;

    .line 27
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->widgetBackgroudImages:Landroid/util/SparseIntArray;

    .line 28
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->widgetBacksideIcons:Landroid/util/SparseIntArray;

    .line 29
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->widgetTransparentBacksideIcons:Landroid/util/SparseIntArray;

    .line 30
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->widgetFrontBanners:Landroid/util/SparseIntArray;

    .line 48
    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->initResources()V

    .line 49
    return-void

    .line 16
    :array_0
    .array-data 0x4
        0xcat 0x0t 0x2t 0x7ft
        0xcbt 0x0t 0x2t 0x7ft
        0xcct 0x0t 0x2t 0x7ft
        0xcdt 0x0t 0x2t 0x7ft
        0xcet 0x0t 0x2t 0x7ft
        0xcft 0x0t 0x2t 0x7ft
        0xd0t 0x0t 0x2t 0x7ft
        0xd1t 0x0t 0x2t 0x7ft
        0xd2t 0x0t 0x2t 0x7ft
        0xd3t 0x0t 0x2t 0x7ft
    .end array-data

    .line 20
    :array_1
    .array-data 0x4
        0x3bt 0x3t 0x2t 0x7ft
        0x3ct 0x3t 0x2t 0x7ft
        0x3dt 0x3t 0x2t 0x7ft
        0x3et 0x3t 0x2t 0x7ft
        0x3ft 0x3t 0x2t 0x7ft
        0x40t 0x3t 0x2t 0x7ft
        0x41t 0x3t 0x2t 0x7ft
        0x42t 0x3t 0x2t 0x7ft
        0x43t 0x3t 0x2t 0x7ft
        0x44t 0x3t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkType(Ljava/lang/String;Landroid/content/Context;)I
    .locals 4
    .parameter "condition"
    .parameter "context"

    .prologue
    const/16 v2, 0x67

    const/16 v1, 0x64

    .line 228
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 229
    .local v0, res:Landroid/content/res/Resources;
    const v3, 0x7f0c01cc

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 230
    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->isInDayTime()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 258
    :cond_0
    :goto_0
    return v1

    .line 233
    :cond_1
    const/16 v1, 0x65

    goto :goto_0

    .line 236
    :cond_2
    const v3, 0x7f0c01ce

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 237
    const/16 v1, 0x66

    goto :goto_0

    .line 239
    :cond_3
    const v3, 0x7f0c01d3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    .line 240
    goto :goto_0

    .line 242
    :cond_4
    const v3, 0x7f0c01d1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    const v3, 0x7f0c01d2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 244
    :cond_5
    const/16 v1, 0x68

    goto :goto_0

    .line 246
    :cond_6
    const v3, 0x7f0c01cd

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 247
    const/16 v1, 0x69

    goto :goto_0

    .line 249
    :cond_7
    const v3, 0x7f0c01d0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 250
    const/16 v1, 0x6a

    goto :goto_0

    .line 252
    :cond_8
    const v3, 0x7f0c01cf

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 253
    const/16 v1, 0x6b

    goto :goto_0

    .line 255
    :cond_9
    const v3, 0x7f0c01d4

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 256
    goto :goto_0
.end method

.method public static dayAndNightChange()Z
    .locals 6

    .prologue
    .line 262
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 263
    .local v0, calendar:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 264
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 265
    .local v1, hour:I
    const-wide/16 v2, 0x6

    int-to-long v4, v1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x12

    int-to-long v4, v1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    :cond_0
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 267
    const/4 v2, 0x1

    .line 269
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getTransparentWeatherIcon(Ljava/lang/String;Landroid/content/Context;)I
    .locals 2
    .parameter "condition"
    .parameter "context"

    .prologue
    .line 179
    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->parseCondition(Ljava/lang/String;Landroid/content/Context;Z)I

    move-result v0

    .line 180
    .local v0, key:I
    sget-object v1, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->widgetTransparentIcons:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    return v1
.end method

.method public static getWeatherBackSideIcon(Ljava/lang/String;Landroid/content/Context;Z)I
    .locals 4
    .parameter "condition"
    .parameter "context"
    .parameter "checkDayAndNight"

    .prologue
    .line 191
    invoke-static {p0, p1, p2}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->parseCondition(Ljava/lang/String;Landroid/content/Context;Z)I

    move-result v0

    .line 192
    .local v0, key:I
    const-string v1, "###"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ResUtil:getWeatherBackSideIcon:condition="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    sget-object v1, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->widgetBacksideIcons:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    return v1
.end method

.method public static getWeatherBackground(Ljava/lang/String;Landroid/content/Context;)I
    .locals 4
    .parameter "condition"
    .parameter "context"

    .prologue
    .line 184
    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->parseCondition(Ljava/lang/String;Landroid/content/Context;Z)I

    move-result v0

    .line 185
    .local v0, key:I
    const-string v1, "###"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ResUtil:getWeatherBackground:condition="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    sget-object v1, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->widgetBackgroudImages:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    return v1
.end method

.method public static getWeatherBanner(Ljava/lang/String;Landroid/content/Context;)I
    .locals 4
    .parameter "condition"
    .parameter "context"

    .prologue
    .line 203
    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->parseCondition(Ljava/lang/String;Landroid/content/Context;Z)I

    move-result v0

    .line 204
    .local v0, key:I
    const-string v1, "###"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ResUtil:getWeatherBackSideIcon:condition="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    sget-object v1, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->widgetFrontBanners:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    return v1
.end method

.method public static getWeatherIcon(Ljava/lang/String;Landroid/content/Context;)I
    .locals 4
    .parameter "condition"
    .parameter "context"

    .prologue
    .line 173
    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->parseCondition(Ljava/lang/String;Landroid/content/Context;Z)I

    move-result v0

    .line 174
    .local v0, key:I
    const-string v1, "###"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ResUtil:getWeatherIcon:condition="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    sget-object v1, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->widgetIcons:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    return v1
.end method

.method public static getWeatherTransparentBackSideIcon(Ljava/lang/String;Landroid/content/Context;Z)I
    .locals 2
    .parameter "condition"
    .parameter "context"
    .parameter "checkDayAndNight"

    .prologue
    .line 198
    invoke-static {p0, p1, p2}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->parseCondition(Ljava/lang/String;Landroid/content/Context;Z)I

    move-result v0

    .line 199
    .local v0, key:I
    sget-object v1, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->widgetTransparentBacksideIcons:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    return v1
.end method

.method private static initFrontBanner()V
    .locals 3

    .prologue
    .line 102
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->widgetFrontBanners:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 103
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->widgetFrontBanners:Landroid/util/SparseIntArray;

    const/16 v1, 0x64

    const v2, 0x7f020390

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 104
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->widgetFrontBanners:Landroid/util/SparseIntArray;

    const/16 v1, 0x65

    const v2, 0x7f02038c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 105
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->widgetFrontBanners:Landroid/util/SparseIntArray;

    const/16 v1, 0x66

    const v2, 0x7f020389

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 106
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->widgetFrontBanners:Landroid/util/SparseIntArray;

    const/16 v1, 0x67

    const v2, 0x7f02038a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 107
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->widgetFrontBanners:Landroid/util/SparseIntArray;

    const/16 v1, 0x68

    const v2, 0x7f02038e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 108
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->widgetFrontBanners:Landroid/util/SparseIntArray;

    const/16 v1, 0x69

    const v2, 0x7f02038d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 109
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->widgetFrontBanners:Landroid/util/SparseIntArray;

    const/16 v1, 0x6a

    const v2, 0x7f02038f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 110
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->widgetFrontBanners:Landroid/util/SparseIntArray;

    const/16 v1, 0x6b

    const v2, 0x7f02038b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 111
    return-void
.end method

.method private static initResources()V
    .locals 0

    .prologue
    .line 55
    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->initWeatherIcons()V

    .line 56
    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->initWeatherBackgroud()V

    .line 57
    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->initWeatherBacksideIcons()V

    .line 58
    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->initFrontBanner()V

    .line 59
    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->initWeatherTransparentIcons()V

    .line 60
    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->initWeatherTransparentBacksideIcons()V

    .line 62
    return-void
.end method

.method private static initWeatherBackgroud()V
    .locals 3

    .prologue
    .line 127
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->widgetBackgroudImages:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 128
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->widgetBackgroudImages:Landroid/util/SparseIntArray;

    const/16 v1, 0x64

    const v2, 0x7f0203cb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 130
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->widgetBackgroudImages:Landroid/util/SparseIntArray;

    const/16 v1, 0x65

    const v2, 0x7f0203bd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 132
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->widgetBackgroudImages:Landroid/util/SparseIntArray;

    const/16 v1, 0x66

    const v2, 0x7f0203b5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 134
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->widgetBackgroudImages:Landroid/util/SparseIntArray;

    const/16 v1, 0x67

    const v2, 0x7f0203b7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 136
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->widgetBackgroudImages:Landroid/util/SparseIntArray;

    const/16 v1, 0x68

    const v2, 0x7f0203c7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 138
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->widgetBackgroudImages:Landroid/util/SparseIntArray;

    const/16 v1, 0x69

    const v2, 0x7f0203c5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 140
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->widgetBackgroudImages:Landroid/util/SparseIntArray;

    const/16 v1, 0x6a

    const v2, 0x7f0203c9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 142
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->widgetBackgroudImages:Landroid/util/SparseIntArray;

    const/16 v1, 0x6b

    const v2, 0x7f0203ba

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 145
    return-void
.end method

.method private static initWeatherBacksideIcons()V
    .locals 3

    .prologue
    const v2, 0x7f02025a

    .line 148
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->widgetBacksideIcons:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 149
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->widgetBacksideIcons:Landroid/util/SparseIntArray;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 150
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->widgetBacksideIcons:Landroid/util/SparseIntArray;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 151
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->widgetBacksideIcons:Landroid/util/SparseIntArray;

    const/16 v1, 0x66

    const v2, 0x7f020254

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 152
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->widgetBacksideIcons:Landroid/util/SparseIntArray;

    const/16 v1, 0x67

    const v2, 0x7f020255

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 153
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->widgetBacksideIcons:Landroid/util/SparseIntArray;

    const/16 v1, 0x68

    const v2, 0x7f020258

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 154
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->widgetBacksideIcons:Landroid/util/SparseIntArray;

    const/16 v1, 0x69

    const v2, 0x7f020257

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 155
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->widgetBacksideIcons:Landroid/util/SparseIntArray;

    const/16 v1, 0x6a

    const v2, 0x7f020259

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 156
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->widgetBacksideIcons:Landroid/util/SparseIntArray;

    const/16 v1, 0x6b

    const v2, 0x7f020256

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 157
    return-void
.end method

.method private static initWeatherIcons()V
    .locals 3

    .prologue
    .line 114
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->widgetIcons:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 115
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->widgetIcons:Landroid/util/SparseIntArray;

    const/16 v1, 0x64

    const v2, 0x7f0203ca

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 116
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->widgetIcons:Landroid/util/SparseIntArray;

    const/16 v1, 0x65

    const v2, 0x7f0203bc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 117
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->widgetIcons:Landroid/util/SparseIntArray;

    const/16 v1, 0x66

    const v2, 0x7f0203b4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 118
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->widgetIcons:Landroid/util/SparseIntArray;

    const/16 v1, 0x67

    const v2, 0x7f0203b6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 119
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->widgetIcons:Landroid/util/SparseIntArray;

    const/16 v1, 0x68

    const v2, 0x7f0203c6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 120
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->widgetIcons:Landroid/util/SparseIntArray;

    const/16 v1, 0x69

    const v2, 0x7f0203c4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 121
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->widgetIcons:Landroid/util/SparseIntArray;

    const/16 v1, 0x6a

    const v2, 0x7f0203c8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 122
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->widgetIcons:Landroid/util/SparseIntArray;

    const/16 v1, 0x6b

    const v2, 0x7f0203b9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 124
    return-void
.end method

.method private static initWeatherTransparentBacksideIcons()V
    .locals 3

    .prologue
    const v2, 0x7f02034e

    .line 65
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->widgetTransparentBacksideIcons:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 66
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->widgetTransparentBacksideIcons:Landroid/util/SparseIntArray;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 67
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->widgetTransparentBacksideIcons:Landroid/util/SparseIntArray;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 68
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->widgetTransparentBacksideIcons:Landroid/util/SparseIntArray;

    const/16 v1, 0x66

    const v2, 0x7f020348

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 69
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->widgetTransparentBacksideIcons:Landroid/util/SparseIntArray;

    const/16 v1, 0x67

    const v2, 0x7f020349

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 70
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->widgetTransparentBacksideIcons:Landroid/util/SparseIntArray;

    const/16 v1, 0x68

    const v2, 0x7f02034c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 71
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->widgetTransparentBacksideIcons:Landroid/util/SparseIntArray;

    const/16 v1, 0x69

    const v2, 0x7f02034b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 72
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->widgetTransparentBacksideIcons:Landroid/util/SparseIntArray;

    const/16 v1, 0x6a

    const v2, 0x7f02034d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 73
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->widgetTransparentBacksideIcons:Landroid/util/SparseIntArray;

    const/16 v1, 0x6b

    const v2, 0x7f02034a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 74
    return-void
.end method

.method private static initWeatherTransparentIcons()V
    .locals 3

    .prologue
    .line 77
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->widgetTransparentIcons:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 78
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->widgetTransparentIcons:Landroid/util/SparseIntArray;

    const/16 v1, 0x64

    const v2, 0x7f020356

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 79
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->widgetTransparentIcons:Landroid/util/SparseIntArray;

    const/16 v1, 0x65

    const v2, 0x7f020350

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 80
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->widgetTransparentIcons:Landroid/util/SparseIntArray;

    const/16 v1, 0x66

    const v2, 0x7f0203b4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 81
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->widgetTransparentIcons:Landroid/util/SparseIntArray;

    const/16 v1, 0x67

    const v2, 0x7f0203b6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 82
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->widgetTransparentIcons:Landroid/util/SparseIntArray;

    const/16 v1, 0x68

    const v2, 0x7f0203c6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 83
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->widgetTransparentIcons:Landroid/util/SparseIntArray;

    const/16 v1, 0x69

    const v2, 0x7f0203c4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 84
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->widgetTransparentIcons:Landroid/util/SparseIntArray;

    const/16 v1, 0x6a

    const v2, 0x7f0203c8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 85
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->widgetTransparentIcons:Landroid/util/SparseIntArray;

    const/16 v1, 0x6b

    const v2, 0x7f0203b9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 86
    return-void
.end method

.method private static isInDayTime()Z
    .locals 6

    .prologue
    .line 160
    const-string v2, "GMT+08:00"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 162
    .local v0, canlendar:Ljava/util/Calendar;
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 163
    .local v1, hour:I
    int-to-long v2, v1

    const-wide/16 v4, 0x6

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    int-to-long v2, v1

    const-wide/16 v4, 0x12

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static parseCondition(Ljava/lang/String;Landroid/content/Context;Z)I
    .locals 5
    .parameter "condition"
    .parameter "context"
    .parameter "checkDayAndNight"

    .prologue
    const v4, 0x7f0c01d5

    const/4 v3, 0x0

    .line 210
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 211
    .local v0, res:Landroid/content/res/Resources;
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 212
    invoke-static {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->checkType(Ljava/lang/String;Landroid/content/Context;)I

    move-result v2

    .line 222
    :goto_0
    return v2

    .line 214
    :cond_0
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, subString:[Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 216
    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->isInDayTime()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 217
    aget-object v2, v1, v3

    invoke-static {v2, p1}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->checkType(Ljava/lang/String;Landroid/content/Context;)I

    move-result v2

    goto :goto_0

    .line 219
    :cond_1
    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {v2, p1}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->checkType(Ljava/lang/String;Landroid/content/Context;)I

    move-result v2

    goto :goto_0

    .line 222
    :cond_2
    aget-object v2, v1, v3

    invoke-static {v2, p1}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->checkType(Ljava/lang/String;Landroid/content/Context;)I

    move-result v2

    goto :goto_0
.end method
