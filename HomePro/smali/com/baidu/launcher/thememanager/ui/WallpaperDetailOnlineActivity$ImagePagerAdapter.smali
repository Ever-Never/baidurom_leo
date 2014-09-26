.class Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$ImagePagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "WallpaperDetailOnlineActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImagePagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$ImagePagerAdapter;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 283
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    check-cast p3, Landroid/view/View;

    .end local p3
    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 284
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$ImagePagerAdapter;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mWallpaperList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->access$100(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$ImagePagerAdapter;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mWallpaperList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->access$100(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 9
    .parameter "container"
    .parameter "position"

    .prologue
    const/4 v8, 0x0

    .line 258
    iget-object v5, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$ImagePagerAdapter;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0300b6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 260
    .local v0, convertView:Landroid/view/View;
    const v5, 0x7f080246

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 261
    .local v1, imageView:Landroid/widget/ImageView;
    const v5, 0x7f080243

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 263
    .local v4, preview:Landroid/view/View;
    new-instance v3, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$ImagePagerAdapter$1;

    invoke-direct {v3, p0, v4}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$ImagePagerAdapter$1;-><init>(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$ImagePagerAdapter;Landroid/view/View;)V

    .line 271
    .local v3, loadListener:Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadListener;
    iget-object v5, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$ImagePagerAdapter;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mWallpaperList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->access$100(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 272
    iget-object v5, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$ImagePagerAdapter;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mWallpaperList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->access$100(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;

    .line 273
    .local v2, item:Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;
    iget-object v5, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$ImagePagerAdapter;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mImageFetcher:Lcom/baidu/launcher/thememanager/util/ImageFetcher;
    invoke-static {v5}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->access$200(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;)Lcom/baidu/launcher/thememanager/util/ImageFetcher;

    move-result-object v5

    invoke-virtual {v2}, Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;->getThumbHighUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v1, v3, v8}, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->loadImageFromServer(Ljava/lang/String;Landroid/widget/ImageView;Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadListener;Z)V

    .line 276
    .end local v2           #item:Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;
    :cond_0
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    invoke-virtual {p1, v0, v8}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 278
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "view"
    .parameter "object"

    .prologue
    .line 288
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
