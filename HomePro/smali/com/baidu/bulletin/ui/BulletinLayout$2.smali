.class Lcom/baidu/bulletin/ui/BulletinLayout$2;
.super Ljava/lang/Object;
.source "BulletinLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/ui/BulletinLayout;->initStartButton(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/ui/BulletinLayout;

.field final synthetic val$startButton:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/ui/BulletinLayout;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 383
    iput-object p1, p0, Lcom/baidu/bulletin/ui/BulletinLayout$2;->this$0:Lcom/baidu/bulletin/ui/BulletinLayout;

    iput-object p2, p0, Lcom/baidu/bulletin/ui/BulletinLayout$2;->val$startButton:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 386
    sput-boolean v1, Lcom/baidu/launcher/app/LauncherApplication;->appRebooting:Z

    .line 387
    iget-object v0, p0, Lcom/baidu/bulletin/ui/BulletinLayout$2;->this$0:Lcom/baidu/bulletin/ui/BulletinLayout;

    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/BulletinLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/newpiflow/tools/AdUtil;->setUsedFlag(Landroid/content/Context;)V

    .line 388
    iget-object v0, p0, Lcom/baidu/bulletin/ui/BulletinLayout$2;->this$0:Lcom/baidu/bulletin/ui/BulletinLayout;

    #getter for: Lcom/baidu/bulletin/ui/BulletinLayout;->mBulletinView:Lcom/inveno/newpiflow/widget/PiMainView;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/BulletinLayout;->access$000(Lcom/baidu/bulletin/ui/BulletinLayout;)Lcom/inveno/newpiflow/widget/PiMainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/newpiflow/widget/PiMainView;->getScrollView()Lcom/inveno/newpiflow/widget/PiScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/newpiflow/widget/PiScrollView;->initTasks()V

    .line 389
    iget-object v0, p0, Lcom/baidu/bulletin/ui/BulletinLayout$2;->this$0:Lcom/baidu/bulletin/ui/BulletinLayout;

    #getter for: Lcom/baidu/bulletin/ui/BulletinLayout;->mBulletinView:Lcom/inveno/newpiflow/widget/PiMainView;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/BulletinLayout;->access$000(Lcom/baidu/bulletin/ui/BulletinLayout;)Lcom/inveno/newpiflow/widget/PiMainView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/inveno/newpiflow/widget/PiMainView;->setVisibility(I)V

    .line 390
    iget-object v0, p0, Lcom/baidu/bulletin/ui/BulletinLayout$2;->this$0:Lcom/baidu/bulletin/ui/BulletinLayout;

    #getter for: Lcom/baidu/bulletin/ui/BulletinLayout;->mBulletinView:Lcom/inveno/newpiflow/widget/PiMainView;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/BulletinLayout;->access$000(Lcom/baidu/bulletin/ui/BulletinLayout;)Lcom/inveno/newpiflow/widget/PiMainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/newpiflow/widget/PiMainView;->getScrollView()Lcom/inveno/newpiflow/widget/PiScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/newpiflow/widget/PiScrollView;->refreshData()V

    .line 391
    iget-object v0, p0, Lcom/baidu/bulletin/ui/BulletinLayout$2;->this$0:Lcom/baidu/bulletin/ui/BulletinLayout;

    #getter for: Lcom/baidu/bulletin/ui/BulletinLayout;->mGuideView:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/BulletinLayout;->access$100(Lcom/baidu/bulletin/ui/BulletinLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 392
    iget-object v0, p0, Lcom/baidu/bulletin/ui/BulletinLayout$2;->val$startButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 393
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/UIController;->getUIController()Lcom/baidu/bulletin/ui/logic/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/logic/UIController;->onRefresh()Z

    move-result v0

    if-nez v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/baidu/bulletin/ui/BulletinLayout$2;->val$startButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 396
    :cond_0
    invoke-static {}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->saveGuideShown()V

    .line 397
    return-void
.end method
