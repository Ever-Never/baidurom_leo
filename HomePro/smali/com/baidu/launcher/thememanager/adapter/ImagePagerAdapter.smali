.class public Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ImagePagerAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImagePagerAdapter"


# instance fields
.field private activity:Landroid/app/Activity;

.field private b_fullscreen:Z

.field private b_local:Z

.field private clicker:Landroid/view/View$OnClickListener;

.field private detail_view:Landroid/view/View;

.field private mDesigner:Ljava/lang/String;

.field private mDownloadNum:J

.field private mImageUrlList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSize:J

.field private mTel:Ljava/lang/String;

.field private mType:I

.field private mUploadDate:Ljava/lang/String;

.field private mVersion:Ljava/lang/String;

.field private value:I

.field private view_history:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private viewlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILjava/util/List;Landroid/view/View$OnClickListener;)V
    .locals 3
    .parameter "act"
    .parameter "type"
    .parameter
    .parameter "c"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, imageUrlList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 26
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v2, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->view_history:Ljava/util/ArrayDeque;

    .line 27
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->detail_view:Landroid/view/View;

    .line 28
    iput v0, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->value:I

    .line 30
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->viewlist:Ljava/util/ArrayList;

    .line 37
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->b_local:Z

    iput-boolean v0, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->b_fullscreen:Z

    .line 46
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->activity:Landroid/app/Activity;

    .line 47
    iput p2, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->mType:I

    .line 48
    iput-object p4, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->clicker:Landroid/view/View$OnClickListener;

    .line 49
    iput-object p3, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->mImageUrlList:Ljava/util/List;

    .line 51
    iget v2, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->mType:I

    if-ne v2, v1, :cond_0

    :goto_0
    iput v0, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->value:I

    .line 53
    return-void

    :cond_0
    move v0, v1

    .line 51
    goto :goto_0
.end method


# virtual methods
.method public clean()V
    .locals 5

    .prologue
    .line 200
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->viewlist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 201
    .local v3, view:Landroid/view/View;
    const v4, 0x7f0801f0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 203
    .local v2, imageview:Landroid/widget/ImageView;
    if-eqz v2, :cond_0

    .line 204
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 205
    .local v0, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/baidu/launcher/thememanager/util/Utils;->releaseBitmap(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;)V

    goto :goto_0

    .line 209
    .end local v0           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v2           #imageview:Landroid/widget/ImageView;
    .end local v3           #view:Landroid/view/View;
    :cond_1
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->viewlist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 210
    return-void
.end method

.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 5
    .parameter "collection"
    .parameter "position"
    .parameter "obj"

    .prologue
    .line 158
    move-object v3, p3

    check-cast v3, Landroid/view/View;

    .line 159
    .local v3, view:Landroid/view/View;
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    invoke-virtual {p1, v3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 161
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 162
    .local v2, tag:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v4, "detail"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 174
    :goto_0
    return-void

    .line 165
    :cond_0
    const v4, 0x7f0801f0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 167
    .local v1, preview:Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 168
    .local v0, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/baidu/launcher/thememanager/util/Utils;->releaseBitmap(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;)V

    .line 170
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 171
    const/4 v1, 0x0

    .line 172
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->view_history:Ljava/util/ArrayDeque;

    invoke-virtual {v4, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 178
    return-void
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 182
    const/4 v0, 0x0

    .line 183
    .local v0, i:I
    iget v1, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->mType:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 184
    add-int/lit8 v0, v0, 0x1

    .line 191
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->mImageUrlList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    return v1

    .line 186
    :cond_1
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->mImageUrlList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 10
    .parameter "collection"
    .parameter "position"

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 76
    iget v5, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->value:I

    if-le p2, v5, :cond_7

    .line 77
    iget-object v5, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->view_history:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 79
    .local v4, view:Landroid/view/View;
    if-nez v4, :cond_0

    .line 80
    iget-boolean v5, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->b_fullscreen:Z

    if-eqz v5, :cond_1

    .line 81
    iget-object v5, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v7, 0x7f03009b

    invoke-virtual {v5, v7, v8, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 86
    :goto_0
    iget-object v5, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->viewlist:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_0
    const v5, 0x7f0801f0

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 91
    .local v3, preview:Landroid/widget/ImageView;
    iget v5, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->mType:I

    if-eq v5, v9, :cond_2

    iget-object v5, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->mImageUrlList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 93
    invoke-static {}, Lcom/baidu/launcher/thememanager/util/BitmapCache;->getInstance()Lcom/baidu/launcher/thememanager/util/BitmapCache;

    move-result-object v5

    iget-object v7, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v5, v7, v6}, Lcom/baidu/launcher/thememanager/util/BitmapCache;->getDefaultBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 131
    :goto_1
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    invoke-virtual {p1, v4, v6}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 151
    .end local v3           #preview:Landroid/widget/ImageView;
    .end local v4           #view:Landroid/view/View;
    :goto_2
    return-object v4

    .line 84
    .restart local v4       #view:Landroid/view/View;
    .restart local p1
    :cond_1
    iget-object v5, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v7, 0x7f03009a

    invoke-virtual {v5, v7, v8, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    goto :goto_0

    .line 97
    .restart local v3       #preview:Landroid/widget/ImageView;
    :cond_2
    const/4 v2, 0x0

    .line 99
    .local v2, cachePath:Ljava/lang/String;
    iget v5, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->mType:I

    if-ne v5, v9, :cond_3

    .line 100
    iget-object v5, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->mImageUrlList:Ljava/util/List;

    add-int/lit8 v7, p2, -0x1

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #cachePath:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 105
    .restart local v2       #cachePath:Ljava/lang/String;
    :goto_3
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 106
    .local v0, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/baidu/launcher/thememanager/util/Utils;->releaseBitmap(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;)V

    .line 108
    invoke-static {}, Lcom/baidu/launcher/thememanager/util/BitmapCache;->getInstance()Lcom/baidu/launcher/thememanager/util/BitmapCache;

    move-result-object v7

    iget-boolean v5, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->b_local:Z

    if-nez v5, :cond_4

    const/4 v5, 0x1

    :goto_4
    invoke-virtual {v7, v2, v6, v5}, Lcom/baidu/launcher/thememanager/util/BitmapCache;->get(Ljava/lang/String;ZZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 110
    .local v1, bitmap_cache:Landroid/graphics/Bitmap;
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 111
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_5

    .line 113
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 128
    :goto_5
    iget-object v5, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->clicker:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 102
    .end local v0           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v1           #bitmap_cache:Landroid/graphics/Bitmap;
    :cond_3
    iget-object v5, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->mImageUrlList:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #cachePath:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .restart local v2       #cachePath:Ljava/lang/String;
    goto :goto_3

    .restart local v0       #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :cond_4
    move v5, v6

    .line 108
    goto :goto_4

    .line 117
    .restart local v1       #bitmap_cache:Landroid/graphics/Bitmap;
    :cond_5
    invoke-static {}, Lcom/baidu/launcher/thememanager/util/BitmapCache;->getInstance()Lcom/baidu/launcher/thememanager/util/BitmapCache;

    move-result-object v5

    iget-object v7, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v5, v7, v6}, Lcom/baidu/launcher/thememanager/util/BitmapCache;->getDefaultBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 119
    iget-boolean v5, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->b_local:Z

    if-eqz v5, :cond_6

    .line 120
    iget-object v5, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/baidu/launcher/thememanager/util/ImageLoader;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/thememanager/util/ImageLoader;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Lcom/baidu/launcher/thememanager/util/ImageLoader;->loadLocalPreview(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_5

    .line 123
    :cond_6
    iget-object v5, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/baidu/launcher/thememanager/util/ImageLoader;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/thememanager/util/ImageLoader;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Lcom/baidu/launcher/thememanager/util/ImageLoader;->downloadPreview(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_5

    .line 135
    .end local v0           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v1           #bitmap_cache:Landroid/graphics/Bitmap;
    .end local v2           #cachePath:Ljava/lang/String;
    .end local v3           #preview:Landroid/widget/ImageView;
    .end local v4           #view:Landroid/view/View;
    :cond_7
    iget-object v5, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->detail_view:Landroid/view/View;

    if-nez v5, :cond_8

    .line 136
    iget-boolean v5, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->b_fullscreen:Z

    if-eqz v5, :cond_9

    .line 137
    iget-object v5, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v7, 0x7f030097

    invoke-virtual {v5, v7, v8, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->detail_view:Landroid/view/View;

    .line 143
    :goto_6
    iget-object v5, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->detail_view:Landroid/view/View;

    invoke-virtual {p0, v5}, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->setDetail(Landroid/view/View;)V

    .line 146
    :cond_8
    iget-object v5, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->detail_view:Landroid/view/View;

    const-string v7, "detail"

    invoke-virtual {v5, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 148
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    iget-object v5, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->detail_view:Landroid/view/View;

    invoke-virtual {p1, v5, v6}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 149
    iget-object v5, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->detail_view:Landroid/view/View;

    iget-object v6, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->clicker:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->detail_view:Landroid/view/View;

    goto/16 :goto_2

    .line 140
    .restart local p1
    :cond_9
    iget-object v5, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v7, 0x7f030096

    invoke-virtual {v5, v7, v8, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->detail_view:Landroid/view/View;

    goto :goto_6
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 196
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDetail(Landroid/view/View;)V
    .locals 6
    .parameter "row"

    .prologue
    const v5, 0x7f0801de

    const v4, 0x7f0801dd

    const v3, 0x7f0801dc

    .line 214
    iget-boolean v2, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->b_local:Z

    if-eqz v2, :cond_4

    .line 215
    if-nez p1, :cond_0

    .line 245
    :goto_0
    return-void

    .line 218
    :cond_0
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object v0, v2

    check-cast v0, Landroid/widget/TextView;

    .line 219
    .local v0, textview:Landroid/widget/TextView;
    if-eqz v0, :cond_1

    .line 220
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->mDesigner:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    :cond_1
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object v0, v2

    check-cast v0, Landroid/widget/TextView;

    .line 223
    if-eqz v0, :cond_2

    .line 224
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    :cond_2
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object v0, v2

    check-cast v0, Landroid/widget/TextView;

    .line 228
    if-eqz v0, :cond_3

    .line 229
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->activity:Landroid/app/Activity;

    iget-wide v3, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->mSize:J

    invoke-static {v2, v3, v4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    :cond_3
    const v2, 0x7f0801df

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 233
    .local v1, view:Landroid/view/View;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 235
    .end local v0           #textview:Landroid/widget/TextView;
    .end local v1           #view:Landroid/view/View;
    :cond_4
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->detail_view:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->mDesigner:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->detail_view:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->mVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->detail_view:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->activity:Landroid/app/Activity;

    iget-wide v4, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->mSize:J

    invoke-static {v3, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->detail_view:Landroid/view/View;

    const v3, 0x7f0801e0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->mDownloadNum:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public setDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 0
    .parameter "designer"
    .parameter "ver"
    .parameter "tel"
    .parameter "date"
    .parameter "dl"
    .parameter "size"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->mDesigner:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->mVersion:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->mTel:Ljava/lang/String;

    .line 67
    iput-object p4, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->mUploadDate:Ljava/lang/String;

    .line 68
    iput-wide p5, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->mDownloadNum:J

    .line 69
    iput-wide p7, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->mSize:J

    .line 71
    return-void
.end method

.method public setFullScreen(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->b_fullscreen:Z

    .line 57
    return-void
.end method

.method public setLocal(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->b_local:Z

    .line 61
    return-void
.end method
