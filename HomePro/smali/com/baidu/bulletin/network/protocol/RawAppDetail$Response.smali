.class public Lcom/baidu/bulletin/network/protocol/RawAppDetail$Response;
.super Ljava/lang/Object;
.source "RawAppDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/network/protocol/RawAppDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation


# instance fields
.field public callback:Lcom/baidu/bulletin/RequestCallback$ApplistCallback;

.field public channelItemId:J

.field public content:[Lcom/baidu/bulletin/network/protocol/RawAppDetail$RawAppDetailItems;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
