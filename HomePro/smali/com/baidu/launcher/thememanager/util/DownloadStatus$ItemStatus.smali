.class public Lcom/baidu/launcher/thememanager/util/DownloadStatus$ItemStatus;
.super Ljava/lang/Object;
.source "DownloadStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/thememanager/util/DownloadStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemStatus"
.end annotation


# instance fields
.field public percent:I

.field public status:I

.field final synthetic this$0:Lcom/baidu/launcher/thememanager/util/DownloadStatus;


# direct methods
.method public constructor <init>(Lcom/baidu/launcher/thememanager/util/DownloadStatus;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/util/DownloadStatus$ItemStatus;->this$0:Lcom/baidu/launcher/thememanager/util/DownloadStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
