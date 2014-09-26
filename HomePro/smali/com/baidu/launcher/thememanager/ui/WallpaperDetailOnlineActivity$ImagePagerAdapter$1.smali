.class Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$ImagePagerAdapter$1;
.super Ljava/lang/Object;
.source "WallpaperDetailOnlineActivity.java"

# interfaces
.implements Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$ImagePagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$ImagePagerAdapter;

.field final synthetic val$preview:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$ImagePagerAdapter;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 263
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$ImagePagerAdapter$1;->this$1:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$ImagePagerAdapter;

    iput-object p2, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$ImagePagerAdapter$1;->val$preview:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFinish()V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$ImagePagerAdapter$1;->val$preview:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 268
    return-void
.end method
