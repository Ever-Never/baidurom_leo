.class public Lcom/baidu/bulletin/ui/settings/ConfigList;
.super Landroid/widget/LinearLayout;
.source "ConfigList.java"


# static fields
.field public static final CONFIG_AUTO_DOWNLOAD:I = 0x0

.field public static final CONFIG_BULLENTIN_SCREEN:I = 0x2

.field public static final CONFIG_BULLETIN_MONITOR:I = 0x1

.field private static final CONFIG_HINT:[I = null

.field private static final CONFIG_ICON:[I = null

.field public static final CONFIG_ID:[I = null

.field private static final CONFIG_TEXT_OFF:I = 0x7f0c0243

.field private static final CONFIG_TEXT_ON:I = 0x7f0c0242

.field private static final CONFIG_TITLE:[I = null

.field private static final LIST_ITEM_COUNT:I = 0x2

.field private static final LIST_ITEM_HEIGHT:I = 0x48


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/ui/settings/ConfigItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 23
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/baidu/bulletin/ui/settings/ConfigList;->CONFIG_ID:[I

    .line 25
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/baidu/bulletin/ui/settings/ConfigList;->CONFIG_ICON:[I

    .line 29
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/baidu/bulletin/ui/settings/ConfigList;->CONFIG_TITLE:[I

    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/baidu/bulletin/ui/settings/ConfigList;->CONFIG_HINT:[I

    return-void

    .line 23
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    .line 25
    :array_1
    .array-data 0x4
        0xa5t 0x0t 0x2t 0x7ft
        0xa4t 0x0t 0x2t 0x7ft
        0xa3t 0x0t 0x2t 0x7ft
    .end array-data

    .line 29
    :array_2
    .array-data 0x4
        0x3at 0x2t 0xct 0x7ft
        0x3ct 0x2t 0xct 0x7ft
        0x3bt 0x2t 0xct 0x7ft
    .end array-data

    .line 35
    :array_3
    .array-data 0x4
        0x42t 0x2t 0xct 0x7ft
        0x43t 0x2t 0xct 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 39
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/baidu/bulletin/ui/settings/ConfigList;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/bulletin/ui/settings/ConfigList;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/settings/ConfigList;->items:Ljava/util/List;

    .line 48
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/settings/ConfigList;->setOrientation(I)V

    .line 49
    return-void
.end method


# virtual methods
.method getConfigItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/ui/settings/ConfigItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/baidu/bulletin/ui/settings/ConfigList;->items:Ljava/util/List;

    return-object v0
.end method

.method public onInit()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    .line 52
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/settings/ConfigList;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 54
    .local v8, inflater:Landroid/view/LayoutInflater;
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/SettingsController;->getSettingsController()Lcom/baidu/bulletin/ui/logic/SettingsController;

    move-result-object v9

    .line 56
    .local v9, settingsController:Lcom/baidu/bulletin/ui/logic/SettingsController;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v10, :cond_1

    .line 57
    invoke-virtual {p0, v7}, Lcom/baidu/bulletin/ui/settings/ConfigList;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/ui/settings/ConfigItem;

    .line 58
    .local v0, item:Lcom/baidu/bulletin/ui/settings/ConfigItem;
    iget-object v1, p0, Lcom/baidu/bulletin/ui/settings/ConfigList;->items:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v1, Lcom/baidu/bulletin/ui/settings/ConfigList;->CONFIG_ID:[I

    aget v2, v1, v7

    sget-object v1, Lcom/baidu/bulletin/ui/settings/ConfigList;->CONFIG_ICON:[I

    aget v3, v1, v7

    sget-object v1, Lcom/baidu/bulletin/ui/settings/ConfigList;->CONFIG_TITLE:[I

    aget v4, v1, v7

    sget-object v1, Lcom/baidu/bulletin/ui/settings/ConfigList;->CONFIG_ID:[I

    aget v1, v1, v7

    if-ne v1, v10, :cond_0

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v9, v7}, Lcom/baidu/bulletin/ui/logic/SettingsController;->getConfigListItem(I)Z

    move-result v6

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/bulletin/ui/settings/ConfigItem;->initConfigItem(Lcom/baidu/bulletin/ui/settings/ConfigList;III[IZ)V

    .line 56
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 60
    :cond_0
    sget-object v5, Lcom/baidu/bulletin/ui/settings/ConfigList;->CONFIG_HINT:[I

    goto :goto_1

    .line 66
    .end local v0           #item:Lcom/baidu/bulletin/ui/settings/ConfigItem;
    :cond_1
    return-void
.end method

.method public refresh()V
    .locals 4

    .prologue
    .line 69
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/SettingsController;->getSettingsController()Lcom/baidu/bulletin/ui/logic/SettingsController;

    move-result-object v2

    .line 70
    .local v2, settingsController:Lcom/baidu/bulletin/ui/logic/SettingsController;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v3, 0x2

    if-ge v0, v3, :cond_0

    .line 71
    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/settings/ConfigList;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/ui/settings/ConfigItem;

    .line 72
    .local v1, item:Lcom/baidu/bulletin/ui/settings/ConfigItem;
    sget-object v3, Lcom/baidu/bulletin/ui/settings/ConfigList;->CONFIG_ID:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/baidu/bulletin/ui/logic/SettingsController;->getConfigListItem(I)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/baidu/bulletin/ui/settings/ConfigItem;->refresh(Z)V

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    .end local v1           #item:Lcom/baidu/bulletin/ui/settings/ConfigItem;
    :cond_0
    return-void
.end method
