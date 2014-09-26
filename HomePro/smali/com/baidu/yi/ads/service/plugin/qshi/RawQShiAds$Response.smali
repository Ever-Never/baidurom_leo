.class public Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Response;
.super Lcom/baidu/yi/ads/service/plugin/Raw$RawResponse;
.source "RawQShiAds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation


# instance fields
.field public entity:Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Entity;

.field public id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/baidu/yi/ads/service/plugin/Raw$RawResponse;-><init>()V

    return-void
.end method
