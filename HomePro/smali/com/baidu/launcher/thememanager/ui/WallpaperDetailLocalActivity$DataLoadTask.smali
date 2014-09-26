.class Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$DataLoadTask;
.super Landroid/os/AsyncTask;
.source "WallpaperDetailLocalActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataLoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;


# direct methods
.method private constructor <init>(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$DataLoadTask;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 246
    invoke-direct {p0, p1}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$DataLoadTask;-><init>(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 246
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$DataLoadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 14
    .parameter "params"

    .prologue
    .line 250
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "item_type"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "item_size"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "item_path"

    aput-object v1, v2, v0

    .line 256
    .local v2, projection:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 258
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$DataLoadTask;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;

    invoke-virtual {v0}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->WALLPAPER_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 259
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 260
    const/4 v11, 0x0

    .line 263
    .local v11, position:I
    :cond_0
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 264
    .local v8, id:I
    const-string v0, "item_type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 265
    .local v13, type:I
    const-string v0, "item_size"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 266
    .local v12, size:I
    const-string v0, "item_path"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 268
    .local v10, path:Ljava/lang/String;
    new-instance v9, Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;

    invoke-direct {v9}, Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;-><init>()V

    .line 269
    .local v9, loccal_item:Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;
    invoke-virtual {v9, v8}, Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;->setmId(I)V

    .line 270
    invoke-virtual {v9, v13}, Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;->setmType(I)V

    .line 271
    invoke-virtual {v9, v12}, Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;->setmSize(I)V

    .line 272
    invoke-virtual {v9, v10}, Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;->setmItemPath(Ljava/lang/String;)V

    .line 274
    invoke-static {}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->access$100()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$DataLoadTask;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->mHistoryPath:Ljava/lang/String;
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->access$500(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$DataLoadTask;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;

    #setter for: Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->mCurrentIndex:I
    invoke-static {v0, v11}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->access$402(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;I)I

    .line 278
    :cond_1
    add-int/lit8 v11, v11, 0x1

    .line 280
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 286
    .end local v8           #id:I
    .end local v9           #loccal_item:Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;
    .end local v10           #path:Ljava/lang/String;
    .end local v11           #position:I
    .end local v12           #size:I
    .end local v13           #type:I
    :cond_2
    if-eqz v6, :cond_3

    .line 287
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 290
    :cond_3
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 283
    :catch_0
    move-exception v7

    .line 284
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 286
    if-eqz v6, :cond_3

    .line 287
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 286
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 287
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 246
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$DataLoadTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 296
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$DataLoadTask;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;

    new-instance v1, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$ImagePagerAdapter;

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$DataLoadTask;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;

    invoke-direct {v1, v2}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$ImagePagerAdapter;-><init>(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;)V

    #setter for: Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->mAdapter:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$ImagePagerAdapter;
    invoke-static {v0, v1}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->access$602(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$ImagePagerAdapter;)Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$ImagePagerAdapter;

    .line 297
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$DataLoadTask;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;

    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$DataLoadTask;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;

    const v2, 0x7f080221

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    #setter for: Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v1, v0}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->access$702(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/ViewPager;

    .line 298
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$DataLoadTask;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->access$700(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$DataLoadTask;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->mAdapter:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$ImagePagerAdapter;
    invoke-static {v1}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->access$600(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;)Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$ImagePagerAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 299
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$DataLoadTask;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->access$700(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$DataLoadTask;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 300
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$DataLoadTask;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->access$700(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    .line 301
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$DataLoadTask;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->access$700(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$DataLoadTask;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->mCurrentIndex:I
    invoke-static {v1}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->access$400(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 302
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$DataLoadTask;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$DataLoadTask;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->mCurrentIndex:I
    invoke-static {v1}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->access$400(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;)I

    move-result v1

    #calls: Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->updateData(I)V
    invoke-static {v0, v1}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->access$800(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;I)V

    .line 303
    return-void
.end method
