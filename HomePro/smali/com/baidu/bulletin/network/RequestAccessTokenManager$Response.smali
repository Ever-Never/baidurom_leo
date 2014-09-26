.class public Lcom/baidu/bulletin/network/RequestAccessTokenManager$Response;
.super Ljava/lang/Object;
.source "RequestAccessTokenManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/network/RequestAccessTokenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation


# instance fields
.field public channel:Lcom/baidu/bulletin/entity/ChannelItem;

.field public channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

.field public item:Lcom/baidu/bulletin/network/RequestAccessTokenManager$Item;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
