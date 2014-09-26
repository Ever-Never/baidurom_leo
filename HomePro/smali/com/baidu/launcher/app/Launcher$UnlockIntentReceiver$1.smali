.class Lcom/baidu/launcher/app/Launcher$UnlockIntentReceiver$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/app/Launcher$UnlockIntentReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/launcher/app/Launcher$UnlockIntentReceiver;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/app/Launcher$UnlockIntentReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 1662
    iput-object p1, p0, Lcom/baidu/launcher/app/Launcher$UnlockIntentReceiver$1;->this$1:Lcom/baidu/launcher/app/Launcher$UnlockIntentReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1665
    invoke-static {}, Lcom/baidu/launcher/utils/Utilities;->getCurrentDay()I

    move-result v0

    .line 1666
    .local v0, day:I
    iget-object v1, p0, Lcom/baidu/launcher/app/Launcher$UnlockIntentReceiver$1;->this$1:Lcom/baidu/launcher/app/Launcher$UnlockIntentReceiver;

    iget-object v1, v1, Lcom/baidu/launcher/app/Launcher$UnlockIntentReceiver;->this$0:Lcom/baidu/launcher/app/Launcher;

    #calls: Lcom/baidu/launcher/app/Launcher;->updateCalendarIcon(I)V
    invoke-static {v1, v0}, Lcom/baidu/launcher/app/Launcher;->access$1000(Lcom/baidu/launcher/app/Launcher;I)V

    .line 1667
    return-void
.end method
