.class public Lcom/baidu/bulletin/network/protocol/RawMusicChannel$RawMusicChannelItem;
.super Ljava/lang/Object;
.source "RawMusicChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/network/protocol/RawMusicChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RawMusicChannelItem"
.end annotation


# instance fields
.field public brief:Ljava/lang/String;

.field public content:Ljava/lang/String;

.field public id:J

.field public img:Ljava/lang/String;

.field public imgHeight:I

.field public imgWidth:I

.field public time:J

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
