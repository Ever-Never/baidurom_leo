.class public Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;
.super Lcom/baidu/yi/ads/service/plugin/Raw$RawRequest;
.source "RawQShiAds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation


# instance fields
.field public act:Ljava/lang/String;

.field public appid:Ljava/lang/String;

.field public at:I

.field public bdr:Ljava/lang/String;

.field public brd:Ljava/lang/String;

.field public channelId:Ljava/lang/String;

.field public cid:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:I

.field public host:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public ip:Ljava/lang/String;

.field public n:I

.field public nop:Ljava/lang/String;

.field public os:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public sh:I

.field public sn:Ljava/lang/String;

.field public sw:I

.field public swi:I

.field public tab:I

.field public tp:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:I

.field public wi:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/baidu/yi/ads/service/plugin/Raw$RawRequest;-><init>()V

    return-void
.end method
