.class public Lcom/baidu/bulletin/network/protocol/RawOpChannel$RawOpChannelItem;
.super Ljava/lang/Object;
.source "RawOpChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/network/protocol/RawOpChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RawOpChannelItem"
.end annotation


# instance fields
.field public id:J

.field public imageHeight:I

.field public imageUrl:Ljava/lang/String;

.field public imageWidth:I

.field public packageName:Ljava/lang/String;

.field public prority:I

.field public showUrl:Ljava/lang/String;

.field public text:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
