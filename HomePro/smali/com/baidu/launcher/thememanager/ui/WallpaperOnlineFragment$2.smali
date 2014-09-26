.class Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$2;
.super Ljava/lang/Object;
.source "WallpaperOnlineFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$2;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "absListView"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 104
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .parameter "absListView"
    .parameter "scrollState"

    .prologue
    .line 94
    if-eqz p2, :cond_0

    .line 95
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$2;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->mImageFetcher:Lcom/baidu/launcher/thememanager/util/ImageFetcher;
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->access$100(Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;)Lcom/baidu/launcher/thememanager/util/ImageFetcher;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->setPauseWork(Z)V

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$2;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->mImageFetcher:Lcom/baidu/launcher/thememanager/util/ImageFetcher;
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->access$100(Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;)Lcom/baidu/launcher/thememanager/util/ImageFetcher;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->setPauseWork(Z)V

    goto :goto_0
.end method
