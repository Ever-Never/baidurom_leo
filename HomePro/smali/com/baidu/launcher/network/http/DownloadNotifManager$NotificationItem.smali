.class public Lcom/baidu/launcher/network/http/DownloadNotifManager$NotificationItem;
.super Ljava/lang/Object;
.source "DownloadNotifManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/network/http/DownloadNotifManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationItem"
.end annotation


# instance fields
.field public mIntent:Landroid/content/Intent;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/network/http/DownloadNotifManager$NotificationItem;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/network/http/DownloadNotifManager$NotificationItem;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/baidu/launcher/network/http/DownloadNotifManager$NotificationItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/baidu/launcher/network/http/DownloadNotifManager$NotificationItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/baidu/launcher/network/http/DownloadNotifManager$NotificationItem;->mTitle:Ljava/lang/String;

    return-object p1
.end method
