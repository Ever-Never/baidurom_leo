.class public Lcom/baidu/bulletin/network/protocol/RawOpChannel$Request;
.super Ljava/lang/Object;
.source "RawOpChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/network/protocol/RawOpChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation


# instance fields
.field public appName:Ljava/lang/String;

.field public callback:Lcom/baidu/bulletin/RequestCallback$OpInfoCallback;

.field public cuid:Ljava/lang/String;

.field public opTopic:Lcom/baidu/bulletin/network/protocol/RawOpChannel$RawOpTopic;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method