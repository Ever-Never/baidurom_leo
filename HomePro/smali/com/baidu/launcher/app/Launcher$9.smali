.class Lcom/baidu/launcher/app/Launcher$9;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/app/Launcher;->enterFullscreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/app/Launcher;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/app/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 1404
    iput-object p1, p0, Lcom/baidu/launcher/app/Launcher$9;->this$0:Lcom/baidu/launcher/app/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1407
    iget-object v0, p0, Lcom/baidu/launcher/app/Launcher$9;->this$0:Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v0}, Lcom/baidu/launcher/app/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1409
    return-void
.end method
