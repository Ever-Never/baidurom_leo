.class public Lcom/baidu/bulletin/network/protocol/RawAppChannel;
.super Ljava/lang/Object;
.source "RawAppChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/network/protocol/RawAppChannel$AppsChannelItem;,
        Lcom/baidu/bulletin/network/protocol/RawAppChannel$RawAppsChannleItem;,
        Lcom/baidu/bulletin/network/protocol/RawAppChannel$Response;,
        Lcom/baidu/bulletin/network/protocol/RawAppChannel$Request;
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

    .line 30
    return-void
.end method
