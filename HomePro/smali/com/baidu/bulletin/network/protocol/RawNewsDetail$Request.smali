.class public Lcom/baidu/bulletin/network/protocol/RawNewsDetail$Request;
.super Ljava/lang/Object;
.source "RawNewsDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/network/protocol/RawNewsDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation


# instance fields
.field public appName:Ljava/lang/String;

.field public callback:Lcom/baidu/bulletin/RequestCallback$NewsDetailCallback;

.field public content:Ljava/lang/String;

.field public cuid:Ljava/lang/String;

.field public newsId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
