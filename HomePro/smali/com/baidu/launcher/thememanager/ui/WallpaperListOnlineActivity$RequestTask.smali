.class Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity$RequestTask;
.super Landroid/os/AsyncTask;
.source "WallpaperListOnlineActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestTask"
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
.field private curPage:I

.field private pageSizes:I

.field final synthetic this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;


# direct methods
.method public constructor <init>(Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;II)V
    .locals 0
    .parameter
    .parameter "curPage"
    .parameter "pageSizes"

    .prologue
    .line 241
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity$RequestTask;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 242
    iput p2, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity$RequestTask;->curPage:I

    .line 243
    iput p3, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity$RequestTask;->pageSizes:I

    .line 244
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity$RequestTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 13
    .parameter "params"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 254
    :try_start_0
    iget-object v9, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity$RequestTask;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;

    invoke-static {}, Lcom/baidu/launcher/thememanager/util/HttpParser;->getInstance()Lcom/baidu/launcher/thememanager/util/HttpParser;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity$RequestTask;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mCurrentCategory:Ljava/lang/String;
    invoke-static {v1}, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->access$300(Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity$RequestTask;->curPage:I

    iget v3, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity$RequestTask;->pageSizes:I

    iget-object v4, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity$RequestTask;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mImageThumbWidth:I
    invoke-static {v4}, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->access$400(Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity$RequestTask;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mImageThumbHeight:I
    invoke-static {v5}, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->access$500(Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/launcher/thememanager/util/HttpParser;->getWallpaperList(Ljava/lang/String;IIII)Ljava/util/ArrayList;

    move-result-object v0

    #setter for: Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mWallpaperList:Ljava/util/ArrayList;
    invoke-static {v9, v0}, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->access$202(Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 256
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity$RequestTask;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mAllWallpaperList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->access$600(Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity$RequestTask;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mAllWallpaperList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->access$600(Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity$RequestTask;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mAllWallpaperList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->access$600(Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 257
    :cond_0
    iget-object v9, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity$RequestTask;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;

    invoke-static {}, Lcom/baidu/launcher/thememanager/util/HttpParser;->getInstance()Lcom/baidu/launcher/thememanager/util/HttpParser;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity$RequestTask;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mCurrentCategory:Ljava/lang/String;
    invoke-static {v1}, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->access$300(Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/16 v3, 0x1f4

    iget-object v4, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity$RequestTask;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mImageThumbWidth:I
    invoke-static {v4}, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->access$400(Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity$RequestTask;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mImageThumbHeight:I
    invoke-static {v5}, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->access$500(Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/launcher/thememanager/util/HttpParser;->getWallpaperList(Ljava/lang/String;IIII)Ljava/util/ArrayList;

    move-result-object v0

    #setter for: Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mAllWallpaperList:Ljava/util/ArrayList;
    invoke-static {v9, v0}, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->access$602(Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity$RequestTask;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mWallpaperList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->access$200(Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity$RequestTask;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mAllWallpaperList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->access$600(Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 267
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity$RequestTask;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mWallpaperList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->access$200(Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 268
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity$RequestTask;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mWallpaperList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->access$200(Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;

    .line 269
    .local v8, item:Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity$RequestTask;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mAdapter:Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->access$700(Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;)Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->add(Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;)V

    goto :goto_1

    .line 260
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #item:Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;
    :catch_0
    move-exception v6

    .line 261
    .local v6, e:Ljava/lang/Exception;
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity$RequestTask;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;

    #setter for: Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mWallpaperList:Ljava/util/ArrayList;
    invoke-static {v0, v11}, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->access$202(Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 262
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity$RequestTask;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;

    #setter for: Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mAllWallpaperList:Ljava/util/ArrayList;
    invoke-static {v0, v11}, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->access$602(Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto :goto_0

    .line 271
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_2
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity$RequestTask;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;

    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->access$104(Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;)I

    .line 272
    invoke-static {v12}, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->access$802(I)I

    .line 286
    .end local v7           #i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    return-object v11

    .line 274
    :cond_4
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity$RequestTask;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mAdapter:Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->access$700(Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;)Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->setLoadMore(Z)V

    .line 275
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->access$802(I)I

    goto :goto_2

    .line 280
    :cond_5
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity$RequestTask;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mAdapter:Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->access$700(Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;)Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity$RequestTask;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mGridView:Landroid/widget/GridView;
    invoke-static {v1}, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->access$900(Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;)Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->disableRefreshView(Landroid/widget/GridView;)V

    .line 281
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity$RequestTask;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mAdapter:Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->access$700(Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;)Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->resetState()V

    .line 282
    iget v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity$RequestTask;->curPage:I

    if-ne v0, v10, :cond_3

    .line 283
    invoke-static {v10}, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->access$802(I)I

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 235
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity$RequestTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 291
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity$RequestTask;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mAllWallpaperList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->access$600(Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity$RequestTask;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mAllWallpaperList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->access$600(Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity$RequestTask;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mAdapter:Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->access$700(Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;)Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity$RequestTask;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mAllWallpaperList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->access$600(Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->setAllListData(Ljava/util/ArrayList;)V

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity$RequestTask;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;

    invoke-virtual {v0}, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->updateView()V

    .line 295
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity$RequestTask;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;

    invoke-virtual {v0}, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->updateView()V

    .line 249
    return-void
.end method
