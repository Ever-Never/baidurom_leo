.class Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$AppProcessInfo;
.super Ljava/lang/Object;
.source "AppRunningState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppProcessInfo"
.end annotation


# instance fields
.field hasForegroundServices:Z

.field hasServices:Z

.field final info:Landroid/app/ActivityManager$RunningAppProcessInfo;


# direct methods
.method constructor <init>(Landroid/app/ActivityManager$RunningAppProcessInfo;)V
    .locals 0
    .parameter "_info"

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 92
    return-void
.end method
