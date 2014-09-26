.class Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$DownloadStatusLoaderCallback;
.super Ljava/lang/Object;
.source "ThemeOnlineFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadStatusLoaderCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;


# direct methods
.method private constructor <init>(Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 561
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$DownloadStatusLoaderCallback;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 561
    invoke-direct {p0, p1}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$DownloadStatusLoaderCallback;-><init>(Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 7
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 566
    const/4 v0, 0x5

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "url"

    aput-object v0, v3, v2

    const-string v0, "status"

    aput-object v0, v3, v6

    const/4 v0, 0x2

    const-string v1, "dest"

    aput-object v1, v3, v0

    const/4 v0, 0x3

    const-string v1, "current_size"

    aput-object v1, v3, v0

    const/4 v0, 0x4

    const-string v1, "total_size"

    aput-object v1, v3, v0

    .line 574
    .local v3, projection:[Ljava/lang/String;
    const-string v4, "mime_type=?"

    .line 576
    .local v4, selection:Ljava/lang/String;
    new-array v5, v6, [Ljava/lang/String;

    const-string v0, "theme/ICON"

    aput-object v0, v5, v2

    .line 580
    .local v5, selectionArgs:[Ljava/lang/String;
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$DownloadStatusLoaderCallback;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    invoke-virtual {v1}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/baidu/launcher/utils/Constant;->DOWNLOAD_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 2
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 587
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    invoke-static {}, Lcom/baidu/launcher/thememanager/util/DownloadStatus;->getInstance()Lcom/baidu/launcher/thememanager/util/DownloadStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$DownloadStatusLoaderCallback;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    invoke-virtual {v1}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/baidu/launcher/thememanager/util/DownloadStatus;->resetDownloadState(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 588
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$DownloadStatusLoaderCallback;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->gridview_adapter:[Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->access$900(Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;)[Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$DownloadStatusLoaderCallback;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->current_tab:I
    invoke-static {v1}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->access$300(Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->notifyDataSetChanged()V

    .line 589
    const-string v0, "ThemeOnlineFragment"

    const-string v1, "DownloadStatusLoaderCallback finish"

    invoke-static {v0, v1}, Lcom/baidu/launcher/thememanager/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 561
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$DownloadStatusLoaderCallback;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 594
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method
