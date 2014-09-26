.class public Lcom/baidu/launcher/data/AllWidgetsList;
.super Ljava/lang/Object;
.source "AllWidgetsList.java"


# static fields
.field private static final CAMERA_WIDGET_ID:I = 0xb

.field public static final SYSTEM_WIDGET_ID:I = -0x1

.field private static final TAG_BAIDUWIDGETS:Ljava/lang/String; = "baiduwidgets"


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mInstalledList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/ListWidgetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxID:I

.field private mPresetList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/ListWidgetInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/launcher/data/AllWidgetsList;->mMaxID:I

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/data/AllWidgetsList;->mInstalledList:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/data/AllWidgetsList;->mPresetList:Ljava/util/ArrayList;

    .line 46
    iput-object p1, p0, Lcom/baidu/launcher/data/AllWidgetsList;->mAppContext:Landroid/content/Context;

    .line 47
    return-void
.end method

.method private hasFlashlight()Z
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 161
    new-instance v8, Lcom/baidu/launcher/utils/PhoneInfoStateManager;

    invoke-direct {v8}, Lcom/baidu/launcher/utils/PhoneInfoStateManager;-><init>()V

    invoke-virtual {v8}, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->getPhoneDeviceModel()Ljava/lang/String;

    move-result-object v5

    .line 162
    .local v5, model:Ljava/lang/String;
    const-string v8, "GT-S5830i"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 174
    :cond_0
    :goto_0
    return v7

    .line 167
    :cond_1
    iget-object v8, p0, Lcom/baidu/launcher/data/AllWidgetsList;->mAppContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 168
    .local v6, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v6}, Landroid/content/pm/PackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object v2

    .line 169
    .local v2, fis:[Landroid/content/pm/FeatureInfo;
    move-object v0, v2

    .local v0, arr$:[Landroid/content/pm/FeatureInfo;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 170
    .local v1, fi:Landroid/content/pm/FeatureInfo;
    const-string v8, "android.hardware.camera.flash"

    iget-object v9, v1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 171
    const/4 v7, 0x1

    goto :goto_0

    .line 169
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private init(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    const/4 v12, 0x6

    const/4 v11, 0x1

    const/4 v10, 0x3

    .line 85
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f050001

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    .line 86
    .local v5, parser:Landroid/content/res/XmlResourceParser;
    invoke-static {v5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 87
    .local v1, attrs:Landroid/util/AttributeSet;
    const-string v8, "baiduwidgets"

    invoke-static {v5, v8}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 89
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    .line 93
    .local v3, depth:I
    :cond_0
    :goto_0
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    .local v6, type:I
    if-ne v6, v10, :cond_1

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    if-le v8, v3, :cond_8

    :cond_1
    if-eq v6, v11, :cond_8

    .line 95
    const/4 v8, 0x2

    if-ne v6, v8, :cond_0

    .line 98
    sget-object v8, Lcom/baidu/home2/R$styleable;->BaiduWidget:[I

    invoke-virtual {p1, v1, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 99
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 100
    .local v7, widgetID:I
    const/16 v8, 0x8

    if-ne v7, v8, :cond_2

    invoke-direct {p0}, Lcom/baidu/launcher/data/AllWidgetsList;->hasFlashlight()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 102
    :cond_2
    if-ne v7, v12, :cond_3

    sget-object v8, Lcom/baidu/launcher/app/LauncherApplication;->configString:Ljava/lang/String;

    const-string v9, "002"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 104
    :cond_3
    const/4 v8, 0x7

    if-ne v7, v8, :cond_4

    sget-object v8, Lcom/baidu/launcher/app/LauncherApplication;->configString:Ljava/lang/String;

    const-string v9, "004"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 106
    :cond_4
    if-ne v7, v10, :cond_5

    sget-object v8, Lcom/baidu/launcher/app/LauncherApplication;->configString:Ljava/lang/String;

    const-string v9, "005"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 109
    :cond_5
    new-instance v4, Lcom/baidu/launcher/data/item/ListWidgetInfo;

    invoke-direct {v4}, Lcom/baidu/launcher/data/item/ListWidgetInfo;-><init>()V

    .line 110
    .local v4, lwi:Lcom/baidu/launcher/data/item/ListWidgetInfo;
    iput v7, v4, Lcom/baidu/launcher/data/item/ListWidgetInfo;->widgetID:I

    .line 111
    const/4 v8, 0x4

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, v4, Lcom/baidu/launcher/data/item/ListWidgetInfo;->spanX:I

    .line 112
    const/4 v8, 0x5

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, v4, Lcom/baidu/launcher/data/item/ListWidgetInfo;->spanY:I

    .line 113
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v4, Lcom/baidu/launcher/data/item/ListWidgetInfo;->label:I

    .line 114
    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v4, Lcom/baidu/launcher/data/item/ListWidgetInfo;->previewImage:I

    .line 115
    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v4, Lcom/baidu/launcher/data/item/ListWidgetInfo;->layout:I

    .line 116
    const/4 v8, 0x7

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v4, Lcom/baidu/launcher/data/item/ListWidgetInfo;->emptyLayout:I

    .line 117
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, comp:Ljava/lang/String;
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_6

    .line 119
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    iput-object v8, v4, Lcom/baidu/launcher/data/item/ListWidgetInfo;->dependentOn:Landroid/content/ComponentName;

    .line 122
    :cond_6
    const/16 v8, 0xb

    if-ne v7, v8, :cond_9

    sget v8, Lcom/baidu/launcher/app/LauncherApplication;->SDK_VERSION:I

    const/16 v9, 0x10

    if-lt v8, v9, :cond_7

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 123
    :cond_7
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_0

    .line 138
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v1           #attrs:Landroid/util/AttributeSet;
    .end local v2           #comp:Ljava/lang/String;
    .end local v3           #depth:I
    .end local v4           #lwi:Lcom/baidu/launcher/data/item/ListWidgetInfo;
    .end local v5           #parser:Landroid/content/res/XmlResourceParser;
    .end local v6           #type:I
    .end local v7           #widgetID:I
    :catch_0
    move-exception v8

    .line 141
    :cond_8
    :goto_1
    return-void

    .line 127
    .restart local v0       #a:Landroid/content/res/TypedArray;
    .restart local v1       #attrs:Landroid/util/AttributeSet;
    .restart local v2       #comp:Ljava/lang/String;
    .restart local v3       #depth:I
    .restart local v4       #lwi:Lcom/baidu/launcher/data/item/ListWidgetInfo;
    .restart local v5       #parser:Landroid/content/res/XmlResourceParser;
    .restart local v6       #type:I
    .restart local v7       #widgetID:I
    :cond_9
    iget-object v8, p0, Lcom/baidu/launcher/data/AllWidgetsList;->mInstalledList:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    iget v8, p0, Lcom/baidu/launcher/data/AllWidgetsList;->mMaxID:I

    iget v9, v4, Lcom/baidu/launcher/data/item/ListWidgetInfo;->widgetID:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, p0, Lcom/baidu/launcher/data/AllWidgetsList;->mMaxID:I

    .line 129
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 139
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v1           #attrs:Landroid/util/AttributeSet;
    .end local v2           #comp:Ljava/lang/String;
    .end local v3           #depth:I
    .end local v4           #lwi:Lcom/baidu/launcher/data/item/ListWidgetInfo;
    .end local v5           #parser:Landroid/content/res/XmlResourceParser;
    .end local v6           #type:I
    .end local v7           #widgetID:I
    :catch_1
    move-exception v8

    goto :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/baidu/launcher/data/AllWidgetsList;->mInstalledList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 51
    iget-object v0, p0, Lcom/baidu/launcher/data/AllWidgetsList;->mPresetList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 52
    return-void
.end method

.method protected getAll()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/ListWidgetInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/baidu/launcher/data/AllWidgetsList;->mInstalledList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/baidu/launcher/data/AllWidgetsList;->mAppContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/baidu/launcher/data/AllWidgetsList;->init(Landroid/content/Context;)V

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/data/AllWidgetsList;->mInstalledList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getById(I)Lcom/baidu/launcher/data/item/ListWidgetInfo;
    .locals 5
    .parameter "widgetID"

    .prologue
    const/4 v3, 0x0

    .line 55
    const/4 v4, 0x1

    if-ge p1, v4, :cond_0

    move-object v1, v3

    .line 73
    :goto_0
    return-object v1

    .line 57
    :cond_0
    iget-object v4, p0, Lcom/baidu/launcher/data/AllWidgetsList;->mInstalledList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 58
    iget-object v4, p0, Lcom/baidu/launcher/data/AllWidgetsList;->mAppContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/baidu/launcher/data/AllWidgetsList;->init(Landroid/content/Context;)V

    .line 61
    :cond_1
    iget-object v4, p0, Lcom/baidu/launcher/data/AllWidgetsList;->mInstalledList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/data/item/ListWidgetInfo;

    .line 62
    .local v1, installed:Lcom/baidu/launcher/data/item/ListWidgetInfo;
    iget v4, v1, Lcom/baidu/launcher/data/item/ListWidgetInfo;->widgetID:I

    if-ne v4, p1, :cond_2

    goto :goto_0

    .line 67
    .end local v1           #installed:Lcom/baidu/launcher/data/item/ListWidgetInfo;
    :cond_3
    iget-object v4, p0, Lcom/baidu/launcher/data/AllWidgetsList;->mPresetList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/data/item/ListWidgetInfo;

    .line 68
    .local v2, preset:Lcom/baidu/launcher/data/item/ListWidgetInfo;
    iget v4, v2, Lcom/baidu/launcher/data/item/ListWidgetInfo;->widgetID:I

    if-ne v4, p1, :cond_4

    move-object v1, v2

    .line 69
    goto :goto_0

    .end local v2           #preset:Lcom/baidu/launcher/data/item/ListWidgetInfo;
    :cond_5
    move-object v1, v3

    .line 73
    goto :goto_0
.end method

.method public newWidget(JII)Lcom/baidu/launcher/data/item/ListWidgetInfo;
    .locals 3
    .parameter "presetID"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    const v2, 0x7f0300ca

    .line 144
    iget-object v1, p0, Lcom/baidu/launcher/data/AllWidgetsList;->mInstalledList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/baidu/launcher/data/AllWidgetsList;->mAppContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/baidu/launcher/data/AllWidgetsList;->init(Landroid/content/Context;)V

    .line 147
    :cond_0
    new-instance v0, Lcom/baidu/launcher/data/item/ListWidgetInfo;

    invoke-direct {v0}, Lcom/baidu/launcher/data/item/ListWidgetInfo;-><init>()V

    .line 148
    .local v0, lwi:Lcom/baidu/launcher/data/item/ListWidgetInfo;
    iget v1, p0, Lcom/baidu/launcher/data/AllWidgetsList;->mMaxID:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/baidu/launcher/data/AllWidgetsList;->mMaxID:I

    iput v1, v0, Lcom/baidu/launcher/data/item/ListWidgetInfo;->widgetID:I

    .line 149
    iput p3, v0, Lcom/baidu/launcher/data/item/ListWidgetInfo;->spanX:I

    .line 150
    iput p4, v0, Lcom/baidu/launcher/data/item/ListWidgetInfo;->spanY:I

    .line 151
    iput v2, v0, Lcom/baidu/launcher/data/item/ListWidgetInfo;->emptyLayout:I

    .line 152
    iput v2, v0, Lcom/baidu/launcher/data/item/ListWidgetInfo;->layout:I

    .line 153
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/baidu/launcher/data/item/ListWidgetInfo;->isPreset:Z

    .line 154
    iput-wide p1, v0, Lcom/baidu/launcher/data/item/ListWidgetInfo;->businessTableID:J

    .line 155
    iget-object v1, p0, Lcom/baidu/launcher/data/AllWidgetsList;->mPresetList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    return-object v0
.end method
