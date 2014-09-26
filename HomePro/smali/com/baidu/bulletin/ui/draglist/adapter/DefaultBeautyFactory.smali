.class public Lcom/baidu/bulletin/ui/draglist/adapter/DefaultBeautyFactory;
.super Ljava/lang/Object;
.source "DefaultBeautyFactory.java"

# interfaces
.implements Lcom/baidu/bulletin/ui/draglist/adapter/IBeautyFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createBeauty(I)Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty;
    .locals 1
    .parameter "topicId"

    .prologue
    .line 9
    const/4 v0, 0x0

    .line 10
    .local v0, beauty:Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty;
    sparse-switch p1, :sswitch_data_0

    .line 27
    new-instance v0, Lcom/baidu/bulletin/ui/draglist/adapter/NewsBeaty;

    .end local v0           #beauty:Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty;
    invoke-direct {v0}, Lcom/baidu/bulletin/ui/draglist/adapter/NewsBeaty;-><init>()V

    .line 31
    .restart local v0       #beauty:Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty;
    :goto_0
    return-object v0

    .line 13
    :sswitch_0
    new-instance v0, Lcom/baidu/bulletin/ui/draglist/adapter/MusicBeauty;

    .end local v0           #beauty:Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty;
    invoke-direct {v0}, Lcom/baidu/bulletin/ui/draglist/adapter/MusicBeauty;-><init>()V

    .line 14
    .restart local v0       #beauty:Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty;
    goto :goto_0

    .line 16
    :sswitch_1
    new-instance v0, Lcom/baidu/bulletin/ui/draglist/adapter/AppBeauty;

    .end local v0           #beauty:Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty;
    invoke-direct {v0}, Lcom/baidu/bulletin/ui/draglist/adapter/AppBeauty;-><init>()V

    .line 17
    .restart local v0       #beauty:Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty;
    goto :goto_0

    .line 23
    :sswitch_2
    new-instance v0, Lcom/baidu/bulletin/ui/draglist/adapter/BeatifulGirlBeauty;

    .end local v0           #beauty:Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty;
    invoke-direct {v0}, Lcom/baidu/bulletin/ui/draglist/adapter/BeatifulGirlBeauty;-><init>()V

    .line 24
    .restart local v0       #beauty:Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty;
    goto :goto_0

    .line 10
    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_1
        0x7d0 -> :sswitch_0
        0xbb9 -> :sswitch_2
        0xbba -> :sswitch_2
        0xbbb -> :sswitch_2
        0xbbc -> :sswitch_2
    .end sparse-switch
.end method
