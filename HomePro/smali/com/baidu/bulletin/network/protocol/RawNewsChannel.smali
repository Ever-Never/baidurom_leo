.class public Lcom/baidu/bulletin/network/protocol/RawNewsChannel;
.super Ljava/lang/Object;
.source "RawNewsChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/network/protocol/RawNewsChannel$NewsChannelItem;,
        Lcom/baidu/bulletin/network/protocol/RawNewsChannel$RawNewsChannelItem;,
        Lcom/baidu/bulletin/network/protocol/RawNewsChannel$Response;,
        Lcom/baidu/bulletin/network/protocol/RawNewsChannel$Request;
    }
.end annotation


# static fields
.field public static final NEWDIRECTION:I = 0x1

.field public static final OLDDIRECTION:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method
