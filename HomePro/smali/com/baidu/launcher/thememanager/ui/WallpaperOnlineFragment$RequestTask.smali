.class Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$RequestTask;
.super Landroid/os/AsyncTask;
.source "WallpaperOnlineFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;
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
.field final synthetic this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;


# direct methods
.method private constructor <init>(Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$RequestTask;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 264
    invoke-direct {p0, p1}, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$RequestTask;-><init>(Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 264
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$RequestTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .parameter "params"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 275
    :try_start_0
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$RequestTask;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;

    invoke-static {}, Lcom/baidu/launcher/thememanager/util/HttpParser;->getInstance()Lcom/baidu/launcher/thememanager/util/HttpParser;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x32

    iget-object v5, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$RequestTask;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->mImageThumbWidth:I
    invoke-static {v5}, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->access$600(Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$RequestTask;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->mImageThumbHeight:I
    invoke-static {v6}, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->access$700(Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/baidu/launcher/thememanager/util/HttpParser;->getCategoryList(IIII)Ljava/util/ArrayList;

    move-result-object v2

    #setter for: Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->mCategoryList:Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->access$502(Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :goto_0
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$RequestTask;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->mCategoryList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->access$500(Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$RequestTask;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->mCategoryList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->access$500(Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 282
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$RequestTask;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->mAdapter:Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ImageAdapter;
    invoke-static {v1}, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->access$800(Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;)Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ImageAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$RequestTask;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->mCategoryList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->access$500(Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ImageAdapter;->setCategoryList(Ljava/util/ArrayList;)V

    .line 283
    invoke-static {v7}, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->access$402(I)I

    .line 287
    :goto_1
    const/4 v1, 0x0

    return-object v1

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 279
    invoke-static {v8}, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->access$402(I)I

    goto :goto_0

    .line 285
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    invoke-static {v8}, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->access$402(I)I

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 264
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$RequestTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$RequestTask;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;

    invoke-virtual {v0}, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->updateView()V

    .line 293
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->access$402(I)I

    .line 269
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$RequestTask;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;

    invoke-virtual {v0}, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->updateView()V

    .line 270
    return-void
.end method
