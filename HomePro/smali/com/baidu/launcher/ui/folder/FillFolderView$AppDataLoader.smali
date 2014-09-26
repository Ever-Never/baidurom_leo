.class Lcom/baidu/launcher/ui/folder/FillFolderView$AppDataLoader;
.super Landroid/os/AsyncTask;
.source "FillFolderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/folder/FillFolderView;
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
.field final synthetic this$0:Lcom/baidu/launcher/ui/folder/FillFolderView;


# direct methods
.method private constructor <init>(Lcom/baidu/launcher/ui/folder/FillFolderView;)V
    .locals 0
    .parameter

    .prologue
    .line 433
    iput-object p1, p0, Lcom/baidu/launcher/ui/folder/FillFolderView$AppDataLoader;->this$0:Lcom/baidu/launcher/ui/folder/FillFolderView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/launcher/ui/folder/FillFolderView;Lcom/baidu/launcher/ui/folder/FillFolderView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 433
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/folder/FillFolderView$AppDataLoader;-><init>(Lcom/baidu/launcher/ui/folder/FillFolderView;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 433
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/folder/FillFolderView$AppDataLoader;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

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
    .line 436
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FillFolderView$AppDataLoader;->this$0:Lcom/baidu/launcher/ui/folder/FillFolderView;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/folder/FillFolderView;->getContext()Landroid/content/Context;

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
    .line 433
    check-cast p1, Ljava/util/ArrayList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/folder/FillFolderView$AppDataLoader;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 6
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
    .line 441
    .local p1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 442
    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/FillFolderView$AppDataLoader;->this$0:Lcom/baidu/launcher/ui/folder/FillFolderView;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/folder/FillFolderView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 443
    .local v0, container:Landroid/view/ViewGroup;
    const v2, 0x7f080196

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 444
    .local v1, progressBar:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 445
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 447
    :cond_0
    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/FillFolderView$AppDataLoader;->this$0:Lcom/baidu/launcher/ui/folder/FillFolderView;

    iget-object v3, p0, Lcom/baidu/launcher/ui/folder/FillFolderView$AppDataLoader;->this$0:Lcom/baidu/launcher/ui/folder/FillFolderView;

    #getter for: Lcom/baidu/launcher/ui/folder/FillFolderView;->mInitItems:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/baidu/launcher/ui/folder/FillFolderView;->access$100(Lcom/baidu/launcher/ui/folder/FillFolderView;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/launcher/ui/folder/FillFolderView$AppDataLoader;->this$0:Lcom/baidu/launcher/ui/folder/FillFolderView;

    #getter for: Lcom/baidu/launcher/ui/folder/FillFolderView;->mFolderType:I
    invoke-static {v4}, Lcom/baidu/launcher/ui/folder/FillFolderView;->access$200(Lcom/baidu/launcher/ui/folder/FillFolderView;)I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/baidu/launcher/ui/folder/FillFolderView;->updateApps(Ljava/util/ArrayList;IZ)V

    .line 448
    return-void
.end method
