.class Lcom/baidu/bulletin/ui/BulletinLayout$3;
.super Ljava/lang/Object;
.source "BulletinLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/ui/BulletinLayout;->initEmptyButton(Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/ui/BulletinLayout;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/ui/BulletinLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 643
    iput-object p1, p0, Lcom/baidu/bulletin/ui/BulletinLayout$3;->this$0:Lcom/baidu/bulletin/ui/BulletinLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 646
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/UIController;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 647
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/UIController;->getUIController()Lcom/baidu/bulletin/ui/logic/UIController;

    move-result-object v0

    .line 648
    .local v0, uiController:Lcom/baidu/bulletin/ui/logic/UIController;
    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/logic/UIController;->isInAnimation()Z

    move-result v1

    if-nez v1, :cond_0

    .line 649
    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/logic/UIController;->initSettings()V

    .line 650
    iget-object v1, p0, Lcom/baidu/bulletin/ui/BulletinLayout$3;->this$0:Lcom/baidu/bulletin/ui/BulletinLayout;

    invoke-virtual {v1}, Lcom/baidu/bulletin/ui/BulletinLayout;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/baidu/bulletin/ui/BulletinLayout$3$1;

    invoke-direct {v2, p0, v0}, Lcom/baidu/bulletin/ui/BulletinLayout$3$1;-><init>(Lcom/baidu/bulletin/ui/BulletinLayout$3;Lcom/baidu/bulletin/ui/logic/UIController;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 658
    .end local v0           #uiController:Lcom/baidu/bulletin/ui/logic/UIController;
    :cond_0
    return-void
.end method
