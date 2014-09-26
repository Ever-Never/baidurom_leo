.class public Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceItem;
.super Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$BaseItem;
.source "AppRunningState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceItem"
.end annotation


# instance fields
.field public mMergedItem:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;

.field public mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

.field public mServiceInfo:Landroid/content/pm/ServiceInfo;

.field public mShownAsStarted:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$BaseItem;-><init>(Z)V

    .line 152
    return-void
.end method
