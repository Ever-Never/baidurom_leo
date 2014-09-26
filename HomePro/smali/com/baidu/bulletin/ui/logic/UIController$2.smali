.class Lcom/baidu/bulletin/ui/logic/UIController$2;
.super Ljava/lang/Object;
.source "UIController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/ui/logic/UIController;->onUploadClicked(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/ui/logic/UIController;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/ui/logic/UIController;)V
    .locals 0
    .parameter

    .prologue
    .line 547
    iput-object p1, p0, Lcom/baidu/bulletin/ui/logic/UIController$2;->this$0:Lcom/baidu/bulletin/ui/logic/UIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 550
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController$2;->this$0:Lcom/baidu/bulletin/ui/logic/UIController;

    #getter for: Lcom/baidu/bulletin/ui/logic/UIController;->mLauncher:Lcom/baidu/launcher/app/Launcher;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/logic/UIController;->access$200(Lcom/baidu/bulletin/ui/logic/UIController;)Lcom/baidu/launcher/app/Launcher;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/app/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 551
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 552
    return-void
.end method
