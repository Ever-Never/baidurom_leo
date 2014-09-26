.class public Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$Response;
.super Ljava/lang/Object;
.source "RawBulletinOpChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation


# instance fields
.field public callback:Lcom/baidu/bulletin/RequestCallback$BulletinOpInfoCallback;

.field public item:Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$RawBulletinOpChannelItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
