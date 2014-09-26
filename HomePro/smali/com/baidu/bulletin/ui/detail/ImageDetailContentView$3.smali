.class Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$3;
.super Ljava/lang/Object;
.source "ImageDetailContentView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$3;->this$0:Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .parameter "v"

    .prologue
    .line 169
    invoke-static {}, Lcom/baidu/bulletin/utils/BulletinUBC;->statForBeautyGirlImageDownloadClick()V

    .line 171
    iget-object v9, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$3;->this$0:Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;

    #getter for: Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mBeautyGirlDetailData:Lcom/baidu/bulletin/ui/detail/DetailDataList;
    invoke-static {v9}, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->access$200(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;)Lcom/baidu/bulletin/ui/detail/DetailDataList;

    move-result-object v9

    iget-object v10, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$3;->this$0:Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;

    #getter for: Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mGallery:Lcom/baidu/bulletin/ui/detail/ImageGallery;
    invoke-static {v10}, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->access$100(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;)Lcom/baidu/bulletin/ui/detail/ImageGallery;

    move-result-object v10

    invoke-virtual {v10}, Lcom/baidu/bulletin/ui/detail/ImageGallery;->getCurrentItemPosition()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/baidu/bulletin/ui/detail/DetailDataList;->get(I)Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    move-result-object v0

    .line 173
    .local v0, channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v6, newsInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/NewsDetailInfo;>;"
    :try_start_0
    iget-object v9, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$3;->this$0:Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;

    #getter for: Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mDatabaseManager:Lcom/baidu/bulletin/db/manager/DatabaseManager;
    invoke-static {v9}, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->access$300(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;)Lcom/baidu/bulletin/db/manager/DatabaseManager;

    move-result-object v9

    iget-wide v10, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->_id:J

    long-to-int v10, v10

    invoke-virtual {v9, v10}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->queryNewsDetailByItemId(I)Ljava/util/List;
    :try_end_0
    .catch Lcom/baidu/bulletin/db/exception/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 179
    :goto_0
    const/4 v9, 0x0

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;

    .line 181
    .local v5, newsInfo:Lcom/baidu/bulletin/db/entity/NewsDetailInfo;
    iget-object v9, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$3;->this$0:Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;

    iget-object v10, v5, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    #setter for: Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mCurrentImage:Lcom/baidu/bulletin/db/entity/ImageInfo;
    invoke-static {v9, v10}, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->access$402(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;Lcom/baidu/bulletin/db/entity/ImageInfo;)Lcom/baidu/bulletin/db/entity/ImageInfo;

    .line 182
    iget-object v9, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$3;->this$0:Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;

    #getter for: Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mCurrentImage:Lcom/baidu/bulletin/db/entity/ImageInfo;
    invoke-static {v9}, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->access$400(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;)Lcom/baidu/bulletin/db/entity/ImageInfo;

    move-result-object v9

    iget-object v9, v9, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgPath:Ljava/lang/String;

    if-nez v9, :cond_0

    .line 183
    iget-object v9, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$3;->this$0:Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;

    #getter for: Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->access$000(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;)Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$3;->this$0:Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;

    #getter for: Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->access$000(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;)Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0c0277

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 219
    :goto_1
    return-void

    .line 176
    .end local v5           #newsInfo:Lcom/baidu/bulletin/db/entity/NewsDetailInfo;
    :catch_0
    move-exception v4

    .line 177
    .local v4, e:Lcom/baidu/bulletin/db/exception/DatabaseException;
    invoke-virtual {v4}, Lcom/baidu/bulletin/db/exception/DatabaseException;->printStackTrace()V

    goto :goto_0

    .line 189
    .end local v4           #e:Lcom/baidu/bulletin/db/exception/DatabaseException;
    .restart local v5       #newsInfo:Lcom/baidu/bulletin/db/entity/NewsDetailInfo;
    :cond_0
    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$3;->this$0:Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;

    #getter for: Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mCurrentImage:Lcom/baidu/bulletin/db/entity/ImageInfo;
    invoke-static {v9}, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->access$400(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;)Lcom/baidu/bulletin/db/entity/ImageInfo;

    move-result-object v9

    iget-object v9, v9, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgPath:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 191
    .local v8, srcImgFile:Ljava/io/File;
    new-instance v7, Ljava/io/File;

    iget-object v9, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$3;->this$0:Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;

    const-string v10, "Pictures"

    invoke-static {}, Lcom/baidu/bulletin/utils/DeviceEnv$Storage;->getDirectory()Ljava/io/File;

    move-result-object v11

    #calls: Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->getSubdirectoryPath(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    invoke-static {v9, v10, v11}, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->access$500(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 193
    .local v7, picturePath:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 194
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 196
    :cond_1
    new-instance v3, Ljava/io/File;

    iget-object v9, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$3;->this$0:Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;

    const-string v10, "\u767e\u9875\u7a97"

    #calls: Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->getSubdirectoryPath(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    invoke-static {v9, v10, v7}, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->access$500(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 198
    .local v3, dstPath:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    .line 199
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 201
    :cond_2
    new-instance v2, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    .local v2, dstImgFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 203
    iget-object v9, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$3;->this$0:Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;

    #getter for: Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->access$000(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;)Landroid/content/Context;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$3;->this$0:Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;

    #getter for: Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->access$000(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;)Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0c0278

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 209
    :cond_3
    iget-object v9, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$3;->this$0:Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 210
    .local v1, done:Z
    if-eqz v1, :cond_4

    .line 211
    iget-object v9, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$3;->this$0:Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;

    #getter for: Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->access$000(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;)Landroid/content/Context;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$3;->this$0:Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;

    #getter for: Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->access$000(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;)Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0c0278

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 215
    :cond_4
    iget-object v9, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$3;->this$0:Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;

    #getter for: Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->access$000(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;)Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$3;->this$0:Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;

    #getter for: Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->access$000(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;)Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0c0277

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1
.end method
