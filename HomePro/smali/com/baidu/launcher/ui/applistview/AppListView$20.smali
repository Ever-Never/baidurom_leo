.class Lcom/baidu/launcher/ui/applistview/AppListView$20;
.super Ljava/lang/Object;
.source "AppListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/applistview/AppListView;->onAppListDataChanged(Ljava/util/ArrayList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

.field final synthetic val$changes:Ljava/util/ArrayList;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/applistview/AppListView;ILjava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1747
    iput-object p1, p0, Lcom/baidu/launcher/ui/applistview/AppListView$20;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    iput p2, p0, Lcom/baidu/launcher/ui/applistview/AppListView$20;->val$type:I

    iput-object p3, p0, Lcom/baidu/launcher/ui/applistview/AppListView$20;->val$changes:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1751
    const-string v0, "Launcher.AppListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on app list data changed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/baidu/launcher/ui/applistview/AppListView$20;->val$type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1752
    sget v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListMode:I

    if-ne v0, v4, :cond_0

    .line 1753
    sput v3, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListMode:I

    .line 1754
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView$20;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    #getter for: Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;
    invoke-static {v0}, Lcom/baidu/launcher/ui/applistview/AppListView;->access$200(Lcom/baidu/launcher/ui/applistview/AppListView;)Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->saveAppVisibleState(Z)V

    .line 1756
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView$20;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    invoke-virtual {v0, v3}, Lcom/baidu/launcher/ui/applistview/AppListView;->clearCurrentChanges(Z)V

    .line 1758
    :cond_0
    iget v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView$20;->val$type:I

    packed-switch v0, :pswitch_data_0

    .line 1782
    :goto_0
    return-void

    .line 1760
    :pswitch_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView$20;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    #getter for: Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;
    invoke-static {v0}, Lcom/baidu/launcher/ui/applistview/AppListView;->access$200(Lcom/baidu/launcher/ui/applistview/AppListView;)Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView$20;->val$changes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->updatePresetAdded(Ljava/util/ArrayList;)V

    .line 1761
    sget v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->sortType:I

    if-eq v0, v5, :cond_1

    .line 1762
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView$20;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    #getter for: Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;
    invoke-static {v0}, Lcom/baidu/launcher/ui/applistview/AppListView;->access$200(Lcom/baidu/launcher/ui/applistview/AppListView;)Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getItems()Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView$20;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    #calls: Lcom/baidu/launcher/ui/applistview/AppListView;->getComparator()Ljava/util/Comparator;
    invoke-static {v1}, Lcom/baidu/launcher/ui/applistview/AppListView;->access$1100(Lcom/baidu/launcher/ui/applistview/AppListView;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1764
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView$20;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    #getter for: Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;
    invoke-static {v0}, Lcom/baidu/launcher/ui/applistview/AppListView;->access$200(Lcom/baidu/launcher/ui/applistview/AppListView;)Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->setCanSaveData(Z)V

    .line 1765
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView$20;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    #getter for: Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;
    invoke-static {v0}, Lcom/baidu/launcher/ui/applistview/AppListView;->access$200(Lcom/baidu/launcher/ui/applistview/AppListView;)Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->updateItemToDB()V

    .line 1766
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView$20;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/applistview/AppListView;->updateApps()V

    goto :goto_0

    .line 1770
    :pswitch_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView$20;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    #getter for: Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;
    invoke-static {v0}, Lcom/baidu/launcher/ui/applistview/AppListView;->access$200(Lcom/baidu/launcher/ui/applistview/AppListView;)Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView$20;->val$changes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->updatePresetRemoved(Ljava/util/ArrayList;)V

    .line 1771
    sget v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->sortType:I

    if-eq v0, v5, :cond_2

    .line 1772
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView$20;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    #getter for: Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;
    invoke-static {v0}, Lcom/baidu/launcher/ui/applistview/AppListView;->access$200(Lcom/baidu/launcher/ui/applistview/AppListView;)Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getItems()Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView$20;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    #calls: Lcom/baidu/launcher/ui/applistview/AppListView;->getComparator()Ljava/util/Comparator;
    invoke-static {v1}, Lcom/baidu/launcher/ui/applistview/AppListView;->access$1100(Lcom/baidu/launcher/ui/applistview/AppListView;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1774
    :cond_2
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView$20;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    #getter for: Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;
    invoke-static {v0}, Lcom/baidu/launcher/ui/applistview/AppListView;->access$200(Lcom/baidu/launcher/ui/applistview/AppListView;)Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->setCanSaveData(Z)V

    .line 1775
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView$20;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    #getter for: Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;
    invoke-static {v0}, Lcom/baidu/launcher/ui/applistview/AppListView;->access$200(Lcom/baidu/launcher/ui/applistview/AppListView;)Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->updateItemToDB()V

    .line 1776
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView$20;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/applistview/AppListView;->updateApps()V

    goto :goto_0

    .line 1779
    :pswitch_2
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView$20;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    #getter for: Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;
    invoke-static {v0}, Lcom/baidu/launcher/ui/applistview/AppListView;->access$200(Lcom/baidu/launcher/ui/applistview/AppListView;)Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView$20;->val$changes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->updateAppStatus(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1758
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
