.class public Lcom/baidu/bulletin/network/protocol/RawAppDetail$RawAppDetailItems;
.super Ljava/lang/Object;
.source "RawAppDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/network/protocol/RawAppDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RawAppDetailItems"
.end annotation


# instance fields
.field public docId:J

.field public downloadCount:Ljava/lang/String;

.field public icon:Ljava/lang/String;

.field public iconHigh:Ljava/lang/String;

.field public iconLow:Ljava/lang/String;

.field public id:J

.field public packageName:Ljava/lang/String;

.field public score:J

.field public size:J

.field public text:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
