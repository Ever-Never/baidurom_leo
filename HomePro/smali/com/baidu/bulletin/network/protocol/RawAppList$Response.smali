.class public Lcom/baidu/bulletin/network/protocol/RawAppList$Response;
.super Ljava/lang/Object;
.source "RawAppList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/network/protocol/RawAppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation


# instance fields
.field public owner:Lcom/baidu/bulletin/entity/ChannelItem;

.field public page:Lcom/baidu/bulletin/network/protocol/RawAppList$Page;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
