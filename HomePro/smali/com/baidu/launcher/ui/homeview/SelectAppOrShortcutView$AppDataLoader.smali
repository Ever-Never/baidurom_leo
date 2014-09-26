.class Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView$AppDataLoader;
.super Landroid/os/AsyncTask;
.source "SelectAppOrShortcutView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppDataLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/baidu/launcher/data/item/ListAppInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;


# direct methods
.method private constructor <init>(Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;)V
    .locals 0
    .parameter

    .prologue
    .line 545
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView$AppDataLoader;->this$0:Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 545
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView$AppDataLoader;-><init>(Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 545
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView$AppDataLoader;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 1
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/ListAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 548
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView$AppDataLoader;->this$0:Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/data/AppsDataManager;->getAllApps()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 545
    check-cast p1, Ljava/util/ArrayList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView$AppDataLoader;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/ListAppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 553
    .local p1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 554
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView$AppDataLoader;->this$0:Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 555
    .local v0, container:Landroid/view/ViewGroup;
    const v2, 0x7f080196

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 556
    .local v1, progressBar:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 557
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 559
    :cond_0
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView$AppDataLoader;->this$0:Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;

    sget v3, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->SELECT_APP:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->updateApps(IZ)V

    .line 560
    return-void
.end method
