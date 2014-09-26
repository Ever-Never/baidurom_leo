.class public Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$RawBulletinOpChannelItem;
.super Ljava/lang/Object;
.source "RawBulletinOpChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RawBulletinOpChannelItem"
.end annotation


# instance fields
.field public msg:Ljava/lang/String;

.field public operations:[Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$BulletinOpChannelItem;

.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
