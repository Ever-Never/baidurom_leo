.class Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$ThemeDetailLoaderTask;
.super Landroid/os/AsyncTask;
.source "ThemeDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThemeDetailLoaderTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/baidu/launcher/thememanager/model/ThemeInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;


# direct methods
.method private constructor <init>(Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$ThemeDetailLoaderTask;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 213
    invoke-direct {p0, p1}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$ThemeDetailLoaderTask;-><init>(Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;)V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Lcom/baidu/launcher/thememanager/model/ThemeInfo;
    .locals 4
    .parameter "params"

    .prologue
    .line 232
    new-instance v0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$ThemeDetailLoaderTask;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$ThemeDetailLoaderTask;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mId:I
    invoke-static {v2}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->access$500(Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$ThemeDetailLoaderTask;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mComponentType:I
    invoke-static {v3}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->access$600(Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/launcher/thememanager/model/ThemeInfo;-><init>(Landroid/content/Context;II)V

    .line 233
    .local v0, themeInfo:Lcom/baidu/launcher/thememanager/model/ThemeInfo;
    invoke-virtual {v0}, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->init()V

    .line 235
    return-object v0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 213
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$ThemeDetailLoaderTask;->doInBackground([Ljava/lang/Void;)Lcom/baidu/launcher/thememanager/model/ThemeInfo;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Lcom/baidu/launcher/thememanager/model/ThemeInfo;)V
    .locals 13
    .parameter "data"

    .prologue
    const/4 v9, 0x1

    const/4 v12, -0x1

    .line 240
    if-eqz p1, :cond_8

    .line 241
    iget-object v8, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$ThemeDetailLoaderTask;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;

    #setter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mThemeInfo:Lcom/baidu/launcher/thememanager/model/ThemeInfo;
    invoke-static {v8, p1}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->access$702(Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;Lcom/baidu/launcher/thememanager/model/ThemeInfo;)Lcom/baidu/launcher/thememanager/model/ThemeInfo;

    .line 243
    iget-object v8, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$ThemeDetailLoaderTask;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 246
    .local v6, prefs:Landroid/content/SharedPreferences;
    iget-object v8, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$ThemeDetailLoaderTask;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mComponentType:I
    invoke-static {v8}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->access$600(Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;)I

    move-result v8

    if-eq v8, v12, :cond_1

    sget-object v8, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->PREFERENCE_KEYS:[Ljava/lang/String;

    iget-object v10, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$ThemeDetailLoaderTask;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mComponentType:I
    invoke-static {v10}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->access$600(Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;)I

    move-result v10

    aget-object v8, v8, v10

    :goto_0
    const-string v10, "\u9ed8\u8ba4V1"

    invoke-interface {v6, v8, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 251
    .local v3, mCurrentState:Ljava/lang/String;
    const/4 v0, 0x0

    .line 253
    .local v0, current:Z
    :try_start_0
    iget-object v8, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$ThemeDetailLoaderTask;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mThemeInfo:Lcom/baidu/launcher/thememanager/model/ThemeInfo;
    invoke-static {v8}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->access$700(Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;)Lcom/baidu/launcher/thememanager/model/ThemeInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-nez v8, :cond_2

    move v0, v9

    .line 259
    :goto_1
    iget-object v8, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$ThemeDetailLoaderTask;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mThemeInfo:Lcom/baidu/launcher/thememanager/model/ThemeInfo;
    invoke-static {v8}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->access$700(Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;)Lcom/baidu/launcher/thememanager/model/ThemeInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->getPreviewList()Ljava/util/ArrayList;

    move-result-object v4

    .line 260
    .local v4, mPreviews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$ThemeDetailLoaderTask;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mImageUrlList:Ljava/util/List;
    invoke-static {v8}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->access$800(Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 262
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 263
    .local v7, preview:Ljava/lang/String;
    iget-object v8, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$ThemeDetailLoaderTask;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mComponentType:I
    invoke-static {v8}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->access$600(Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;)I

    move-result v8

    if-eq v8, v12, :cond_3

    .line 264
    iget-object v8, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$ThemeDetailLoaderTask;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mPreview:Ljava/lang/String;
    invoke-static {v8}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->access$900(Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 265
    iget-object v8, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$ThemeDetailLoaderTask;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mImageUrlList:Ljava/util/List;
    invoke-static {v8}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->access$800(Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 246
    .end local v0           #current:Z
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #mCurrentState:Ljava/lang/String;
    .end local v4           #mPreviews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #preview:Ljava/lang/String;
    :cond_1
    const-string v8, "theme_default"

    goto :goto_0

    .line 253
    .restart local v0       #current:Z
    .restart local v3       #mCurrentState:Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 254
    :catch_0
    move-exception v1

    .line 255
    .local v1, e:Ljava/lang/NullPointerException;
    const/4 v0, 0x0

    .line 256
    const-string v8, "ThemeDetailActivity"

    const-string v10, "Todo: need fix"

    invoke-static {v8, v10}, Lcom/baidu/launcher/thememanager/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 268
    .end local v1           #e:Ljava/lang/NullPointerException;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #mPreviews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7       #preview:Ljava/lang/String;
    :cond_3
    iget-object v8, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$ThemeDetailLoaderTask;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mThemeInfo:Lcom/baidu/launcher/thememanager/model/ThemeInfo;
    invoke-static {v8}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->access$700(Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;)Lcom/baidu/launcher/thememanager/model/ThemeInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v10, "btp"

    invoke-virtual {v8, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 269
    iget-object v8, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$ThemeDetailLoaderTask;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mImageUrlList:Ljava/util/List;
    invoke-static {v8}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->access$800(Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 270
    :cond_4
    sget-object v8, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->sComponentPreview:[Ljava/lang/String;

    const/16 v10, 0x9

    aget-object v8, v8, v10

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    sget-object v8, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->sComponentPreview:[Ljava/lang/String;

    const/16 v10, 0xa

    aget-object v8, v8, v10

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 275
    const-string v8, "ThemeDetailActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "adapter add "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/baidu/launcher/thememanager/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v8, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$ThemeDetailLoaderTask;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mImageUrlList:Ljava/util/List;
    invoke-static {v8}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->access$800(Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 278
    :cond_5
    const-string v8, "ThemeDetailActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ignore "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/baidu/launcher/thememanager/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 283
    .end local v7           #preview:Ljava/lang/String;
    :cond_6
    const/4 v5, 0x0

    .line 285
    .local v5, position:I
    iget-object v8, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$ThemeDetailLoaderTask;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mComponentType:I
    invoke-static {v8}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->access$600(Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;)I

    move-result v8

    if-ne v8, v12, :cond_7

    iget-object v8, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$ThemeDetailLoaderTask;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mImageUrlList:Ljava/util/List;
    invoke-static {v8}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->access$800(Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lt v8, v9, :cond_7

    .line 286
    const/4 v5, 0x1

    .line 289
    :cond_7
    iget-object v8, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$ThemeDetailLoaderTask;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;

    invoke-virtual {v8}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->isFinishing()Z

    move-result v8

    if-nez v8, :cond_8

    iget-object v8, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$ThemeDetailLoaderTask;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mThemeInfo:Lcom/baidu/launcher/thememanager/model/ThemeInfo;
    invoke-static {v8}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->access$700(Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;)Lcom/baidu/launcher/thememanager/model/ThemeInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->getKey()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_8

    const-string v8, ""

    iget-object v9, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$ThemeDetailLoaderTask;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mThemeInfo:Lcom/baidu/launcher/thememanager/model/ThemeInfo;
    invoke-static {v9}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->access$700(Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;)Lcom/baidu/launcher/thememanager/model/ThemeInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 292
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$ThemeDetailLoaderTask;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;

    invoke-virtual {v8}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->isChangingConfigurations()Z

    move-result v8

    if-nez v8, :cond_9

    .line 293
    iget-object v8, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$ThemeDetailLoaderTask;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;

    #calls: Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->createSingleFragments(IZ)V
    invoke-static {v8, v5, v0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->access$1000(Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;IZ)V

    .line 303
    .end local v0           #current:Z
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #mCurrentState:Ljava/lang/String;
    .end local v4           #mPreviews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5           #position:I
    .end local v6           #prefs:Landroid/content/SharedPreferences;
    :cond_8
    :goto_3
    return-void

    .line 294
    .restart local v0       #current:Z
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #mCurrentState:Ljava/lang/String;
    .restart local v4       #mPreviews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5       #position:I
    .restart local v6       #prefs:Landroid/content/SharedPreferences;
    :cond_9
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v8

    if-nez v8, :cond_8

    .line 295
    iget-object v8, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$ThemeDetailLoaderTask;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;

    #calls: Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->createSingleFragments(IZ)V
    invoke-static {v8, v5, v0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->access$1000(Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;IZ)V

    goto :goto_3
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 213
    check-cast p1, Lcom/baidu/launcher/thememanager/model/ThemeInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$ThemeDetailLoaderTask;->onPostExecute(Lcom/baidu/launcher/thememanager/model/ThemeInfo;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 4

    .prologue
    .line 218
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$ThemeDetailLoaderTask;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;

    const v3, 0x7f030090

    invoke-virtual {v2, v3}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->setContentView(I)V

    .line 219
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$ThemeDetailLoaderTask;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;

    const v3, 0x7f08001d

    invoke-virtual {v2, v3}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/thememanager/view/ExActionBar;

    .line 220
    .local v1, mActionBar2:Lcom/baidu/launcher/thememanager/view/ExActionBar;
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$ThemeDetailLoaderTask;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mTitle:Ljava/lang/String;
    invoke-static {v2}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->access$200(Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/thememanager/view/ExActionBar;->setTextValue(Ljava/lang/String;)V

    .line 221
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$ThemeDetailLoaderTask;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mReturnIndex:I
    invoke-static {v2}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->access$300(Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/thememanager/view/ExActionBar;->setReturnFragmentIndex(I)V

    .line 222
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$ThemeDetailLoaderTask;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;

    invoke-virtual {v2}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02020c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 223
    .local v0, appIcon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v0}, Lcom/baidu/launcher/thememanager/view/ExActionBar;->setActionBarIcon(Landroid/graphics/drawable/Drawable;)V

    .line 224
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/thememanager/view/ExActionBar;->setActionBarOperVisible(I)V

    .line 225
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$ThemeDetailLoaderTask;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mIsCannotBack:Z
    invoke-static {v2}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->access$400(Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Lcom/baidu/launcher/thememanager/view/ExActionBar;->setActionBarNavigatorVisible(Z)V

    .line 228
    return-void

    .line 225
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
