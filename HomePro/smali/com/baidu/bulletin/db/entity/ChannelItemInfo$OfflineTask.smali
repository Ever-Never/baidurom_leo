.class public Lcom/baidu/bulletin/db/entity/ChannelItemInfo$OfflineTask;
.super Ljava/lang/Object;
.source "ChannelItemInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OfflineTask"
.end annotation


# instance fields
.field public start:J

.field final synthetic this$0:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

.field public waitSec:I


# direct methods
.method public constructor <init>(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo$OfflineTask;->this$0:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;JI)V
    .locals 0
    .parameter
    .parameter "start"
    .parameter "waitSec"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo$OfflineTask;->this$0:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-wide p2, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo$OfflineTask;->start:J

    .line 62
    iput p4, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo$OfflineTask;->waitSec:I

    .line 63
    return-void
.end method
