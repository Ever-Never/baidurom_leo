.class public final Lcom/baidu/launcher/utils/EventNumberUtil$EventNumberInfo;
.super Ljava/lang/Object;
.source "EventNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/utils/EventNumberUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventNumberInfo"
.end annotation


# instance fields
.field public mComponentName:Ljava/lang/String;

.field public mEventCount:I

.field public mIntent:Landroid/content/Intent;

.field public mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/launcher/utils/EventNumberUtil$EventNumberInfo;->mEventCount:I

    return-void
.end method
