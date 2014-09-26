.class final Lcom/baidu/launcher/data/AppsDataManager$4;
.super Ljava/lang/Object;
.source "AppsDataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 247
    invoke-static {}, Lcom/baidu/launcher/data/AppsDataManager;->access$100()Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v0

    #calls: Lcom/baidu/launcher/data/AppsDataManager;->loadAllApps()V
    invoke-static {v0}, Lcom/baidu/launcher/data/AppsDataManager;->access$200(Lcom/baidu/launcher/data/AppsDataManager;)V

    .line 248
    return-void
.end method
