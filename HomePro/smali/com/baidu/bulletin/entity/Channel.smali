.class public Lcom/baidu/bulletin/entity/Channel;
.super Ljava/lang/Object;
.source "Channel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/entity/Channel$Version;,
        Lcom/baidu/bulletin/entity/Channel$Id;
    }
.end annotation


# instance fields
.field public id:Ljava/lang/String;

.field public version:Lcom/baidu/bulletin/entity/Channel$Version;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/bulletin/entity/Channel;->id:Ljava/lang/String;

    .line 42
    new-instance v0, Lcom/baidu/bulletin/entity/Channel$Version;

    invoke-direct {v0}, Lcom/baidu/bulletin/entity/Channel$Version;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/entity/Channel;->version:Lcom/baidu/bulletin/entity/Channel$Version;

    .line 44
    return-void
.end method
