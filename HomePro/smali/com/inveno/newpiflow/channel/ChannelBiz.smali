.class public Lcom/inveno/newpiflow/channel/ChannelBiz;
.super Ljava/lang/Object;
.source "ChannelBiz.java"


# static fields
.field public static final ALL_ID:Ljava/lang/String; = "all"

.field public static ALL_NAME:Ljava/lang/String; = null

.field public static TYPE_00_ID:Ljava/lang/String; = null

.field public static TYPE_00_NAME:Ljava/lang/String; = null

.field public static TYPE_01_ID:Ljava/lang/String; = null

.field public static TYPE_01_NAME:Ljava/lang/String; = null

.field public static TYPE_02_ID:Ljava/lang/String; = null

.field public static TYPE_02_NAME:Ljava/lang/String; = null

.field public static TYPE_03_ID:Ljava/lang/String; = null

.field public static TYPE_03_NAME:Ljava/lang/String; = null

.field public static TYPE_04_ID:Ljava/lang/String; = null

.field public static TYPE_04_NAME:Ljava/lang/String; = null

.field public static TYPE_05_ID:Ljava/lang/String; = null

.field public static TYPE_05_NAME:Ljava/lang/String; = null

.field public static TYPE_06_ID:Ljava/lang/String; = null

.field public static TYPE_06_NAME:Ljava/lang/String; = null

.field public static TYPE_07_ID:Ljava/lang/String; = null

.field public static TYPE_07_NAME:Ljava/lang/String; = null

.field public static TYPE_08_ID:Ljava/lang/String; = null

.field public static TYPE_08_NAME:Ljava/lang/String; = null

.field public static TYPE_09_ID:Ljava/lang/String; = null

.field public static TYPE_09_NAME:Ljava/lang/String; = null

.field public static TYPE_10_ID:Ljava/lang/String; = null

.field public static TYPE_10_NAME:Ljava/lang/String; = null

.field public static TYPE_11_ID:Ljava/lang/String; = null

.field public static TYPE_11_NAME:Ljava/lang/String; = null

.field public static TYPE_12_ID:Ljava/lang/String; = null

.field public static TYPE_12_NAME:Ljava/lang/String; = null

.field public static TYPE_13_ID:Ljava/lang/String; = null

.field public static TYPE_13_NAME:Ljava/lang/String; = null

.field public static TYPE_14_ID:Ljava/lang/String; = null

.field public static TYPE_14_NAME:Ljava/lang/String; = null

.field public static TYPE_15_ID:Ljava/lang/String; = null

.field public static TYPE_15_NAME:Ljava/lang/String; = null

.field public static final TYPE_ID_SHARE_KEY:Ljava/lang/String; = "TYPE_ID_SHARE_KEY"

.field public static final TYPE_NAME_SHARE_KEY:Ljava/lang/String; = "TYPE_NAME_SHARE_KEY"

.field public static channelModelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inveno/newpiflow/channel/ChannelModel;",
            ">;"
        }
    .end annotation
.end field

.field public static nowTypeId:Ljava/lang/String;

.field public static nowTypeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, ""

    sput-object v0, Lcom/inveno/newpiflow/channel/ChannelBiz;->ALL_NAME:Ljava/lang/String;

    .line 25
    const-string v0, ""

    sput-object v0, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_00_NAME:Ljava/lang/String;

    .line 26
    const-string v0, "0"

    sput-object v0, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_00_ID:Ljava/lang/String;

    .line 28
    const-string v0, ""

    sput-object v0, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_01_NAME:Ljava/lang/String;

    .line 29
    const-string v0, "1"

    sput-object v0, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_01_ID:Ljava/lang/String;

    .line 31
    const-string v0, ""

    sput-object v0, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_02_NAME:Ljava/lang/String;

    .line 32
    const-string v0, "2"

    sput-object v0, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_02_ID:Ljava/lang/String;

    .line 34
    const-string v0, ""

    sput-object v0, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_03_NAME:Ljava/lang/String;

    .line 35
    const-string v0, "3"

    sput-object v0, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_03_ID:Ljava/lang/String;

    .line 37
    const-string v0, ""

    sput-object v0, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_04_NAME:Ljava/lang/String;

    .line 38
    const-string v0, "4"

    sput-object v0, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_04_ID:Ljava/lang/String;

    .line 40
    const-string v0, ""

    sput-object v0, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_05_NAME:Ljava/lang/String;

    .line 41
    const-string v0, "5"

    sput-object v0, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_05_ID:Ljava/lang/String;

    .line 43
    const-string v0, ""

    sput-object v0, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_06_NAME:Ljava/lang/String;

    .line 44
    const-string v0, "6"

    sput-object v0, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_06_ID:Ljava/lang/String;

    .line 46
    const-string v0, ""

    sput-object v0, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_07_NAME:Ljava/lang/String;

    .line 47
    const-string v0, "7"

    sput-object v0, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_07_ID:Ljava/lang/String;

    .line 49
    const-string v0, ""

    sput-object v0, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_08_NAME:Ljava/lang/String;

    .line 50
    const-string v0, "8"

    sput-object v0, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_08_ID:Ljava/lang/String;

    .line 52
    const-string v0, ""

    sput-object v0, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_09_NAME:Ljava/lang/String;

    .line 53
    const-string v0, "9"

    sput-object v0, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_09_ID:Ljava/lang/String;

    .line 55
    const-string v0, ""

    sput-object v0, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_10_NAME:Ljava/lang/String;

    .line 56
    const-string v0, "10"

    sput-object v0, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_10_ID:Ljava/lang/String;

    .line 58
    const-string v0, ""

    sput-object v0, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_11_NAME:Ljava/lang/String;

    .line 59
    const-string v0, "11"

    sput-object v0, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_11_ID:Ljava/lang/String;

    .line 61
    const-string v0, ""

    sput-object v0, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_12_NAME:Ljava/lang/String;

    .line 62
    const-string v0, "12"

    sput-object v0, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_12_ID:Ljava/lang/String;

    .line 64
    const-string v0, ""

    sput-object v0, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_13_NAME:Ljava/lang/String;

    .line 65
    const-string v0, "13"

    sput-object v0, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_13_ID:Ljava/lang/String;

    .line 67
    const-string v0, ""

    sput-object v0, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_14_NAME:Ljava/lang/String;

    .line 68
    const-string v0, "14"

    sput-object v0, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_14_ID:Ljava/lang/String;

    .line 70
    const-string v0, ""

    sput-object v0, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_15_NAME:Ljava/lang/String;

    .line 71
    const-string v0, "15"

    sput-object v0, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_15_ID:Ljava/lang/String;

    .line 73
    sget-object v0, Lcom/inveno/newpiflow/channel/ChannelBiz;->ALL_NAME:Ljava/lang/String;

    sput-object v0, Lcom/inveno/newpiflow/channel/ChannelBiz;->nowTypeName:Ljava/lang/String;

    .line 74
    const-string v0, "all"

    sput-object v0, Lcom/inveno/newpiflow/channel/ChannelBiz;->nowTypeId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getChannelIDNow(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 217
    const-string v0, "TYPE_ID_SHARE_KEY"

    const-string v1, "all"

    invoke-static {v0, v1, p0}, Lcom/inveno/newpiflow/channel/Tools;->getInformain(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getChannelSetNameNow(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 179
    const-string v2, ""

    .line 181
    .local v2, name:Ljava/lang/String;
    invoke-static {p0}, Lcom/inveno/newpiflow/channel/ChannelBiz;->getChannelIDNow(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, id:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v3, Lcom/inveno/newpiflow/channel/ChannelBiz;->channelModelList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 205
    sget-object v3, Lcom/inveno/newpiflow/channel/ChannelBiz;->channelModelList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/inveno/newpiflow/channel/ChannelModel;

    invoke-virtual {v3}, Lcom/inveno/newpiflow/channel/ChannelModel;->getChannelId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 206
    sget-object v3, Lcom/inveno/newpiflow/channel/ChannelBiz;->channelModelList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/inveno/newpiflow/channel/ChannelModel;

    invoke-virtual {v3}, Lcom/inveno/newpiflow/channel/ChannelModel;->getChannelName()Ljava/lang/String;

    move-result-object v2

    .line 212
    :cond_0
    return-object v2

    .line 203
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 80
    sget-object v2, Lcom/inveno/newpiflow/channel/ChannelBiz;->channelModelList:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 81
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/inveno/newpiflow/channel/ChannelBiz;->channelModelList:Ljava/util/ArrayList;

    .line 83
    const-string v2, "TYPE_NAME_SHARE_KEY"

    sget-object v3, Lcom/inveno/newpiflow/channel/ChannelBiz;->ALL_NAME:Ljava/lang/String;

    invoke-static {v2, v3, p0}, Lcom/inveno/newpiflow/channel/Tools;->getInformain(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/inveno/newpiflow/channel/ChannelBiz;->nowTypeName:Ljava/lang/String;

    .line 86
    invoke-static {p0}, Lcom/inveno/newpiflow/channel/ChannelBiz;->getChannelIDNow(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/inveno/newpiflow/channel/ChannelBiz;->nowTypeId:Ljava/lang/String;

    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 90
    .local v1, rs:Landroid/content/res/Resources;
    const v2, 0x7f0c02c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_00_NAME:Ljava/lang/String;

    .line 91
    const v2, 0x7f0c02c2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_00_ID:Ljava/lang/String;

    .line 93
    const v2, 0x7f0c02c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_01_NAME:Ljava/lang/String;

    .line 94
    const v2, 0x7f0c02c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_01_ID:Ljava/lang/String;

    .line 96
    const v2, 0x7f0c02c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_02_NAME:Ljava/lang/String;

    .line 97
    const v2, 0x7f0c02c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_02_ID:Ljava/lang/String;

    .line 99
    const v2, 0x7f0c02c7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_03_NAME:Ljava/lang/String;

    .line 100
    const v2, 0x7f0c02c8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_03_ID:Ljava/lang/String;

    .line 102
    const v2, 0x7f0c02c9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_04_NAME:Ljava/lang/String;

    .line 103
    const v2, 0x7f0c02ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_04_ID:Ljava/lang/String;

    .line 105
    const v2, 0x7f0c02cb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_05_NAME:Ljava/lang/String;

    .line 106
    const v2, 0x7f0c02cc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_05_ID:Ljava/lang/String;

    .line 108
    const v2, 0x7f0c02cd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_06_NAME:Ljava/lang/String;

    .line 109
    const v2, 0x7f0c02ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_06_ID:Ljava/lang/String;

    .line 111
    const v2, 0x7f0c02cf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_07_NAME:Ljava/lang/String;

    .line 112
    const v2, 0x7f0c02d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_07_ID:Ljava/lang/String;

    .line 114
    const v2, 0x7f0c02d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_08_NAME:Ljava/lang/String;

    .line 115
    const v2, 0x7f0c02d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_08_ID:Ljava/lang/String;

    .line 117
    const v2, 0x7f0c02d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_09_NAME:Ljava/lang/String;

    .line 118
    const v2, 0x7f0c02d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_09_ID:Ljava/lang/String;

    .line 120
    const v2, 0x7f0c02d5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_10_NAME:Ljava/lang/String;

    .line 121
    const v2, 0x7f0c02d6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_10_ID:Ljava/lang/String;

    .line 123
    const v2, 0x7f0c02d7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_11_NAME:Ljava/lang/String;

    .line 124
    const v2, 0x7f0c02d8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_11_ID:Ljava/lang/String;

    .line 126
    const v2, 0x7f0c02d9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_12_NAME:Ljava/lang/String;

    .line 127
    const v2, 0x7f0c02da

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_12_ID:Ljava/lang/String;

    .line 129
    const v2, 0x7f0c02db

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_13_NAME:Ljava/lang/String;

    .line 130
    const v2, 0x7f0c02dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_13_ID:Ljava/lang/String;

    .line 132
    const v2, 0x7f0c02dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_14_NAME:Ljava/lang/String;

    .line 133
    const v2, 0x7f0c02de

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_14_ID:Ljava/lang/String;

    .line 135
    const v2, 0x7f0c02df

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_15_NAME:Ljava/lang/String;

    .line 136
    const v2, 0x7f0c02e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_15_ID:Ljava/lang/String;

    .line 138
    new-instance v0, Lcom/inveno/newpiflow/channel/ChannelModel;

    sget-object v2, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_00_NAME:Ljava/lang/String;

    sget-object v3, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_00_ID:Ljava/lang/String;

    const v4, 0x7f020246

    invoke-direct {v0, v2, v3, v4}, Lcom/inveno/newpiflow/channel/ChannelModel;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 139
    .local v0, channel0:Lcom/inveno/newpiflow/channel/ChannelModel;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/inveno/newpiflow/channel/ChannelModel;->setSelected(Z)V

    .line 140
    sget-object v2, Lcom/inveno/newpiflow/channel/ChannelBiz;->channelModelList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    sget-object v2, Lcom/inveno/newpiflow/channel/ChannelBiz;->channelModelList:Ljava/util/ArrayList;

    new-instance v3, Lcom/inveno/newpiflow/channel/ChannelModel;

    sget-object v4, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_01_NAME:Ljava/lang/String;

    sget-object v5, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_01_ID:Ljava/lang/String;

    const v6, 0x7f0201bb

    invoke-direct {v3, v4, v5, v6}, Lcom/inveno/newpiflow/channel/ChannelModel;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    sget-object v2, Lcom/inveno/newpiflow/channel/ChannelBiz;->channelModelList:Ljava/util/ArrayList;

    new-instance v3, Lcom/inveno/newpiflow/channel/ChannelModel;

    sget-object v4, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_02_NAME:Ljava/lang/String;

    sget-object v5, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_02_ID:Ljava/lang/String;

    const v6, 0x7f020249

    invoke-direct {v3, v4, v5, v6}, Lcom/inveno/newpiflow/channel/ChannelModel;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    sget-object v2, Lcom/inveno/newpiflow/channel/ChannelBiz;->channelModelList:Ljava/util/ArrayList;

    new-instance v3, Lcom/inveno/newpiflow/channel/ChannelModel;

    sget-object v4, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_03_NAME:Ljava/lang/String;

    sget-object v5, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_03_ID:Ljava/lang/String;

    const v6, 0x7f0201bf

    invoke-direct {v3, v4, v5, v6}, Lcom/inveno/newpiflow/channel/ChannelModel;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    sget-object v2, Lcom/inveno/newpiflow/channel/ChannelBiz;->channelModelList:Ljava/util/ArrayList;

    new-instance v3, Lcom/inveno/newpiflow/channel/ChannelModel;

    sget-object v4, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_04_NAME:Ljava/lang/String;

    sget-object v5, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_04_ID:Ljava/lang/String;

    const v6, 0x7f020244

    invoke-direct {v3, v4, v5, v6}, Lcom/inveno/newpiflow/channel/ChannelModel;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    sget-object v2, Lcom/inveno/newpiflow/channel/ChannelBiz;->channelModelList:Ljava/util/ArrayList;

    new-instance v3, Lcom/inveno/newpiflow/channel/ChannelModel;

    sget-object v4, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_05_NAME:Ljava/lang/String;

    sget-object v5, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_05_ID:Ljava/lang/String;

    const v6, 0x7f020223

    invoke-direct {v3, v4, v5, v6}, Lcom/inveno/newpiflow/channel/ChannelModel;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    sget-object v2, Lcom/inveno/newpiflow/channel/ChannelBiz;->channelModelList:Ljava/util/ArrayList;

    new-instance v3, Lcom/inveno/newpiflow/channel/ChannelModel;

    sget-object v4, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_06_NAME:Ljava/lang/String;

    sget-object v5, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_06_ID:Ljava/lang/String;

    const v6, 0x7f020242

    invoke-direct {v3, v4, v5, v6}, Lcom/inveno/newpiflow/channel/ChannelModel;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    sget-object v2, Lcom/inveno/newpiflow/channel/ChannelBiz;->channelModelList:Ljava/util/ArrayList;

    new-instance v3, Lcom/inveno/newpiflow/channel/ChannelModel;

    sget-object v4, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_07_NAME:Ljava/lang/String;

    sget-object v5, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_07_ID:Ljava/lang/String;

    const v6, 0x7f020218

    invoke-direct {v3, v4, v5, v6}, Lcom/inveno/newpiflow/channel/ChannelModel;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    sget-object v2, Lcom/inveno/newpiflow/channel/ChannelBiz;->channelModelList:Ljava/util/ArrayList;

    new-instance v3, Lcom/inveno/newpiflow/channel/ChannelModel;

    sget-object v4, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_08_NAME:Ljava/lang/String;

    sget-object v5, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_08_ID:Ljava/lang/String;

    const v6, 0x7f020250

    invoke-direct {v3, v4, v5, v6}, Lcom/inveno/newpiflow/channel/ChannelModel;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    sget-object v2, Lcom/inveno/newpiflow/channel/ChannelBiz;->channelModelList:Ljava/util/ArrayList;

    new-instance v3, Lcom/inveno/newpiflow/channel/ChannelModel;

    sget-object v4, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_09_NAME:Ljava/lang/String;

    sget-object v5, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_09_ID:Ljava/lang/String;

    const v6, 0x7f0201bd

    invoke-direct {v3, v4, v5, v6}, Lcom/inveno/newpiflow/channel/ChannelModel;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    sget-object v2, Lcom/inveno/newpiflow/channel/ChannelBiz;->channelModelList:Ljava/util/ArrayList;

    new-instance v3, Lcom/inveno/newpiflow/channel/ChannelModel;

    sget-object v4, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_10_NAME:Ljava/lang/String;

    sget-object v5, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_10_ID:Ljava/lang/String;

    const v6, 0x7f0201c6

    invoke-direct {v3, v4, v5, v6}, Lcom/inveno/newpiflow/channel/ChannelModel;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    sget-object v2, Lcom/inveno/newpiflow/channel/ChannelBiz;->channelModelList:Ljava/util/ArrayList;

    new-instance v3, Lcom/inveno/newpiflow/channel/ChannelModel;

    sget-object v4, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_11_NAME:Ljava/lang/String;

    sget-object v5, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_11_ID:Ljava/lang/String;

    const v6, 0x7f020252

    invoke-direct {v3, v4, v5, v6}, Lcom/inveno/newpiflow/channel/ChannelModel;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    sget-object v2, Lcom/inveno/newpiflow/channel/ChannelBiz;->channelModelList:Ljava/util/ArrayList;

    new-instance v3, Lcom/inveno/newpiflow/channel/ChannelModel;

    sget-object v4, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_12_NAME:Ljava/lang/String;

    sget-object v5, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_12_ID:Ljava/lang/String;

    const v6, 0x7f020235

    invoke-direct {v3, v4, v5, v6}, Lcom/inveno/newpiflow/channel/ChannelModel;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    sget-object v2, Lcom/inveno/newpiflow/channel/ChannelBiz;->channelModelList:Ljava/util/ArrayList;

    new-instance v3, Lcom/inveno/newpiflow/channel/ChannelModel;

    sget-object v4, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_13_NAME:Ljava/lang/String;

    sget-object v5, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_13_ID:Ljava/lang/String;

    const v6, 0x7f0201b9

    invoke-direct {v3, v4, v5, v6}, Lcom/inveno/newpiflow/channel/ChannelModel;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    sget-object v2, Lcom/inveno/newpiflow/channel/ChannelBiz;->channelModelList:Ljava/util/ArrayList;

    new-instance v3, Lcom/inveno/newpiflow/channel/ChannelModel;

    sget-object v4, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_14_NAME:Ljava/lang/String;

    sget-object v5, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_14_ID:Ljava/lang/String;

    const v6, 0x7f0201b4

    invoke-direct {v3, v4, v5, v6}, Lcom/inveno/newpiflow/channel/ChannelModel;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    sget-object v2, Lcom/inveno/newpiflow/channel/ChannelBiz;->channelModelList:Ljava/util/ArrayList;

    new-instance v3, Lcom/inveno/newpiflow/channel/ChannelModel;

    sget-object v4, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_15_NAME:Ljava/lang/String;

    sget-object v5, Lcom/inveno/newpiflow/channel/ChannelBiz;->TYPE_15_ID:Ljava/lang/String;

    const v6, 0x7f020240

    invoke-direct {v3, v4, v5, v6}, Lcom/inveno/newpiflow/channel/ChannelModel;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    .end local v0           #channel0:Lcom/inveno/newpiflow/channel/ChannelModel;
    .end local v1           #rs:Landroid/content/res/Resources;
    :cond_0
    return-void
.end method

.method public static saveType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "typeName"
    .parameter "typeId"

    .prologue
    .line 167
    sput-object p1, Lcom/inveno/newpiflow/channel/ChannelBiz;->nowTypeName:Ljava/lang/String;

    .line 169
    sput-object p2, Lcom/inveno/newpiflow/channel/ChannelBiz;->nowTypeId:Ljava/lang/String;

    .line 171
    const-string v0, "TYPE_NAME_SHARE_KEY"

    invoke-static {v0, p1, p0}, Lcom/inveno/newpiflow/channel/Tools;->setInformain(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 173
    const-string v0, "TYPE_ID_SHARE_KEY"

    invoke-static {v0, p2, p0}, Lcom/inveno/newpiflow/channel/Tools;->setInformain(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 175
    return-void
.end method
