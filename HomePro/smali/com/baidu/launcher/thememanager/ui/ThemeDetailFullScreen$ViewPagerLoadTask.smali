.class Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen$ViewPagerLoadTask;
.super Landroid/os/AsyncTask;
.source "ThemeDetailFullScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewPagerLoadTask"
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
.field final synthetic this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;


# direct methods
.method private constructor <init>(Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen$ViewPagerLoadTask;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen$ViewPagerLoadTask;-><init>(Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen$ViewPagerLoadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 10
    .parameter "params"

    .prologue
    .line 142
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v4, mPreviews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen$ViewPagerLoadTask;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->mLocal:I
    invoke-static {v7}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->access$300(Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 145
    new-instance v6, Lcom/baidu/launcher/thememanager/model/ThemeInfo;

    iget-object v7, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen$ViewPagerLoadTask;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;

    iget-object v8, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen$ViewPagerLoadTask;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->mId:I
    invoke-static {v8}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->access$400(Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;)I

    move-result v8

    iget-object v9, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen$ViewPagerLoadTask;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->mComponentType:I
    invoke-static {v9}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->access$500(Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;)I

    move-result v9

    invoke-direct {v6, v7, v8, v9}, Lcom/baidu/launcher/thememanager/model/ThemeInfo;-><init>(Landroid/content/Context;II)V

    .line 146
    .local v6, themeinfo:Lcom/baidu/launcher/thememanager/model/ThemeInfo;
    invoke-virtual {v6}, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->init()V

    .line 147
    invoke-virtual {v6}, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->getPreviewList()Ljava/util/ArrayList;

    move-result-object v4

    .line 164
    .end local v6           #themeinfo:Lcom/baidu/launcher/thememanager/model/ThemeInfo;
    :cond_0
    iget-object v7, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen$ViewPagerLoadTask;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->mImageUrlList:Ljava/util/List;
    invoke-static {v7}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->access$700(Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 166
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 167
    .local v5, preview:Ljava/lang/String;
    iget-object v7, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen$ViewPagerLoadTask;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->mComponent:Ljava/lang/String;
    invoke-static {v7}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->access$800(Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 168
    iget-object v7, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen$ViewPagerLoadTask;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->mPreview:Ljava/lang/String;
    invoke-static {v7}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->access$900(Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 169
    iget-object v7, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen$ViewPagerLoadTask;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->mImageUrlList:Ljava/util/List;
    invoke-static {v7}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->access$700(Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 149
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v5           #preview:Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/io/File;

    iget-object v7, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen$ViewPagerLoadTask;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->mPath:Ljava/lang/String;
    invoke-static {v7}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->access$600(Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 150
    .local v3, localFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, list:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v7, v2

    if-ge v0, v7, :cond_0

    .line 153
    aget-object v7, v2, v0

    const-string v8, "jpeg"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    aget-object v7, v2, v0

    const-string v8, "jpg"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    aget-object v7, v2, v0

    const-string v8, "png"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    aget-object v7, v2, v0

    const-string v8, "JPEG"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    aget-object v7, v2, v0

    const-string v8, "JPG"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    aget-object v7, v2, v0

    const-string v8, "PNG"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 158
    :cond_3
    const-string v7, "ThemeDetailFullScreen"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateThemeList: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v2, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/baidu/launcher/thememanager/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen$ViewPagerLoadTask;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->mPath:Ljava/lang/String;
    invoke-static {v8}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->access$600(Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v2, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 172
    .end local v0           #i:I
    .end local v2           #list:[Ljava/lang/String;
    .end local v3           #localFile:Ljava/io/File;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v5       #preview:Ljava/lang/String;
    :cond_5
    iget-object v7, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen$ViewPagerLoadTask;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->mPath:Ljava/lang/String;
    invoke-static {v7}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->access$600(Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "btp"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 173
    const-string v7, "ThemeDetailFullScreen"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateThemeList btp *** "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/baidu/launcher/thememanager/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v7, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen$ViewPagerLoadTask;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->mImageUrlList:Ljava/util/List;
    invoke-static {v7}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->access$700(Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 175
    :cond_6
    sget-object v7, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->sComponentPreview:[Ljava/lang/String;

    const/16 v8, 0x9

    aget-object v7, v7, v8

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    sget-object v7, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->sComponentPreview:[Ljava/lang/String;

    const/16 v8, 0xa

    aget-object v7, v7, v8

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 179
    const-string v7, "ThemeDetailFullScreen"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "adapter add "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/baidu/launcher/thememanager/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v7, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen$ViewPagerLoadTask;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->mImageUrlList:Ljava/util/List;
    invoke-static {v7}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->access$700(Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 182
    :cond_7
    const-string v7, "ThemeDetailFullScreen"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ignore "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/baidu/launcher/thememanager/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 187
    .end local v5           #preview:Ljava/lang/String;
    :cond_8
    const/4 v7, 0x0

    return-object v7
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 137
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen$ViewPagerLoadTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 10
    .parameter "result"

    .prologue
    const/4 v6, 0x1

    .line 192
    const/4 v9, 0x0

    .line 193
    .local v9, i:I
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen$ViewPagerLoadTask;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->mComponentType:I
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->access$500(Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 194
    add-int/lit8 v9, v9, 0x1

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen$ViewPagerLoadTask;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->mIndicator:Lcom/baidu/launcher/thememanager/view/Indicator;
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->access$100(Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;)Lcom/baidu/launcher/thememanager/view/Indicator;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen$ViewPagerLoadTask;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->mImageUrlList:Ljava/util/List;
    invoke-static {v1}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->access$700(Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v9

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/thememanager/view/Indicator;->setIndicator(I)V

    .line 198
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen$ViewPagerLoadTask;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->mIndicator:Lcom/baidu/launcher/thememanager/view/Indicator;
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->access$100(Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;)Lcom/baidu/launcher/thememanager/view/Indicator;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen$ViewPagerLoadTask;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->mPosition:I
    invoke-static {v1}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->access$200(Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/thememanager/view/Indicator;->setCurrentDetail(I)V

    .line 200
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen$ViewPagerLoadTask;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;

    new-instance v1, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen$ViewPagerLoadTask;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;

    iget-object v3, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen$ViewPagerLoadTask;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->mComponentType:I
    invoke-static {v3}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->access$500(Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;)I

    move-result v3

    iget-object v4, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen$ViewPagerLoadTask;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->mImageUrlList:Ljava/util/List;
    invoke-static {v4}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->access$700(Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen$ViewPagerLoadTask;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;-><init>(Landroid/app/Activity;ILjava/util/List;Landroid/view/View$OnClickListener;)V

    #setter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->adapter:Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;
    invoke-static {v0, v1}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->access$1002(Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;)Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;

    .line 202
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen$ViewPagerLoadTask;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->adapter:Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->access$1000(Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;)Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->setLocal(Z)V

    .line 203
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen$ViewPagerLoadTask;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->adapter:Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->access$1000(Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;)Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->setFullScreen(Z)V

    .line 205
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen$ViewPagerLoadTask;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->adapter:Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->access$1000(Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;)Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen$ViewPagerLoadTask;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->mDesigner:Ljava/lang/String;
    invoke-static {v1}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->access$1100(Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen$ViewPagerLoadTask;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->mVersion:Ljava/lang/String;
    invoke-static {v2}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->access$1200(Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const-string v4, ""

    const-wide/16 v5, 0x0

    iget-object v7, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen$ViewPagerLoadTask;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->mSize:J
    invoke-static {v7}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->access$1300(Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;)J

    move-result-wide v7

    invoke-virtual/range {v0 .. v8}, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->setDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 207
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen$ViewPagerLoadTask;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->access$1400(Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    new-instance v1, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen$ImageListOnPageChangeListener;

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen$ViewPagerLoadTask;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;

    invoke-direct {v1, v2}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen$ImageListOnPageChangeListener;-><init>(Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 208
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen$ViewPagerLoadTask;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->access$1400(Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen$ViewPagerLoadTask;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->adapter:Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;
    invoke-static {v1}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->access$1000(Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;)Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 210
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen$ViewPagerLoadTask;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->access$1400(Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen$ViewPagerLoadTask;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->mPosition:I
    invoke-static {v1}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->access$200(Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 212
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 213
    return-void
.end method
