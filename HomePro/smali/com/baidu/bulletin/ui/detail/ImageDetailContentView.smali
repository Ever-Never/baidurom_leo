.class public Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;
.super Ljava/lang/Object;
.source "ImageDetailContentView.java"

# interfaces
.implements Lcom/baidu/bulletin/ui/detail/IDetailContentView;
.implements Lcom/baidu/bulletin/utils/ChangeNotifyManager$Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$ImageAdapter;
    }
.end annotation


# static fields
.field private static final PICTURE_PATH:Ljava/lang/String; = "Pictures"

.field private static final SAVE_PATH:Ljava/lang/String; = "\u767e\u9875\u7a97"

.field private static final TAG:Ljava/lang/String; = "ImageDetailContentView"

.field private static mDownloadDialog:Landroid/app/Dialog;


# instance fields
.field private mAsyncImageLoader:Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;

.field private mBeautyGirlDetailData:Lcom/baidu/bulletin/ui/detail/DetailDataList;

.field private mCacheImageLoader:Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;

.field private mConserveView:Landroid/widget/ImageView;

.field private mContainerViewGroup:Landroid/view/ViewGroup;

.field private mContentListener:Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentListener;

.field private mContext:Landroid/content/Context;

.field private mCurrentImage:Lcom/baidu/bulletin/db/entity/ImageInfo;

.field private mDatabaseManager:Lcom/baidu/bulletin/db/manager/DatabaseManager;

.field private mDownloadView:Landroid/widget/ImageView;

.field private mGallery:Lcom/baidu/bulletin/ui/detail/ImageGallery;

.field private mHandler:Landroid/os/Handler;

.field private mImageCallback:Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;

.field private mLayout:Landroid/widget/RelativeLayout;

.field private mLoadingProgressBar:Landroid/widget/ProgressBar;

.field private mNoSdcardDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/db/entity/ImageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mShareView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1
    .parameter "containerGroup"

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mNoSdcardDetails:Ljava/util/List;

    .line 90
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mHandler:Landroid/os/Handler;

    .line 392
    new-instance v0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$5;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$5;-><init>(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;)V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mImageCallback:Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;

    .line 93
    iput-object p1, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mContainerViewGroup:Landroid/view/ViewGroup;

    .line 95
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mContainerViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mContext:Landroid/content/Context;

    .line 96
    new-instance v0, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;

    invoke-direct {v0}, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mAsyncImageLoader:Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;

    .line 97
    invoke-static {}, Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;->getInstance()Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mCacheImageLoader:Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;

    .line 98
    invoke-static {}, Lcom/baidu/bulletin/ui/detail/DetailDataList;->getInstance()Lcom/baidu/bulletin/ui/detail/DetailDataList;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mBeautyGirlDetailData:Lcom/baidu/bulletin/ui/detail/DetailDataList;

    .line 99
    invoke-static {}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->getInstance()Lcom/baidu/bulletin/db/manager/DatabaseManager;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mDatabaseManager:Lcom/baidu/bulletin/db/manager/DatabaseManager;

    .line 101
    sget-object v0, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;->MediaMountChange:Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;

    invoke-static {v0, p0}, Lcom/baidu/bulletin/utils/ChangeNotifyManager;->register(Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;Lcom/baidu/bulletin/utils/ChangeNotifyManager$Observer;)V

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;)Lcom/baidu/bulletin/ui/detail/ImageGallery;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mGallery:Lcom/baidu/bulletin/ui/detail/ImageGallery;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;)Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mImageCallback:Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;)Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mAsyncImageLoader:Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mNoSdcardDetails:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->preLoadImage(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->showDownloadDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;)Lcom/baidu/bulletin/ui/detail/DetailDataList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mBeautyGirlDetailData:Lcom/baidu/bulletin/ui/detail/DetailDataList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;)Lcom/baidu/bulletin/db/manager/DatabaseManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mDatabaseManager:Lcom/baidu/bulletin/db/manager/DatabaseManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;)Lcom/baidu/bulletin/db/entity/ImageInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mCurrentImage:Lcom/baidu/bulletin/db/entity/ImageInfo;

    return-object v0
.end method

.method static synthetic access$402(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;Lcom/baidu/bulletin/db/entity/ImageInfo;)Lcom/baidu/bulletin/db/entity/ImageInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mCurrentImage:Lcom/baidu/bulletin/db/entity/ImageInfo;

    return-object p1
.end method

.method static synthetic access$500(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->getSubdirectoryPath(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mScreenWidth:I

    return v0
.end method

.method static synthetic access$700(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mScreenHeight:I

    return v0
.end method

.method static synthetic access$800(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mLoadingProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$900(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;)Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mCacheImageLoader:Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;

    return-object v0
.end method

.method static cleanDownloadDialog()V
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mDownloadDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 151
    sget-object v0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mDownloadDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 152
    :cond_0
    return-void
.end method

.method private createDownloadDialog(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 5
    .parameter "url"
    .parameter "text"

    .prologue
    .line 116
    move-object v2, p1

    .line 117
    .local v2, downloadUrl:Ljava/lang/String;
    move-object v1, p2

    .line 119
    .local v1, downloadText:Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 120
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 121
    iget-object v3, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mContext:Landroid/content/Context;

    const v4, 0x7f0c0279

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 122
    iget-object v3, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mContext:Landroid/content/Context;

    const v4, 0x7f0c027a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 123
    const v3, 0x1010355

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 125
    const v3, 0x104000a

    new-instance v4, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$1;

    invoke-direct {v4, p0, v2, v1}, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$1;-><init>(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 139
    const/high16 v3, 0x104

    new-instance v4, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$2;

    invoke-direct {v4, p0}, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$2;-><init>(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 146
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

.method private getSubdirectoryPath(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .parameter "name"
    .parameter "parentdirectory"

    .prologue
    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, FilePath:Ljava/lang/String;
    return-object v0
.end method

.method private preLoadImage(I)V
    .locals 8
    .parameter "position"

    .prologue
    .line 374
    iget-object v5, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mBeautyGirlDetailData:Lcom/baidu/bulletin/ui/detail/DetailDataList;

    invoke-virtual {v5, p1}, Lcom/baidu/bulletin/ui/detail/DetailDataList;->get(I)Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    move-result-object v1

    .line 375
    .local v1, channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 377
    .local v4, newsInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/NewsDetailInfo;>;"
    :try_start_0
    iget-object v5, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mDatabaseManager:Lcom/baidu/bulletin/db/manager/DatabaseManager;

    iget-wide v6, v1, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->_id:J

    long-to-int v6, v6

    invoke-virtual {v5, v6}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->queryNewsDetailByItemId(I)Ljava/util/List;
    :try_end_0
    .catch Lcom/baidu/bulletin/db/exception/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 381
    :goto_0
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;

    .line 382
    .local v3, newsInfo:Lcom/baidu/bulletin/db/entity/NewsDetailInfo;
    iget-object v5, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mCacheImageLoader:Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;

    iget-object v6, v3, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    invoke-virtual {v5, v6}, Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;->loadImage(Lcom/baidu/bulletin/db/entity/ImageInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 383
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 384
    invoke-static {}, Lcom/baidu/bulletin/utils/MediaMonitor;->isStorageAvailable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 385
    iget-object v5, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mAsyncImageLoader:Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;

    iget-object v6, v3, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iget-object v7, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mImageCallback:Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;

    invoke-virtual {v5, v6, v7}, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;->loadImage(Lcom/baidu/bulletin/db/entity/ImageInfo;Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;)V

    .line 390
    :cond_0
    :goto_1
    return-void

    .line 378
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #newsInfo:Lcom/baidu/bulletin/db/entity/NewsDetailInfo;
    :catch_0
    move-exception v2

    .line 379
    .local v2, e:Lcom/baidu/bulletin/db/exception/DatabaseException;
    invoke-virtual {v2}, Lcom/baidu/bulletin/db/exception/DatabaseException;->printStackTrace()V

    goto :goto_0

    .line 387
    .end local v2           #e:Lcom/baidu/bulletin/db/exception/DatabaseException;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v3       #newsInfo:Lcom/baidu/bulletin/db/entity/NewsDetailInfo;
    :cond_1
    iget-object v5, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mNoSdcardDetails:Ljava/util/List;

    iget-object v6, v3, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private showDownloadDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "url"
    .parameter "text"

    .prologue
    .line 105
    sget-object v0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mDownloadDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 106
    sget-object v0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mDownloadDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 108
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->createDownloadDialog(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    sput-object v0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mDownloadDialog:Landroid/app/Dialog;

    .line 110
    sget-object v0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mDownloadDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 111
    sget-object v0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mDownloadDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 113
    :cond_1
    return-void
.end method


# virtual methods
.method public copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "oldPath"
    .parameter "newPath"

    .prologue
    .line 255
    const/4 v7, 0x0

    .line 257
    .local v7, success:Z
    const/4 v2, 0x0

    .line 258
    .local v2, bytesum:I
    const/4 v1, 0x0

    .line 259
    .local v1, byteread:I
    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 260
    .local v6, oldfile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 261
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 262
    .local v5, inStream:Ljava/io/InputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 263
    .local v4, fs:Ljava/io/FileOutputStream;
    const/16 v8, 0x400

    new-array v0, v8, [B

    .line 265
    .local v0, buffer:[B
    :goto_0
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v8, -0x1

    if-eq v1, v8, :cond_1

    .line 266
    add-int/2addr v2, v1

    .line 267
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8, v2}, Ljava/io/PrintStream;->println(I)V

    .line 268
    const/4 v8, 0x0

    invoke-virtual {v4, v0, v8, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 274
    .end local v0           #buffer:[B
    .end local v4           #fs:Ljava/io/FileOutputStream;
    .end local v5           #inStream:Ljava/io/InputStream;
    .end local v6           #oldfile:Ljava/io/File;
    :catch_0
    move-exception v3

    .line 275
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 277
    .end local v3           #e:Ljava/lang/Exception;
    :cond_0
    :goto_1
    return v7

    .line 270
    .restart local v0       #buffer:[B
    .restart local v4       #fs:Ljava/io/FileOutputStream;
    .restart local v5       #inStream:Ljava/io/InputStream;
    .restart local v6       #oldfile:Ljava/io/File;
    :cond_1
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 271
    const/4 v7, 0x1

    goto :goto_1
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mContainerViewGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 288
    return-void
.end method

.method public getContentListener()Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentListener;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mContentListener:Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentListener;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x0

    return-object v0
.end method

.method public init()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 156
    iget-object v3, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mContainerViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v4, 0x7f030025

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mLayout:Landroid/widget/RelativeLayout;

    .line 160
    iget-object v3, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f0800af

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 161
    .local v0, backView:Landroid/widget/ImageView;
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/UIController;->getUIController()Lcom/baidu/bulletin/ui/logic/UIController;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v3, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f0800b0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mDownloadView:Landroid/widget/ImageView;

    .line 165
    iget-object v3, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f0800b2

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mConserveView:Landroid/widget/ImageView;

    .line 166
    iget-object v3, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mConserveView:Landroid/widget/ImageView;

    new-instance v4, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$3;

    invoke-direct {v4, p0}, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$3;-><init>(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iget-object v3, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f0800b1

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mShareView:Landroid/widget/ImageView;

    .line 223
    iget-object v3, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mShareView:Landroid/widget/ImageView;

    new-instance v4, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$4;

    invoke-direct {v4, p0}, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$4;-><init>(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object v3, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f0800ae

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/baidu/bulletin/ui/detail/ImageGallery;

    iput-object v3, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mGallery:Lcom/baidu/bulletin/ui/detail/ImageGallery;

    .line 232
    new-instance v2, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$ImageAdapter;

    iget-object v3, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$ImageAdapter;-><init>(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;Landroid/content/Context;)V

    .line 233
    .local v2, imageAdapter:Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$ImageAdapter;
    iget-object v3, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mGallery:Lcom/baidu/bulletin/ui/detail/ImageGallery;

    invoke-virtual {v3, v2}, Lcom/baidu/bulletin/ui/detail/ImageGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 234
    iget-object v3, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mGallery:Lcom/baidu/bulletin/ui/detail/ImageGallery;

    invoke-virtual {v3, v6}, Lcom/baidu/bulletin/ui/detail/ImageGallery;->setSpacing(I)V

    .line 235
    iget-object v3, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mGallery:Lcom/baidu/bulletin/ui/detail/ImageGallery;

    iget-object v4, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mBeautyGirlDetailData:Lcom/baidu/bulletin/ui/detail/DetailDataList;

    invoke-virtual {v4}, Lcom/baidu/bulletin/ui/detail/DetailDataList;->getCurrentIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/baidu/bulletin/ui/detail/ImageGallery;->setSelection(I)V

    .line 237
    iget-object v3, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mContainerViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 238
    iget-object v3, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mContainerViewGroup:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 240
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 241
    .local v1, dm:Landroid/util/DisplayMetrics;
    iget-object v3, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 242
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mScreenWidth:I

    .line 243
    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mScreenHeight:I

    .line 244
    iget-object v3, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f080041

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mLoadingProgressBar:Landroid/widget/ProgressBar;

    .line 245
    return-void
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->postInvalidate()V

    .line 283
    return-void
.end method

.method public onChanged(Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;Ljava/lang/Object;)V
    .locals 4
    .parameter "event"
    .parameter "data"

    .prologue
    .line 432
    sget-object v2, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;->MediaMountChange:Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;

    if-ne v2, p1, :cond_1

    .line 433
    invoke-static {}, Lcom/baidu/bulletin/utils/MediaMonitor;->isStorageAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 434
    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mNoSdcardDetails:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mNoSdcardDetails:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 435
    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mNoSdcardDetails:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/db/entity/ImageInfo;

    .line 436
    .local v1, imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;
    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mAsyncImageLoader:Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;

    iget-object v3, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mImageCallback:Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;

    invoke-virtual {v2, v1, v3}, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;->loadImage(Lcom/baidu/bulletin/db/entity/ImageInfo;Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;)V

    goto :goto_0

    .line 438
    .end local v1           #imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;
    :cond_0
    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mNoSdcardDetails:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 442
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public setButtonEnabled(Z)V
    .locals 2
    .parameter "b"

    .prologue
    .line 472
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mShareView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 473
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mConserveView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 474
    if-eqz p1, :cond_0

    .line 475
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mShareView:Landroid/widget/ImageView;

    const v1, 0x7f020316

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 476
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mConserveView:Landroid/widget/ImageView;

    const v1, 0x7f020103

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 481
    :goto_0
    return-void

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mShareView:Landroid/widget/ImageView;

    const v1, 0x7f020317

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 479
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mConserveView:Landroid/widget/ImageView;

    const v1, 0x7f020104

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setContentListener(Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentListener;)V
    .locals 0
    .parameter "contentListener"

    .prologue
    .line 420
    iput-object p1, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mContentListener:Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentListener;

    .line 421
    return-void
.end method

.method public updateDetailView(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 425
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mContentListener:Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentListener;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mContentListener:Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentListener;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentListener;->onContentUpdateFinish(Lcom/baidu/bulletin/ui/detail/IDetailContentView;Z)V

    .line 428
    :cond_0
    return-void
.end method

.method public updateOpView(Lcom/baidu/bulletin/db/entity/OpItemInfo;)V
    .locals 4
    .parameter "opItemInfo"

    .prologue
    const/16 v3, 0x8

    .line 446
    if-eqz p1, :cond_1

    .line 449
    iget-object v2, p1, Lcom/baidu/bulletin/db/entity/OpItemInfo;->opUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 450
    .local v1, downloadUrl:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 451
    iget-object v0, p1, Lcom/baidu/bulletin/db/entity/OpItemInfo;->text:Ljava/lang/String;

    .line 452
    .local v0, downloadText:Ljava/lang/String;
    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mDownloadView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 453
    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mDownloadView:Landroid/widget/ImageView;

    new-instance v3, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$6;

    invoke-direct {v3, p0, v0, v1}, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$6;-><init>(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 469
    .end local v0           #downloadText:Ljava/lang/String;
    .end local v1           #downloadUrl:Ljava/lang/String;
    :goto_0
    return-void

    .line 464
    .restart local v1       #downloadUrl:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mDownloadView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 467
    .end local v1           #downloadUrl:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mDownloadView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
