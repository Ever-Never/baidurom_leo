.class Lcom/baidu/launcher/app/LauncherApplication$1;
.super Ljava/lang/Object;
.source "LauncherApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/app/LauncherApplication;->initPreference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/app/LauncherApplication;

.field final synthetic val$firstRun:Z


# direct methods
.method constructor <init>(Lcom/baidu/launcher/app/LauncherApplication;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/baidu/launcher/app/LauncherApplication$1;->this$0:Lcom/baidu/launcher/app/LauncherApplication;

    iput-boolean p2, p0, Lcom/baidu/launcher/app/LauncherApplication$1;->val$firstRun:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/baidu/launcher/app/LauncherApplication$1;->this$0:Lcom/baidu/launcher/app/LauncherApplication;

    iget-boolean v1, p0, Lcom/baidu/launcher/app/LauncherApplication$1;->val$firstRun:Z

    #calls: Lcom/baidu/launcher/app/LauncherApplication;->setWallpaperDimension(Z)V
    invoke-static {v0, v1}, Lcom/baidu/launcher/app/LauncherApplication;->access$000(Lcom/baidu/launcher/app/LauncherApplication;Z)V

    .line 206
    return-void
.end method
