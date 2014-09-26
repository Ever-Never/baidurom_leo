.class public Lcom/baidu/bulletin/network/protocol/RawAppChannel$Response;
.super Ljava/lang/Object;
.source "RawAppChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/network/protocol/RawAppChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation


# instance fields
.field public appsChannelItem:Lcom/baidu/bulletin/network/protocol/RawAppChannel$RawAppsChannleItem;

.field public callback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

.field public topic:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
