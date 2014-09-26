.class public Lcom/baidu/bulletin/entity/ChannelItem$OfflineTask;
.super Ljava/lang/Object;
.source "ChannelItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/entity/ChannelItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OfflineTask"
.end annotation


# instance fields
.field public start:J

.field final synthetic this$0:Lcom/baidu/bulletin/entity/ChannelItem;

.field public waitSec:I


# direct methods
.method public constructor <init>(Lcom/baidu/bulletin/entity/ChannelItem;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/baidu/bulletin/entity/ChannelItem$OfflineTask;->this$0:Lcom/baidu/bulletin/entity/ChannelItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/baidu/bulletin/entity/ChannelItem;JI)V
    .locals 0
    .parameter
    .parameter "start"
    .parameter "waitSec"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/baidu/bulletin/entity/ChannelItem$OfflineTask;->this$0:Lcom/baidu/bulletin/entity/ChannelItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-wide p2, p0, Lcom/baidu/bulletin/entity/ChannelItem$OfflineTask;->start:J

    .line 36
    iput p4, p0, Lcom/baidu/bulletin/entity/ChannelItem$OfflineTask;->waitSec:I

    .line 37
    return-void
.end method
