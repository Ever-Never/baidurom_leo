.class public Lcom/baidu/bulletin/network/protocol/RawAppList$Request;
.super Ljava/lang/Object;
.source "RawAppList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/network/protocol/RawAppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation


# instance fields
.field public id:Ljava/lang/String;

.field public owner:Lcom/baidu/bulletin/entity/ChannelItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
