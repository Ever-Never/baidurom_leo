.class Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$ImagePagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "WallpaperDetailLocalActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImagePagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$ImagePagerAdapter;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;

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
    .line 146
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    check-cast p3, Landroid/view/View;

    .end local p3
    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 147
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 125
    invoke-static {}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->access$100()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->access$100()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 8
    .parameter "container"
    .parameter "position"

    .prologue
    const/4 v7, 0x0

    .line 130
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$ImagePagerAdapter;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0300b6

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 132
    .local v0, convertView:Landroid/view/View;
    const v4, 0x7f080246

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 133
    .local v1, imageView:Landroid/widget/ImageView;
    const v4, 0x7f080245

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 135
    .local v3, textView:Landroid/widget/TextView;
    invoke-static {}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->access$100()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 136
    invoke-static {}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->access$100()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;

    .line 137
    .local v2, item:Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$ImagePagerAdapter;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->mImageFetcher:Lcom/baidu/launcher/thememanager/util/ImageFetcher;
    invoke-static {v4}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->access$200(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;)Lcom/baidu/launcher/thememanager/util/ImageFetcher;

    move-result-object v4

    invoke-virtual {v2}, Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;->getmItemPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1, v3, v7}, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->loadImageFromLocal(Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/TextView;Z)V

    .line 140
    .end local v2           #item:Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;
    :cond_0
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    invoke-virtual {p1, v0, v7}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 141
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "view"
    .parameter "object"

    .prologue
    .line 151
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
