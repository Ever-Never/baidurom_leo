.class Lcom/baidu/bulletin/ui/BulletinLayout$4;
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
    .line 664
    iput-object p1, p0, Lcom/baidu/bulletin/ui/BulletinLayout$4;->this$0:Lcom/baidu/bulletin/ui/BulletinLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 667
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/UIController;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 668
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/UIController;->getUIController()Lcom/baidu/bulletin/ui/logic/UIController;

    move-result-object v0

    .line 669
    .local v0, uiController:Lcom/baidu/bulletin/ui/logic/UIController;
    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/logic/UIController;->onRefresh()Z

    .line 671
    .end local v0           #uiController:Lcom/baidu/bulletin/ui/logic/UIController;
    :cond_0
    return-void
.end method
