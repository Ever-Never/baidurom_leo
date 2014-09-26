.class public Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$BulletinOpChannelItem;
.super Ljava/lang/Object;
.source "RawBulletinOpChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BulletinOpChannelItem"
.end annotation


# instance fields
.field public abs:Ljava/lang/String;

.field public createTime:Ljava/lang/String;

.field public endTime:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public imageUrl:Ljava/lang/String;

.field public imgHeight:Ljava/lang/String;

.field public imgWidth:Ljava/lang/String;

.field public publishTime:Ljava/lang/String;

.field public startTime:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
