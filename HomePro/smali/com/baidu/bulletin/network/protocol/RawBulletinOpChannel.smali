.class public Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel;
.super Ljava/lang/Object;
.source "RawBulletinOpChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$BulletinOpChannelItem;,
        Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$RawBulletinOpChannelItem;,
        Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$Response;,
        Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$Request;
    }
.end annotation


# static fields
.field public static final DIRECTION:I = 0x1

.field public static final MAX:I = 0x1

.field public static final VERSION:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method
