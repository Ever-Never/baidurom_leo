.class public Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$Request;
.super Ljava/lang/Object;
.source "RawBulletinOpChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation


# instance fields
.field public callback:Lcom/baidu/bulletin/RequestCallback$BulletinOpInfoCallback;

.field public cuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
