.class public Lcom/baidu/bulletin/network/protocol/RawNativePage$Response;
.super Ljava/lang/Object;
.source "RawNativePage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/network/protocol/RawNativePage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation


# instance fields
.field public owner:Lcom/baidu/bulletin/entity/ChannelItem;

.field public page:Lcom/baidu/bulletin/network/protocol/RawNativePage$Page;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
