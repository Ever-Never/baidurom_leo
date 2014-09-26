.class public Lcom/baidu/bulletin/network/protocol/RawNewsDetail$Response;
.super Ljava/lang/Object;
.source "RawNewsDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/network/protocol/RawNewsDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation


# instance fields
.field public callback:Lcom/baidu/bulletin/RequestCallback$NewsDetailCallback;

.field public content:[Lcom/baidu/bulletin/network/protocol/RawNewsDetail$RawDetailItems;

.field public newsId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
