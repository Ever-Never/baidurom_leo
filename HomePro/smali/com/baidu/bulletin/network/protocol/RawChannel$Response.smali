.class public Lcom/baidu/bulletin/network/protocol/RawChannel$Response;
.super Ljava/lang/Object;
.source "RawChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/network/protocol/RawChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation


# instance fields
.field public id:Ljava/lang/String;

.field public items:[Lcom/baidu/bulletin/network/protocol/RawChannelItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
