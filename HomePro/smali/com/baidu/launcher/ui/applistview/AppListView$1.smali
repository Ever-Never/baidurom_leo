.class Lcom/baidu/launcher/ui/applistview/AppListView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AppListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/applistview/AppListView;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/applistview/AppListView;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/applistview/AppListView;)V
    .locals 0
    .parameter

    .prologue
    .line 322
    iput-object p1, p0, Lcom/baidu/launcher/ui/applistview/AppListView$1;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6
    .parameter "animation"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 324
    sget v1, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListMode:I

    if-nez v1, :cond_1

    .line 325
    new-instance v0, Lcom/baidu/launcher/ui/logic/IBaseView$SwitchData;

    invoke-direct {v0}, Lcom/baidu/launcher/ui/logic/IBaseView$SwitchData;-><init>()V

    .line 326
    .local v0, switchData:Lcom/baidu/launcher/ui/logic/IBaseView$SwitchData;
    iput-boolean v3, v0, Lcom/baidu/launcher/ui/logic/IBaseView$SwitchData;->hideAnim:Z

    .line 327
    iput-boolean v3, v0, Lcom/baidu/launcher/ui/logic/IBaseView$SwitchData;->showAnim:Z

    .line 328
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView$1;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    #getter for: Lcom/baidu/launcher/ui/applistview/AppListView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;
    invoke-static {v1}, Lcom/baidu/launcher/ui/applistview/AppListView;->access$100(Lcom/baidu/launcher/ui/applistview/AppListView;)Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v1

    const v2, 0x7f08013a

    invoke-virtual {v1, v2, v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->switchView(ILcom/baidu/launcher/ui/logic/IBaseView$SwitchData;)V

    .line 340
    .end local v0           #switchData:Lcom/baidu/launcher/ui/logic/IBaseView$SwitchData;
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    sget v1, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 330
    sput v3, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListMode:I

    .line 331
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView$1;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/applistview/AppListView;->displayThumbnailGroup()V

    .line 332
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView$1;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/applistview/AppListView;->changeBindsForCustom()V

    .line 333
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView$1;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    #getter for: Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;
    invoke-static {v1}, Lcom/baidu/launcher/ui/applistview/AppListView;->access$200(Lcom/baidu/launcher/ui/applistview/AppListView;)Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->updateItemToDB()V

    .line 334
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView$1;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    #getter for: Lcom/baidu/launcher/ui/applistview/AppListView;->hideAppPanel:Landroid/view/View;
    invoke-static {v1}, Lcom/baidu/launcher/ui/applistview/AppListView;->access$300(Lcom/baidu/launcher/ui/applistview/AppListView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 335
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView$1;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    #getter for: Lcom/baidu/launcher/ui/applistview/AppListView;->customSortPanel:Landroid/view/View;
    invoke-static {v1}, Lcom/baidu/launcher/ui/applistview/AppListView;->access$400(Lcom/baidu/launcher/ui/applistview/AppListView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 336
    :cond_2
    sget v1, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListMode:I

    if-ne v1, v4, :cond_0

    .line 337
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView$1;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    invoke-virtual {v1, v3, v4}, Lcom/baidu/launcher/ui/applistview/AppListView;->closeHideApps(ZZ)V

    goto :goto_0
.end method
