.class Lcom/baidu/yi/ads/service/network/ProtocolPackager$2;
.super Lcom/baidu/yi/ads/service/http/HttpTask;
.source "ProtocolPackager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/yi/ads/service/network/ProtocolPackager;->sendAdsNotice(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/yi/ads/service/network/ProtocolPackager;


# direct methods
.method constructor <init>(Lcom/baidu/yi/ads/service/network/ProtocolPackager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/baidu/yi/ads/service/network/ProtocolPackager$2;->this$0:Lcom/baidu/yi/ads/service/network/ProtocolPackager;

    .line 41
    invoke-direct {p0}, Lcom/baidu/yi/ads/service/http/HttpTask;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressed()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method
