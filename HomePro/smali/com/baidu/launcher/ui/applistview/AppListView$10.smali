.class Lcom/baidu/launcher/ui/applistview/AppListView$10;
.super Ljava/lang/Object;
.source "AppListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/applistview/AppListView;->doSort()V
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
    .line 1397
    iput-object p1, p0, Lcom/baidu/launcher/ui/applistview/AppListView$10;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1403
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView$10;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/applistview/AppListView;->onSortChange()V

    .line 1405
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView$10;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    #getter for: Lcom/baidu/launcher/ui/applistview/AppListView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/baidu/launcher/ui/applistview/AppListView;->access$700(Lcom/baidu/launcher/ui/applistview/AppListView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1407
    .local v0, pref:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 1408
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "SORT"

    sget v3, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->sortType:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1412
    :cond_0
    return-void
.end method
