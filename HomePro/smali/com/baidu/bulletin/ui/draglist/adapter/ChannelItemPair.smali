.class public Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;
.super Ljava/lang/Object;
.source "ChannelItemPair.java"


# instance fields
.field public channelItemInfoPair:[Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

.field public styleType:Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    iput-object v0, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;->channelItemInfoPair:[Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    .line 12
    return-void
.end method
