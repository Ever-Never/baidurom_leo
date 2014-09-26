.class public Lcom/inveno/newpiflow/widget/PiWindowView;
.super Ljava/lang/Object;
.source "PiWindowView.java"


# static fields
.field public static final MAX_TEXT_LEN:I = 0x32

.field private static final TAG:Ljava/lang/String; = "PiWindowView"


# instance fields
.field private bitmapUtils:Lcom/inveno/flyshare/BitmapUtils;

.field private lastClick:J

.field private mCameraDistance:I

.field public mChilds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field public mHeight:I

.field private mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mParent:Lcom/inveno/newpiflow/widget/StrenchListview;

.field public mPiData:Lcom/inveno/newpiflow/model/PiData;

.field public mWidth:I


# direct methods
.method public constructor <init>(Lcom/inveno/newpiflow/widget/StrenchListview;Lcom/inveno/flyshare/BitmapUtils;Lcom/android/volley/toolbox/ImageLoader;)V
    .locals 2
    .parameter "paramTTListView"
    .parameter "bitmapUtils"
    .parameter "imageLoader"

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p2, p0, Lcom/inveno/newpiflow/widget/PiWindowView;->bitmapUtils:Lcom/inveno/flyshare/BitmapUtils;

    .line 94
    iput-object p1, p0, Lcom/inveno/newpiflow/widget/PiWindowView;->mParent:Lcom/inveno/newpiflow/widget/StrenchListview;

    .line 95
    invoke-virtual {p1}, Lcom/inveno/newpiflow/widget/StrenchListview;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/newpiflow/widget/PiWindowView;->mContext:Landroid/content/Context;

    .line 96
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiWindowView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/newpiflow/widget/PiWindowView;->mInflater:Landroid/view/LayoutInflater;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inveno/newpiflow/widget/PiWindowView;->mChilds:Ljava/util/ArrayList;

    .line 98
    invoke-virtual {p1}, Lcom/inveno/newpiflow/widget/StrenchListview;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/inveno/newpiflow/widget/PiWindowView;->mCameraDistance:I

    .line 100
    iput-object p3, p0, Lcom/inveno/newpiflow/widget/PiWindowView;->mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/inveno/newpiflow/widget/PiWindowView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/inveno/newpiflow/widget/PiWindowView;->lastClick:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/inveno/newpiflow/widget/PiWindowView;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-wide p1, p0, Lcom/inveno/newpiflow/widget/PiWindowView;->lastClick:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/inveno/newpiflow/widget/PiWindowView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiWindowView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private displayImgByflowmode(Lcom/inveno/newpiflow/model/PiDataItem;Lcom/inveno/newpiflow/widget/PiImageView;)V
    .locals 10
    .parameter "piDataItem"
    .parameter "imageView"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 560
    iget-object v5, p0, Lcom/inveno/newpiflow/widget/PiWindowView;->mParent:Lcom/inveno/newpiflow/widget/StrenchListview;

    invoke-virtual {v5}, Lcom/inveno/newpiflow/widget/StrenchListview;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/inveno/newpiflow/widget/PiScrollView;

    .line 562
    .local v2, piScrollView:Lcom/inveno/newpiflow/widget/PiScrollView;
    iget-object v5, p0, Lcom/inveno/newpiflow/widget/PiWindowView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/inveno/newpiflow/model/PiDataItem;->getFlowNewinfo()Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/inveno/newpiflow/biz/OpDataUtil;->getTypeById(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 564
    .local v3, type:I
    iget-object v5, p0, Lcom/inveno/newpiflow/widget/PiWindowView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/inveno/newpiflow/tools/AdUtil;->getUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 565
    .local v4, url:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/inveno/newpiflow/widget/PiScrollView;->getCurrentMode()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    .line 568
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v3, :cond_1

    if-eq v8, v3, :cond_1

    .line 569
    new-instance v0, Lcom/inveno/flyshare/config/BitmapDisplayConfig;

    invoke-direct {v0}, Lcom/inveno/flyshare/config/BitmapDisplayConfig;-><init>()V

    .line 570
    .local v0, config:Lcom/inveno/flyshare/config/BitmapDisplayConfig;
    invoke-virtual {v0, v9}, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->setSaveToSdcard(Z)V

    .line 571
    iget-object v5, p0, Lcom/inveno/newpiflow/widget/PiWindowView;->bitmapUtils:Lcom/inveno/flyshare/BitmapUtils;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Lcom/inveno/newpiflow/model/PiDataItem;->imgUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&width="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/inveno/newpiflow/model/PiDataItem;->ivWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&height="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/inveno/newpiflow/model/PiDataItem;->ivHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/inveno/newpiflow/widget/PiImageView;->getCallBack()Lcom/inveno/flyshare/callback/BitmapLoadCallBack;

    move-result-object v7

    invoke-virtual {v5, p2, v6, v0, v7}, Lcom/inveno/flyshare/BitmapUtils;->display(Landroid/view/View;Ljava/lang/String;Lcom/inveno/flyshare/config/BitmapDisplayConfig;Lcom/inveno/flyshare/callback/BitmapLoadCallBack;)V

    .line 602
    .end local v0           #config:Lcom/inveno/flyshare/config/BitmapDisplayConfig;
    :cond_0
    :goto_0
    return-void

    .line 575
    :cond_1
    invoke-static {p2, v7, v7}, Lcom/android/volley/toolbox/ImageLoader;->getImageListener(Landroid/widget/ImageView;II)Lcom/android/volley/toolbox/ImageLoader$ImageListener;

    move-result-object v1

    .line 576
    .local v1, listener:Lcom/android/volley/toolbox/ImageLoader$ImageListener;
    iget-object v5, p0, Lcom/inveno/newpiflow/widget/PiWindowView;->mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    iget-object v6, p1, Lcom/inveno/newpiflow/model/PiDataItem;->imgUrl:Ljava/lang/String;

    invoke-virtual {v5, v6, v1}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 577
    invoke-virtual {p2, v8}, Lcom/inveno/newpiflow/widget/PiImageView;->setLoadBitmapOk(Z)V

    goto :goto_0

    .line 580
    .end local v1           #listener:Lcom/android/volley/toolbox/ImageLoader$ImageListener;
    :cond_2
    invoke-virtual {v2}, Lcom/inveno/newpiflow/widget/PiScrollView;->getCurrentMode()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    .line 582
    sget-object v5, Lcom/inveno/newpiflow/tools/NetWorkUtil$netType;->wifi:Lcom/inveno/newpiflow/tools/NetWorkUtil$netType;

    iget-object v6, p0, Lcom/inveno/newpiflow/widget/PiWindowView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/inveno/newpiflow/tools/NetWorkUtil;->getAPNType(Landroid/content/Context;)Lcom/inveno/newpiflow/tools/NetWorkUtil$netType;

    move-result-object v6

    if-ne v5, v6, :cond_0

    .line 585
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v3, :cond_3

    if-eq v8, v3, :cond_3

    .line 586
    new-instance v0, Lcom/inveno/flyshare/config/BitmapDisplayConfig;

    invoke-direct {v0}, Lcom/inveno/flyshare/config/BitmapDisplayConfig;-><init>()V

    .line 587
    .restart local v0       #config:Lcom/inveno/flyshare/config/BitmapDisplayConfig;
    invoke-virtual {v0, v9}, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->setSaveToSdcard(Z)V

    .line 588
    iget-object v5, p0, Lcom/inveno/newpiflow/widget/PiWindowView;->bitmapUtils:Lcom/inveno/flyshare/BitmapUtils;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Lcom/inveno/newpiflow/model/PiDataItem;->imgUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&width="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/inveno/newpiflow/model/PiDataItem;->ivWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&height="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/inveno/newpiflow/model/PiDataItem;->ivHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/inveno/newpiflow/widget/PiImageView;->getCallBack()Lcom/inveno/flyshare/callback/BitmapLoadCallBack;

    move-result-object v7

    invoke-virtual {v5, p2, v6, v0, v7}, Lcom/inveno/flyshare/BitmapUtils;->display(Landroid/view/View;Ljava/lang/String;Lcom/inveno/flyshare/config/BitmapDisplayConfig;Lcom/inveno/flyshare/callback/BitmapLoadCallBack;)V

    goto :goto_0

    .line 592
    .end local v0           #config:Lcom/inveno/flyshare/config/BitmapDisplayConfig;
    :cond_3
    invoke-static {p2, v7, v7}, Lcom/android/volley/toolbox/ImageLoader;->getImageListener(Landroid/widget/ImageView;II)Lcom/android/volley/toolbox/ImageLoader$ImageListener;

    move-result-object v1

    .line 593
    .restart local v1       #listener:Lcom/android/volley/toolbox/ImageLoader$ImageListener;
    iget-object v5, p0, Lcom/inveno/newpiflow/widget/PiWindowView;->mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    iget-object v6, p1, Lcom/inveno/newpiflow/model/PiDataItem;->imgUrl:Ljava/lang/String;

    invoke-virtual {v5, v6, v1}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 594
    invoke-virtual {p2, v8}, Lcom/inveno/newpiflow/widget/PiImageView;->setLoadBitmapOk(Z)V

    goto :goto_0
.end method

.method private displaySpecialByAd(Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;Landroid/view/View;)V
    .locals 4
    .parameter "hardAd"
    .parameter "itemView"

    .prologue
    .line 538
    if-eqz p1, :cond_0

    .line 539
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6709\u97f3\u9891\u89c6\u9891\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->getAdTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/inveno/flyshare/utils/LogTools;->showLogA(Ljava/lang/String;)V

    .line 540
    const-string v2, "6"

    invoke-virtual {p1}, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->getCtype()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 541
    const v2, 0x7f080146

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 543
    .local v0, mVideo:Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 550
    .end local v0           #mVideo:Landroid/view/ViewStub;
    :cond_0
    :goto_0
    return-void

    .line 544
    :cond_1
    const-string v2, "7"

    invoke-virtual {p1}, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->getCtype()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 545
    const v2, 0x7f080147

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 547
    .local v1, mVoice:Landroid/view/ViewStub;
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    goto :goto_0
.end method

.method private downloadIqiyiApk()V
    .locals 3

    .prologue
    .line 766
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiWindowView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c02f3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c02f4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0201cd

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c02f5

    new-instance v2, Lcom/inveno/newpiflow/widget/PiWindowView$3;

    invoke-direct {v2, p0}, Lcom/inveno/newpiflow/widget/PiWindowView$3;-><init>(Lcom/inveno/newpiflow/widget/PiWindowView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c02f6

    new-instance v2, Lcom/inveno/newpiflow/widget/PiWindowView$2;

    invoke-direct {v2, p0}, Lcom/inveno/newpiflow/widget/PiWindowView$2;-><init>(Lcom/inveno/newpiflow/widget/PiWindowView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 792
    return-void
.end method

.method private getExtraInfo(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .parameter "extra"

    .prologue
    .line 796
    const/4 v0, 0x0

    .line 797
    .local v0, rst:[Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "|"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 798
    const-string v1, "\\|"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 800
    :cond_0
    return-object v0
.end method

.method private getView(Lcom/inveno/newpiflow/model/PiDataItem;Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;I)Landroid/view/View;
    .locals 15
    .parameter "piDataItem"
    .parameter "hardAd"
    .parameter "currentTheme"

    .prologue
    .line 274
    const/4 v2, 0x0

    .line 275
    .local v2, itemView:Landroid/view/View;
    const/4 v9, 0x0

    .local v9, tvTittle:Landroid/widget/TextView;
    const/4 v7, 0x0

    .local v7, tvSrc:Landroid/widget/TextView;
    const/4 v8, 0x0

    .line 276
    .local v8, tvTime:Landroid/widget/TextView;
    const/4 v3, 0x0

    .line 278
    .local v3, iv:Lcom/inveno/newpiflow/widget/PiImageView;
    const/4 v1, 0x0

    .line 279
    .local v1, iqiyiLogo:Landroid/view/View;
    iget-object v11, p0, Lcom/inveno/newpiflow/widget/PiWindowView;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/inveno/newpiflow/model/PiDataItem;->getFlowNewinfo()Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;

    move-result-object v12

    invoke-virtual {v12}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/inveno/newpiflow/biz/OpDataUtil;->getTypeById(Landroid/content/Context;Ljava/lang/String;)I

    move-result v10

    .line 281
    .local v10, type:I
    const/4 v11, 0x1

    move-object/from16 v0, p1

    iget v12, v0, Lcom/inveno/newpiflow/model/PiDataItem;->viewType:I

    if-ne v11, v12, :cond_2

    .line 282
    iget-object v11, p0, Lcom/inveno/newpiflow/widget/PiWindowView;->mInflater:Landroid/view/LayoutInflater;

    const v12, 0x7f030061

    iget-object v13, p0, Lcom/inveno/newpiflow/widget/PiWindowView;->mParent:Lcom/inveno/newpiflow/widget/StrenchListview;

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 284
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Landroid/view/View;->setLayoutDirection(I)V

    .line 285
    const v11, 0x7f0800fd

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #iv:Lcom/inveno/newpiflow/widget/PiImageView;
    check-cast v3, Lcom/inveno/newpiflow/widget/PiImageView;

    .line 286
    .restart local v3       #iv:Lcom/inveno/newpiflow/widget/PiImageView;
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/inveno/newpiflow/model/PiDataItem;->setIv(Lcom/inveno/newpiflow/widget/PiImageView;)V

    .line 288
    const v11, 0x7f080145

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 289
    const/4 v11, 0x1

    if-ne v11, v10, :cond_1

    const/4 v11, 0x0

    :goto_0
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 291
    const v11, 0x7f080142

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9           #tvTittle:Landroid/widget/TextView;
    check-cast v9, Landroid/widget/TextView;

    .line 292
    .restart local v9       #tvTittle:Landroid/widget/TextView;
    const v11, 0x7f080143

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #tvSrc:Landroid/widget/TextView;
    check-cast v7, Landroid/widget/TextView;

    .line 293
    .restart local v7       #tvSrc:Landroid/widget/TextView;
    const v11, 0x7f080144

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .end local v8           #tvTime:Landroid/widget/TextView;
    check-cast v8, Landroid/widget/TextView;

    .line 295
    .restart local v8       #tvTime:Landroid/widget/TextView;
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/inveno/newpiflow/model/PiDataItem;->title:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/inveno/newpiflow/model/PiDataItem;->src:Ljava/lang/String;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/inveno/newpiflow/model/PiDataItem;->time:Ljava/lang/String;

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p1

    iget v12, v0, Lcom/inveno/newpiflow/model/PiDataItem;->ivWidth:I

    move-object/from16 v0, p1

    iget v13, v0, Lcom/inveno/newpiflow/model/PiDataItem;->ivHeight:I

    invoke-direct {v11, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v11}, Lcom/inveno/newpiflow/widget/PiImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    invoke-virtual/range {p1 .. p1}, Lcom/inveno/newpiflow/model/PiDataItem;->isBanner()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 302
    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 306
    :cond_0
    move-object/from16 v0, p2

    invoke-direct {p0, v0, v2}, Lcom/inveno/newpiflow/widget/PiWindowView;->displaySpecialByAd(Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;Landroid/view/View;)V

    .line 308
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v3}, Lcom/inveno/newpiflow/widget/PiWindowView;->displayImgByflowmode(Lcom/inveno/newpiflow/model/PiDataItem;Lcom/inveno/newpiflow/widget/PiImageView;)V

    .line 435
    :goto_1
    return-object v2

    .line 289
    :cond_1
    const/4 v11, 0x4

    goto :goto_0

    .line 309
    :cond_2
    const/4 v11, 0x2

    move-object/from16 v0, p1

    iget v12, v0, Lcom/inveno/newpiflow/model/PiDataItem;->viewType:I

    if-ne v11, v12, :cond_5

    .line 310
    iget-object v11, p0, Lcom/inveno/newpiflow/widget/PiWindowView;->mInflater:Landroid/view/LayoutInflater;

    const v12, 0x7f030062

    iget-object v13, p0, Lcom/inveno/newpiflow/widget/PiWindowView;->mParent:Lcom/inveno/newpiflow/widget/StrenchListview;

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 312
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Landroid/view/View;->setLayoutDirection(I)V

    .line 313
    const v11, 0x7f0800fd

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #iv:Lcom/inveno/newpiflow/widget/PiImageView;
    check-cast v3, Lcom/inveno/newpiflow/widget/PiImageView;

    .line 314
    .restart local v3       #iv:Lcom/inveno/newpiflow/widget/PiImageView;
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/inveno/newpiflow/model/PiDataItem;->setIv(Lcom/inveno/newpiflow/widget/PiImageView;)V

    .line 316
    const v11, 0x7f080145

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 317
    const/4 v11, 0x1

    if-ne v11, v10, :cond_4

    const/4 v11, 0x0

    :goto_2
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 319
    const v11, 0x7f080142

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9           #tvTittle:Landroid/widget/TextView;
    check-cast v9, Landroid/widget/TextView;

    .line 320
    .restart local v9       #tvTittle:Landroid/widget/TextView;
    const v11, 0x7f080143

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #tvSrc:Landroid/widget/TextView;
    check-cast v7, Landroid/widget/TextView;

    .line 321
    .restart local v7       #tvSrc:Landroid/widget/TextView;
    const v11, 0x7f080144

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .end local v8           #tvTime:Landroid/widget/TextView;
    check-cast v8, Landroid/widget/TextView;

    .line 323
    .restart local v8       #tvTime:Landroid/widget/TextView;
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/inveno/newpiflow/model/PiDataItem;->title:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/inveno/newpiflow/model/PiDataItem;->src:Ljava/lang/String;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/inveno/newpiflow/model/PiDataItem;->time:Ljava/lang/String;

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, p1

    iget v12, v0, Lcom/inveno/newpiflow/model/PiDataItem;->ivWidth:I

    move-object/from16 v0, p1

    iget v13, v0, Lcom/inveno/newpiflow/model/PiDataItem;->ivHeight:I

    invoke-direct {v11, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v11}, Lcom/inveno/newpiflow/widget/PiImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    invoke-virtual/range {p1 .. p1}, Lcom/inveno/newpiflow/model/PiDataItem;->isBanner()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 330
    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 332
    :cond_3
    move-object/from16 v0, p2

    invoke-direct {p0, v0, v2}, Lcom/inveno/newpiflow/widget/PiWindowView;->displaySpecialByAd(Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;Landroid/view/View;)V

    .line 334
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v3}, Lcom/inveno/newpiflow/widget/PiWindowView;->displayImgByflowmode(Lcom/inveno/newpiflow/model/PiDataItem;Lcom/inveno/newpiflow/widget/PiImageView;)V

    goto/16 :goto_1

    .line 317
    :cond_4
    const/4 v11, 0x4

    goto :goto_2

    .line 335
    :cond_5
    const/4 v11, 0x3

    move-object/from16 v0, p1

    iget v12, v0, Lcom/inveno/newpiflow/model/PiDataItem;->viewType:I

    if-ne v11, v12, :cond_8

    .line 336
    new-instance v11, Ljava/util/Random;

    invoke-direct {v11}, Ljava/util/Random;-><init>()V

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 337
    .local v4, s:I
    if-nez v4, :cond_7

    .line 338
    iget-object v11, p0, Lcom/inveno/newpiflow/widget/PiWindowView;->mInflater:Landroid/view/LayoutInflater;

    const v12, 0x7f030065

    iget-object v13, p0, Lcom/inveno/newpiflow/widget/PiWindowView;->mParent:Lcom/inveno/newpiflow/widget/StrenchListview;

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 343
    :goto_3
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Landroid/view/View;->setLayoutDirection(I)V

    .line 344
    const v11, 0x7f0800fd

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #iv:Lcom/inveno/newpiflow/widget/PiImageView;
    check-cast v3, Lcom/inveno/newpiflow/widget/PiImageView;

    .line 345
    .restart local v3       #iv:Lcom/inveno/newpiflow/widget/PiImageView;
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/inveno/newpiflow/model/PiDataItem;->setIv(Lcom/inveno/newpiflow/widget/PiImageView;)V

    .line 347
    const v11, 0x7f080142

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9           #tvTittle:Landroid/widget/TextView;
    check-cast v9, Landroid/widget/TextView;

    .line 348
    .restart local v9       #tvTittle:Landroid/widget/TextView;
    const v11, 0x7f080143

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #tvSrc:Landroid/widget/TextView;
    check-cast v7, Landroid/widget/TextView;

    .line 349
    .restart local v7       #tvSrc:Landroid/widget/TextView;
    const v11, 0x7f080144

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .end local v8           #tvTime:Landroid/widget/TextView;
    check-cast v8, Landroid/widget/TextView;

    .line 351
    .restart local v8       #tvTime:Landroid/widget/TextView;
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/inveno/newpiflow/model/PiDataItem;->title:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/inveno/newpiflow/model/PiDataItem;->src:Ljava/lang/String;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/inveno/newpiflow/model/PiDataItem;->time:Ljava/lang/String;

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p1

    iget v12, v0, Lcom/inveno/newpiflow/model/PiDataItem;->ivWidth:I

    move-object/from16 v0, p1

    iget v13, v0, Lcom/inveno/newpiflow/model/PiDataItem;->ivHeight:I

    invoke-direct {v11, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v11}, Lcom/inveno/newpiflow/widget/PiImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 359
    move-object/from16 v0, p1

    iget v11, v0, Lcom/inveno/newpiflow/model/PiDataItem;->ivHeight:I

    const/16 v12, 0xdc

    if-ge v11, v12, :cond_6

    .line 360
    const/4 v11, 0x2

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 362
    :cond_6
    move-object/from16 v0, p2

    invoke-direct {p0, v0, v2}, Lcom/inveno/newpiflow/widget/PiWindowView;->displaySpecialByAd(Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;Landroid/view/View;)V

    .line 364
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v3}, Lcom/inveno/newpiflow/widget/PiWindowView;->displayImgByflowmode(Lcom/inveno/newpiflow/model/PiDataItem;Lcom/inveno/newpiflow/widget/PiImageView;)V

    goto/16 :goto_1

    .line 341
    :cond_7
    iget-object v11, p0, Lcom/inveno/newpiflow/widget/PiWindowView;->mInflater:Landroid/view/LayoutInflater;

    const v12, 0x7f030067

    iget-object v13, p0, Lcom/inveno/newpiflow/widget/PiWindowView;->mParent:Lcom/inveno/newpiflow/widget/StrenchListview;

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_3

    .line 365
    .end local v4           #s:I
    :cond_8
    const/4 v11, 0x4

    move-object/from16 v0, p1

    iget v12, v0, Lcom/inveno/newpiflow/model/PiDataItem;->viewType:I

    if-ne v11, v12, :cond_a

    .line 366
    iget-object v11, p0, Lcom/inveno/newpiflow/widget/PiWindowView;->mInflater:Landroid/view/LayoutInflater;

    const v12, 0x7f030064

    iget-object v13, p0, Lcom/inveno/newpiflow/widget/PiWindowView;->mParent:Lcom/inveno/newpiflow/widget/StrenchListview;

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 368
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Landroid/view/View;->setLayoutDirection(I)V

    .line 369
    const v11, 0x7f0800fd

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #iv:Lcom/inveno/newpiflow/widget/PiImageView;
    check-cast v3, Lcom/inveno/newpiflow/widget/PiImageView;

    .line 370
    .restart local v3       #iv:Lcom/inveno/newpiflow/widget/PiImageView;
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/inveno/newpiflow/model/PiDataItem;->setIv(Lcom/inveno/newpiflow/widget/PiImageView;)V

    .line 372
    const v11, 0x7f080142

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9           #tvTittle:Landroid/widget/TextView;
    check-cast v9, Landroid/widget/TextView;

    .line 373
    .restart local v9       #tvTittle:Landroid/widget/TextView;
    const v11, 0x7f080143

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #tvSrc:Landroid/widget/TextView;
    check-cast v7, Landroid/widget/TextView;

    .line 374
    .restart local v7       #tvSrc:Landroid/widget/TextView;
    const v11, 0x7f080144

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .end local v8           #tvTime:Landroid/widget/TextView;
    check-cast v8, Landroid/widget/TextView;

    .line 376
    .restart local v8       #tvTime:Landroid/widget/TextView;
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/inveno/newpiflow/model/PiDataItem;->title:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/inveno/newpiflow/model/PiDataItem;->src:Ljava/lang/String;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/inveno/newpiflow/model/PiDataItem;->time:Ljava/lang/String;

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p1

    iget v12, v0, Lcom/inveno/newpiflow/model/PiDataItem;->ivWidth:I

    move-object/from16 v0, p1

    iget v13, v0, Lcom/inveno/newpiflow/model/PiDataItem;->ivHeight:I

    invoke-direct {v11, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v11}, Lcom/inveno/newpiflow/widget/PiImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 382
    invoke-virtual/range {p1 .. p1}, Lcom/inveno/newpiflow/model/PiDataItem;->isBanner()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 383
    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 385
    :cond_9
    move-object/from16 v0, p2

    invoke-direct {p0, v0, v2}, Lcom/inveno/newpiflow/widget/PiWindowView;->displaySpecialByAd(Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;Landroid/view/View;)V

    .line 387
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v3}, Lcom/inveno/newpiflow/widget/PiWindowView;->displayImgByflowmode(Lcom/inveno/newpiflow/model/PiDataItem;Lcom/inveno/newpiflow/widget/PiImageView;)V

    goto/16 :goto_1

    .line 388
    :cond_a
    const/4 v11, 0x5

    move-object/from16 v0, p1

    iget v12, v0, Lcom/inveno/newpiflow/model/PiDataItem;->viewType:I

    if-ne v11, v12, :cond_d

    .line 389
    iget-object v11, p0, Lcom/inveno/newpiflow/widget/PiWindowView;->mInflater:Landroid/view/LayoutInflater;

    const v12, 0x7f030066

    iget-object v13, p0, Lcom/inveno/newpiflow/widget/PiWindowView;->mParent:Lcom/inveno/newpiflow/widget/StrenchListview;

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 391
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Landroid/view/View;->setLayoutDirection(I)V

    .line 392
    const v11, 0x7f080142

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9           #tvTittle:Landroid/widget/TextView;
    check-cast v9, Landroid/widget/TextView;

    .line 393
    .restart local v9       #tvTittle:Landroid/widget/TextView;
    const v11, 0x7f080150

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 394
    .local v6, tvSnap:Landroid/widget/TextView;
    const v11, 0x7f080143

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #tvSrc:Landroid/widget/TextView;
    check-cast v7, Landroid/widget/TextView;

    .line 395
    .restart local v7       #tvSrc:Landroid/widget/TextView;
    const v11, 0x7f080144

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .end local v8           #tvTime:Landroid/widget/TextView;
    check-cast v8, Landroid/widget/TextView;

    .line 397
    .restart local v8       #tvTime:Landroid/widget/TextView;
    const v11, 0x7f080145

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 398
    const/4 v11, 0x1

    if-ne v11, v10, :cond_b

    const/4 v11, 0x0

    :goto_4
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 400
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/inveno/newpiflow/model/PiDataItem;->snippet:Ljava/lang/String;

    invoke-static {v11}, Lcom/inveno/flyshare/utils/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 401
    const/16 v11, 0x8

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 402
    move-object/from16 v0, p1

    iget v11, v0, Lcom/inveno/newpiflow/model/PiDataItem;->maxLine:I

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 403
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/inveno/newpiflow/model/PiDataItem;->title:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    :goto_5
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/inveno/newpiflow/model/PiDataItem;->src:Ljava/lang/String;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/inveno/newpiflow/model/PiDataItem;->time:Ljava/lang/String;

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 398
    :cond_b
    const/4 v11, 0x4

    goto :goto_4

    .line 405
    :cond_c
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/inveno/newpiflow/model/PiDataItem;->title:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    move-object/from16 v0, p1

    iget v11, v0, Lcom/inveno/newpiflow/model/PiDataItem;->maxLine:I

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 407
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/inveno/newpiflow/model/PiDataItem;->snippet:Ljava/lang/String;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 415
    .end local v6           #tvSnap:Landroid/widget/TextView;
    :cond_d
    iget-object v11, p0, Lcom/inveno/newpiflow/widget/PiWindowView;->mInflater:Landroid/view/LayoutInflater;

    const v12, 0x7f030063

    iget-object v13, p0, Lcom/inveno/newpiflow/widget/PiWindowView;->mParent:Lcom/inveno/newpiflow/widget/StrenchListview;

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 417
    const v11, 0x7f080142

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9           #tvTittle:Landroid/widget/TextView;
    check-cast v9, Landroid/widget/TextView;

    .line 418
    .restart local v9       #tvTittle:Landroid/widget/TextView;
    const v11, 0x7f080144

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .end local v8           #tvTime:Landroid/widget/TextView;
    check-cast v8, Landroid/widget/TextView;

    .line 419
    .restart local v8       #tvTime:Landroid/widget/TextView;
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/inveno/newpiflow/model/PiDataItem;->snippet:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 420
    .local v5, snippet:Ljava/lang/String;
    invoke-static {v5}, Lcom/inveno/flyshare/utils/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 421
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/inveno/newpiflow/model/PiDataItem;->title:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 422
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/inveno/newpiflow/model/PiDataItem;->src:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/inveno/newpiflow/model/PiDataItem;->time:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 433
    :goto_6
    invoke-direct {p0, v2, v5}, Lcom/inveno/newpiflow/widget/PiWindowView;->setSnippet(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 425
    :cond_e
    const-string v11, "PiWindowView"

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/inveno/newpiflow/model/PiDataItem;->snippet:Ljava/lang/String;

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/inveno/newpiflow/model/PiDataItem;->title:Ljava/lang/String;

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/inveno/newpiflow/model/PiDataItem;->src:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/inveno/newpiflow/model/PiDataItem;->time:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6
.end method

.method private initViews(Landroid/view/View;Lcom/inveno/newpiflow/widget/PiImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/inveno/newpiflow/model/PiDataItem;I)V
    .locals 3
    .parameter "itemView"
    .parameter "iv"
    .parameter "tvTittle"
    .parameter "tvSrc"
    .parameter "tvTime"
    .parameter "piDataItem"
    .parameter "layoutRes"

    .prologue
    .line 518
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiWindowView;->mInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiWindowView;->mParent:Lcom/inveno/newpiflow/widget/StrenchListview;

    const/4 v2, 0x0

    invoke-virtual {v0, p7, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 519
    const v0, 0x7f0800fd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .end local p2
    check-cast p2, Lcom/inveno/newpiflow/widget/PiImageView;

    .line 520
    .restart local p2
    invoke-virtual {p6, p2}, Lcom/inveno/newpiflow/model/PiDataItem;->setIv(Lcom/inveno/newpiflow/widget/PiImageView;)V

    .line 522
    const v0, 0x7f080142

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .end local p3
    check-cast p3, Landroid/widget/TextView;

    .line 523
    .restart local p3
    const v0, 0x7f080143

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    .end local p4
    check-cast p4, Landroid/widget/TextView;

    .line 524
    .restart local p4
    const v0, 0x7f080144

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    .end local p5
    check-cast p5, Landroid/widget/TextView;

    .line 526
    .restart local p5
    iget-object v0, p6, Lcom/inveno/newpiflow/model/PiDataItem;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 527
    iget-object v0, p6, Lcom/inveno/newpiflow/model/PiDataItem;->src:Ljava/lang/String;

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 528
    iget-object v0, p6, Lcom/inveno/newpiflow/model/PiDataItem;->time:Ljava/lang/String;

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    return-void
.end method

.method private setSnippet(Landroid/view/View;Ljava/lang/String;)V
    .locals 22
    .parameter "itemView"
    .parameter "snippet"

    .prologue
    .line 438
    const/16 v5, 0x14

    .line 439
    .local v5, contentTextSize:I
    const/4 v2, 0x7

    .line 440
    .local v2, MAX:I
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 441
    .local v11, paint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/inveno/newpiflow/widget/PiWindowView;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    int-to-float v0, v5

    move/from16 v20, v0

    invoke-static/range {v19 .. v20}, Lcom/inveno/newpiflow/tools/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/inveno/newpiflow/widget/PiWindowView;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/inveno/newpiflow/tools/DeviceConfig;->getInstance(Landroid/content/Context;)Lcom/inveno/newpiflow/tools/DeviceConfig;

    move-result-object v4

    .line 443
    .local v4, config:Lcom/inveno/newpiflow/tools/DeviceConfig;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/inveno/newpiflow/widget/PiWindowView;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0b00e8

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    mul-int/lit8 v10, v19, 0x2

    .line 444
    .local v10, padding:I
    const/16 v9, 0x1e

    .line 445
    .local v9, margin:I
    const/16 v18, 0x0

    .line 446
    .local v18, wordWidth:I
    iget v0, v4, Lcom/inveno/newpiflow/tools/DeviceConfig;->w:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    sub-int v19, v19, v10

    sub-int v19, v19, v9

    sub-int v17, v19, v18

    .line 447
    .local v17, width:I
    const-string v19, "PiWindowView"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "wordWidth = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const-string v19, "PiWindowView"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "width = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_8

    .line 450
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 451
    .local v3, charArray:[C
    if-eqz v3, :cond_8

    .line 452
    const/16 v16, 0x0

    .line 453
    .local v16, txtWidth:F
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 454
    .local v14, snipList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 455
    .local v12, sb:Ljava/lang/StringBuffer;
    const/4 v6, 0x0

    .line 456
    .local v6, cutFlag:Z
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    array-length v0, v3

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v7, v0, :cond_2

    .line 457
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v16

    .line 458
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    cmpg-float v19, v19, v16

    if-gtz v19, :cond_4

    .line 459
    const-string v19, "PiWindowView"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "snip "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const-string v19, "PiWindowView"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "txtWidth "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    .line 462
    .local v15, tmp:Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_0

    .line 463
    const/16 v19, 0x0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 464
    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    :cond_0
    new-instance v12, Ljava/lang/StringBuffer;

    .end local v12           #sb:Ljava/lang/StringBuffer;
    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 467
    .restart local v12       #sb:Ljava/lang/StringBuffer;
    if-lez v7, :cond_1

    .line 468
    add-int/lit8 v19, v7, -0x1

    aget-char v19, v3, v19

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 473
    .end local v15           #tmp:Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-lt v0, v2, :cond_6

    .line 474
    array-length v0, v3

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    if-ge v7, v0, :cond_5

    const/4 v6, 0x1

    .line 479
    :cond_2
    :goto_2
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ne v0, v2, :cond_3

    if-eqz v6, :cond_3

    .line 480
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v19, 0x6

    move/from16 v0, v19

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "..."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 481
    .local v8, lastOne:Ljava/lang/String;
    const/16 v19, 0x6

    move/from16 v0, v19

    invoke-interface {v14, v0, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 483
    .end local v8           #lastOne:Ljava/lang/String;
    :cond_3
    const/16 v19, 0x7

    move/from16 v0, v19

    new-array v13, v0, [Landroid/widget/TextView;

    const/16 v20, 0x0

    const v19, 0x7f080149

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    aput-object v19, v13, v20

    const/16 v20, 0x1

    const v19, 0x7f08014a

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    aput-object v19, v13, v20

    const/16 v20, 0x2

    const v19, 0x7f08014b

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    aput-object v19, v13, v20

    const/16 v20, 0x3

    const v19, 0x7f08014c

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    aput-object v19, v13, v20

    const/16 v20, 0x4

    const v19, 0x7f08014d

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    aput-object v19, v13, v20

    const/16 v20, 0x5

    const v19, 0x7f08014e

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    aput-object v19, v13, v20

    const/16 v20, 0x6

    const v19, 0x7f08014f

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    aput-object v19, v13, v20

    .line 492
    .local v13, snapViewList:[Landroid/widget/TextView;
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_8

    .line 493
    const/4 v7, 0x0

    :goto_3
    array-length v0, v13

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v7, v0, :cond_8

    .line 494
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v7, v0, :cond_7

    .line 495
    aget-object v19, v13, v7

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 496
    aget-object v20, v13, v7

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/CharSequence;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 493
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 470
    .end local v13           #snapViewList:[Landroid/widget/TextView;
    :cond_4
    array-length v0, v3

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    if-ne v7, v0, :cond_1

    .line 471
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 474
    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 477
    :cond_6
    aget-char v19, v3, v7

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 456
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 498
    .restart local v13       #snapViewList:[Landroid/widget/TextView;
    :cond_7
    aget-object v19, v13, v7

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 504
    .end local v3           #charArray:[C
    .end local v6           #cutFlag:Z
    .end local v7           #i:I
    .end local v12           #sb:Ljava/lang/StringBuffer;
    .end local v13           #snapViewList:[Landroid/widget/TextView;
    .end local v14           #snipList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v16           #txtWidth:F
    :cond_8
    return-void
.end method


# virtual methods
.method public Layout(IIII)V
    .locals 8
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 165
    iget-object v3, p0, Lcom/inveno/newpiflow/widget/PiWindowView;->mChilds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 166
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inveno/newpiflow/model/PiDataItem;

    .line 167
    .local v2, piDataItem:Lcom/inveno/newpiflow/model/PiDataItem;
    iget v3, v2, Lcom/inveno/newpiflow/model/PiDataItem;->x:I

    iget v4, v2, Lcom/inveno/newpiflow/model/PiDataItem;->y:I

    add-int/2addr v4, p2

    iget v5, v2, Lcom/inveno/newpiflow/model/PiDataItem;->x:I

    iget v6, v2, Lcom/inveno/newpiflow/model/PiDataItem;->width:I

    add-int/2addr v5, v6

    iget v6, v2, Lcom/inveno/newpiflow/model/PiDataItem;->y:I

    add-int/2addr v6, p2

    iget v7, v2, Lcom/inveno/newpiflow/model/PiDataItem;->height:I

    add-int/2addr v6, v7

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 170
    .end local v0           #child:Landroid/view/View;
    .end local v2           #piDataItem:Lcom/inveno/newpiflow/model/PiDataItem;
    :cond_0
    return-void
.end method

.method public Measure(II)V
    .locals 6
    .parameter "width"
    .parameter "height"

    .prologue
    const/high16 v5, 0x4000

    .line 179
    iget-object v3, p0, Lcom/inveno/newpiflow/widget/PiWindowView;->mChilds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 180
    .local v0, child:Landroid/view/View;
    iput p1, p0, Lcom/inveno/newpiflow/widget/PiWindowView;->mWidth:I

    .line 181
    iput p2, p0, Lcom/inveno/newpiflow/widget/PiWindowView;->mHeight:I

    .line 182
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inveno/newpiflow/model/PiDataItem;

    .line 183
    .local v1, dataItem:Lcom/inveno/newpiflow/model/PiDataItem;
    iget v3, v1, Lcom/inveno/newpiflow/model/PiDataItem;->width:I

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget v4, v1, Lcom/inveno/newpiflow/model/PiDataItem;->height:I

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->measure(II)V

    .line 186
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-le v3, v4, :cond_0

    .line 187
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setPivotX(F)V

    .line 188
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setPivotY(F)V

    goto :goto_0

    .line 191
    .end local v0           #child:Landroid/view/View;
    .end local v1           #dataItem:Lcom/inveno/newpiflow/model/PiDataItem;
    :cond_1
    return-void
.end method

.method public checkApp(Ljava/lang/String;Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;
    .locals 6
    .parameter "packageName"
    .parameter "intent"

    .prologue
    .line 810
    iget-object v4, p0, Lcom/inveno/newpiflow/widget/PiWindowView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, p2, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 812
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 813
    .local v3, size:I
    const/4 v2, 0x0

    .line 814
    .local v2, resolveInfo:Landroid/content/pm/ResolveInfo;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 816
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 819
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #resolveInfo:Landroid/content/pm/ResolveInfo;
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 824
    .restart local v2       #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_0
    return-object v2

    .line 814
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onDetacheFromWindow()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 111
    const-string v3, "\u79fb\u9664\u5b50view"

    invoke-static {v3}, Lcom/inveno/flyshare/utils/LogTools;->showLogA(Ljava/lang/String;)V

    .line 113
    iget-object v3, p0, Lcom/inveno/newpiflow/widget/PiWindowView;->mPiData:Lcom/inveno/newpiflow/model/PiData;

    if-eqz v3, :cond_3

    .line 114
    iget-object v3, p0, Lcom/inveno/newpiflow/widget/PiWindowView;->mChilds:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 115
    iget-object v3, p0, Lcom/inveno/newpiflow/widget/PiWindowView;->mChilds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 116
    .local v2, v:Landroid/view/View;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-le v3, v4, :cond_0

    .line 117
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 118
    :cond_0
    iget-object v3, p0, Lcom/inveno/newpiflow/widget/PiWindowView;->mParent:Lcom/inveno/newpiflow/widget/StrenchListview;

    invoke-virtual {v3, v2}, Lcom/inveno/newpiflow/widget/StrenchListview;->removeView(Landroid/view/View;)V

    .line 120
    const v3, 0x7f0800fd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/inveno/newpiflow/widget/PiImageView;

    .line 121
    .local v1, iv:Lcom/inveno/newpiflow/widget/PiImageView;
    if-eqz v1, :cond_1

    .line 122
    invoke-virtual {v1}, Lcom/inveno/newpiflow/widget/PiImageView;->getCallBack()Lcom/inveno/flyshare/callback/BitmapLoadCallBack;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/inveno/flyshare/BitmapUtils;->cancelWork(Landroid/view/View;Lcom/inveno/flyshare/callback/BitmapLoadCallBack;)Z

    .line 125
    :cond_1
    invoke-virtual {v2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 126
    invoke-virtual {v2}, Landroid/view/View;->destroyDrawingCache()V

    goto :goto_0

    .line 129
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #iv:Lcom/inveno/newpiflow/widget/PiImageView;
    .end local v2           #v:Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/PiWindowView;->release()V

    .line 132
    :cond_3
    return-void
.end method

.method public openFirstAD(Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;)Z
    .locals 10
    .parameter "showFlowHardAd"

    .prologue
    const/4 v7, 0x0

    .line 831
    invoke-virtual {p1}, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->getCppackage()Ljava/lang/String;

    move-result-object v5

    .line 832
    .local v5, packageName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 833
    .local v0, clsName:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->getLinkurl()Ljava/lang/String;

    move-result-object v4

    .line 834
    .local v4, linkUrl:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 835
    const-string v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 837
    const-string v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 840
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    const/4 v9, 0x0

    invoke-direct {v3, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 841
    .local v3, intent:Landroid/content/Intent;
    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 843
    invoke-virtual {p0, v5, v3}, Lcom/inveno/newpiflow/widget/PiWindowView;->checkApp(Ljava/lang/String;Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 845
    .local v6, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v6, :cond_1

    .line 847
    invoke-static {v0}, Lcom/inveno/flyshare/utils/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 848
    const-string v7, "wf"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u5e7f\u544a\u5305\u540d\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  act\u540d:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/inveno/flyshare/utils/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    const-string v7, "wf"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u5e7f\u544alinkUrl\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/inveno/flyshare/utils/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 853
    .local v2, i:Landroid/content/Intent;
    new-instance v7, Landroid/content/ComponentName;

    invoke-direct {v7, v5, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 854
    const-string v7, "url"

    invoke-virtual {v2, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 855
    iget-object v7, p0, Lcom/inveno/newpiflow/widget/PiWindowView;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 871
    .end local v2           #i:Landroid/content/Intent;
    :goto_0
    const/4 v7, 0x1

    .line 874
    :cond_1
    return v7

    .line 856
    :catch_0
    move-exception v1

    .line 857
    .local v1, e:Landroid/content/ActivityNotFoundException;
    const-string v7, "wf"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "activityNotFound \uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/inveno/flyshare/utils/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 862
    iget-object v7, p0, Lcom/inveno/newpiflow/widget/PiWindowView;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 866
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :cond_2
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 869
    iget-object v7, p0, Lcom/inveno/newpiflow/widget/PiWindowView;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 879
    iput-object v2, p0, Lcom/inveno/newpiflow/widget/PiWindowView;->mContext:Landroid/content/Context;

    .line 880
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiWindowView;->mChilds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 881
    iput-object v2, p0, Lcom/inveno/newpiflow/widget/PiWindowView;->mParent:Lcom/inveno/newpiflow/widget/StrenchListview;

    .line 882
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiWindowView;->mPiData:Lcom/inveno/newpiflow/model/PiData;

    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiWindowView;->bitmapUtils:Lcom/inveno/flyshare/BitmapUtils;

    invoke-virtual {v0, v1}, Lcom/inveno/newpiflow/model/PiData;->release(Lcom/inveno/flyshare/BitmapUtils;)V

    .line 883
    iput-object v2, p0, Lcom/inveno/newpiflow/widget/PiWindowView;->mPiData:Lcom/inveno/newpiflow/model/PiData;

    .line 884
    return-void
.end method

.method public setTTData(Lcom/inveno/newpiflow/model/PiData;)V
    .locals 8
    .parameter "piData"

    .prologue
    .line 199
    iput-object p1, p0, Lcom/inveno/newpiflow/widget/PiWindowView;->mPiData:Lcom/inveno/newpiflow/model/PiData;

    .line 200
    if-eqz p1, :cond_0

    .line 201
    iget-object v6, p0, Lcom/inveno/newpiflow/widget/PiWindowView;->mPiData:Lcom/inveno/newpiflow/model/PiData;

    iget-object v6, v6, Lcom/inveno/newpiflow/model/PiData;->items:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 202
    .local v2, localIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/inveno/newpiflow/model/PiDataItem;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 264
    .end local v2           #localIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/inveno/newpiflow/model/PiDataItem;>;"
    :cond_0
    return-void

    .line 205
    .restart local v2       #localIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/inveno/newpiflow/model/PiDataItem;>;"
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "items size:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/inveno/newpiflow/widget/PiWindowView;->mPiData:Lcom/inveno/newpiflow/model/PiData;

    iget-object v7, v7, Lcom/inveno/newpiflow/model/PiData;->items:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/inveno/flyshare/utils/LogTools;->showLogA(Ljava/lang/String;)V

    .line 207
    iget-object v6, p0, Lcom/inveno/newpiflow/widget/PiWindowView;->mPiData:Lcom/inveno/newpiflow/model/PiData;

    iget-object v6, v6, Lcom/inveno/newpiflow/model/PiData;->items:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/inveno/newpiflow/model/PiDataItem;

    .line 208
    .local v4, piDataItem:Lcom/inveno/newpiflow/model/PiDataItem;
    invoke-virtual {v4}, Lcom/inveno/newpiflow/model/PiDataItem;->getFlowNewinfo()Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;

    move-result-object v3

    .line 209
    .local v3, newInfo:Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;
    invoke-virtual {v4}, Lcom/inveno/newpiflow/model/PiDataItem;->getUploadInfos()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 213
    .local v5, uploadInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;>;"
    invoke-virtual {v3}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->getShowFlowHardAd()Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;

    move-result-object v6

    invoke-virtual {p1}, Lcom/inveno/newpiflow/model/PiData;->getTheme()I

    move-result v7

    invoke-direct {p0, v4, v6, v7}, Lcom/inveno/newpiflow/widget/PiWindowView;->getView(Lcom/inveno/newpiflow/model/PiDataItem;Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;I)Landroid/view/View;

    move-result-object v1

    .line 216
    .local v1, itemView:Landroid/view/View;
    invoke-virtual {v1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 217
    new-instance v6, Lcom/inveno/newpiflow/widget/PiWindowView$1;

    invoke-direct {v6, p0, v3, v5}, Lcom/inveno/newpiflow/widget/PiWindowView$1;-><init>(Lcom/inveno/newpiflow/widget/PiWindowView;Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xe

    if-le v6, v7, :cond_2

    .line 258
    iget v6, p0, Lcom/inveno/newpiflow/widget/PiWindowView;->mCameraDistance:I

    int-to-float v6, v6

    invoke-virtual {v1, v6}, Landroid/view/View;->setCameraDistance(F)V

    .line 259
    :cond_2
    iget-object v6, p0, Lcom/inveno/newpiflow/widget/PiWindowView;->mChilds:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    iget-object v6, p0, Lcom/inveno/newpiflow/widget/PiWindowView;->mParent:Lcom/inveno/newpiflow/widget/StrenchListview;

    invoke-virtual {v6, v1}, Lcom/inveno/newpiflow/widget/StrenchListview;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public startDeailAct(Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;Ljava/util/ArrayList;)V
    .locals 19
    .parameter "showFlowNewinfo"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 607
    .local p2, uploadInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/inveno/newpiflow/widget/PiWindowView;->mContext:Landroid/content/Context;

    if-eqz v15, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->getId()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 764
    :cond_0
    :goto_0
    return-void

    .line 610
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/inveno/newpiflow/widget/PiWindowView;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->getId()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/inveno/newpiflow/biz/OpDataUtil;->getTypeById(Landroid/content/Context;Ljava/lang/String;)I

    move-result v14

    .line 613
    .local v14, type:I
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 614
    .local v7, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v15, "com.inveno.flow"

    const-string v16, "com.inveno.flow.activity.ext.WFNewsDetailActivity"

    move-object/from16 v0, v16

    invoke-direct {v1, v15, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    .local v1, componentName:Landroid/content/ComponentName;
    packed-switch v14, :pswitch_data_0

    goto :goto_0

    .line 618
    :pswitch_0
    const/4 v15, 0x0

    invoke-static {v15}, Lcom/inveno/newpiflow/tools/InvenoUBC;->statForClickInfo(B)V

    .line 619
    const-string v15, "wf_news_bean"

    move-object/from16 v0, p1

    invoke-virtual {v7, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 622
    const-string v15, "flows"

    move-object/from16 v0, p2

    invoke-virtual {v7, v15, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 623
    const-string v15, "pvUrl"

    const-string v16, "http://baiyixun.lem88.com/click"

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 624
    const-string v15, "theme"

    const-string v16, "theme"

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/inveno/newpiflow/widget/PiWindowView;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v16 .. v18}, Lcom/inveno/newpiflow/tools/Tools;->getInformain(Ljava/lang/String;ILandroid/content/Context;)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 625
    const-string v15, "mode"

    const-string v16, "mode"

    const/16 v17, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/inveno/newpiflow/widget/PiWindowView;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v16 .. v18}, Lcom/inveno/newpiflow/tools/Tools;->getInformain(Ljava/lang/String;ILandroid/content/Context;)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 626
    invoke-virtual {v7, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 628
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/inveno/newpiflow/widget/PiWindowView;->mContext:Landroid/content/Context;

    invoke-virtual {v15, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 629
    :catch_0
    move-exception v2

    .line 630
    .local v2, e:Landroid/content/ActivityNotFoundException;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/inveno/newpiflow/widget/PiWindowView;->mContext:Landroid/content/Context;

    const-string v16, "\u534e\u7a97\u5df2\u505c\u7528\u6216\u672a\u5b89\u88c5"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 634
    .end local v2           #e:Landroid/content/ActivityNotFoundException;
    :pswitch_1
    const/4 v15, 0x2

    invoke-static {v15}, Lcom/inveno/newpiflow/tools/InvenoUBC;->statForClickInfo(B)V

    .line 635
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/inveno/newpiflow/widget/PiWindowView;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->getId()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/inveno/newpiflow/biz/OpDataUtil;->getBaiyiOPEntityById(Landroid/content/Context;Ljava/lang/String;)Lcom/inveno/newpiflow/model/BizShowFlowNew;

    move-result-object v6

    .line 636
    .local v6, info:Lcom/inveno/newpiflow/model/BizShowFlowNew;
    if-eqz v6, :cond_0

    iget-object v15, v6, Lcom/inveno/newpiflow/model/BizShowFlowNew;->mBizNewInfo:Ljava/util/List;

    if-eqz v15, :cond_0

    iget-object v15, v6, Lcom/inveno/newpiflow/model/BizShowFlowNew;->mBizNewInfo:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_0

    iget-object v15, v6, Lcom/inveno/newpiflow/model/BizShowFlowNew;->mBizNewInfo:Ljava/util/List;

    const/16 v16, 0x0

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_0

    .line 641
    iget-object v15, v6, Lcom/inveno/newpiflow/model/BizShowFlowNew;->mBizNewInfo:Ljava/util/List;

    const/16 v16, 0x0

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;

    .line 642
    .local v10, opInfo:Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;
    iget v15, v10, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;->bizType:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    .line 643
    const-string v15, "wf_news_bean"

    move-object/from16 v0, p1

    invoke-virtual {v7, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 646
    const-string v15, "flows"

    move-object/from16 v0, p2

    invoke-virtual {v7, v15, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 647
    const-string v15, "pvUrl"

    const-string v16, "http://baiyixun.lem88.com/click"

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 648
    const-string v15, "theme"

    const-string v16, "theme"

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/inveno/newpiflow/widget/PiWindowView;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v16 .. v18}, Lcom/inveno/newpiflow/tools/Tools;->getInformain(Ljava/lang/String;ILandroid/content/Context;)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 649
    const-string v15, "mode"

    const-string v16, "mode"

    const/16 v17, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/inveno/newpiflow/widget/PiWindowView;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v16 .. v18}, Lcom/inveno/newpiflow/tools/Tools;->getInformain(Ljava/lang/String;ILandroid/content/Context;)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 650
    const-string v15, "baiyiad"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 651
    invoke-virtual {v7, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 652
    iget-object v12, v6, Lcom/inveno/newpiflow/model/BizShowFlowNew;->mProList:Ljava/util/List;

    .line 653
    .local v12, proList:Ljava/util/List;,"Ljava/util/List<Lcom/inveno/newpiflow/model/BizProtocal;>;"
    if-eqz v12, :cond_3

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_3

    .line 654
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v15

    if-ge v5, v15, :cond_3

    .line 655
    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/inveno/newpiflow/model/BizProtocal;

    .line 656
    .local v13, protocal:Lcom/inveno/newpiflow/model/BizProtocal;
    if-eqz v13, :cond_2

    .line 657
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "action"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    iget-object v0, v13, Lcom/inveno/newpiflow/model/BizProtocal;->action:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 658
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "clsname"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    iget-object v0, v13, Lcom/inveno/newpiflow/model/BizProtocal;->clsName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 659
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "pkgname"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    iget-object v0, v13, Lcom/inveno/newpiflow/model/BizProtocal;->pkgName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 660
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "schema"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    iget-object v0, v13, Lcom/inveno/newpiflow/model/BizProtocal;->schema:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 654
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 665
    .end local v5           #i:I
    .end local v13           #protocal:Lcom/inveno/newpiflow/model/BizProtocal;
    :cond_3
    if-eqz v7, :cond_0

    .line 666
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/inveno/newpiflow/widget/PiWindowView;->mContext:Landroid/content/Context;

    invoke-virtual {v15, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 668
    :catch_1
    move-exception v2

    .line 669
    .restart local v2       #e:Landroid/content/ActivityNotFoundException;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/inveno/newpiflow/widget/PiWindowView;->mContext:Landroid/content/Context;

    const-string v16, "\u534e\u7a97\u5df2\u505c\u7528\u6216\u672a\u5b89\u88c5"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 672
    .end local v2           #e:Landroid/content/ActivityNotFoundException;
    .end local v12           #proList:Ljava/util/List;,"Ljava/util/List<Lcom/inveno/newpiflow/model/BizProtocal;>;"
    :cond_4
    const/4 v7, 0x0

    .line 673
    iget-object v15, v10, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;->allintent:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_5

    .line 675
    :try_start_2
    iget-object v15, v10, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;->allintent:Ljava/lang/String;

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v7

    .line 681
    :cond_5
    :goto_2
    if-nez v7, :cond_c

    .line 682
    new-instance v7, Landroid/content/Intent;

    .end local v7           #intent:Landroid/content/Intent;
    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 683
    .restart local v7       #intent:Landroid/content/Intent;
    iget-object v15, v10, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;->action:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_6

    .line 684
    iget-object v15, v10, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;->action:Ljava/lang/String;

    invoke-virtual {v7, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 686
    :cond_6
    iget-object v15, v10, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;->clsName:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_7

    iget-object v15, v10, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;->pkgName:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_7

    .line 687
    iget-object v15, v10, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;->pkgName:Ljava/lang/String;

    iget-object v0, v10, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;->clsName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 689
    :cond_7
    iget-object v15, v10, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;->uri:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_8

    .line 690
    iget-object v15, v10, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;->uri:Ljava/lang/String;

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v7, v15}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 692
    :cond_8
    iget-object v15, v10, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;->intentType:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_9

    const-string v15, "activity"

    iget-object v0, v10, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;->intentType:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_9

    const-string v15, "service"

    iget-object v0, v10, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;->intentType:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_9

    const-string v15, "receiver"

    iget-object v0, v10, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;->intentType:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_9

    .line 696
    iget-object v15, v10, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;->intentType:Ljava/lang/String;

    invoke-virtual {v7, v15}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 698
    :cond_9
    iget-object v15, v10, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;->extra1:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/inveno/newpiflow/widget/PiWindowView;->getExtraInfo(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 699
    .local v3, extraArray:[Ljava/lang/String;
    if-eqz v3, :cond_a

    array-length v15, v3

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_a

    .line 700
    const/4 v15, 0x0

    aget-object v15, v3, v15

    const/16 v16, 0x1

    aget-object v16, v3, v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 702
    :cond_a
    iget-object v15, v10, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;->extra2:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/inveno/newpiflow/widget/PiWindowView;->getExtraInfo(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 703
    if-eqz v3, :cond_b

    array-length v15, v3

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_b

    .line 704
    const/4 v15, 0x0

    aget-object v15, v3, v15

    const/16 v16, 0x1

    aget-object v16, v3, v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 706
    :cond_b
    iget-object v15, v10, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;->extra3:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/inveno/newpiflow/widget/PiWindowView;->getExtraInfo(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 707
    if-eqz v3, :cond_c

    array-length v15, v3

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_c

    .line 708
    const/4 v15, 0x0

    aget-object v15, v3, v15

    const/16 v16, 0x1

    aget-object v16, v3, v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 712
    .end local v3           #extraArray:[Ljava/lang/String;
    :cond_c
    if-eqz v7, :cond_0

    .line 713
    :try_start_3
    const-string v15, "activity"

    iget-object v0, v10, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;->intentType:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 714
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/inveno/newpiflow/widget/PiWindowView;->mContext:Landroid/content/Context;

    invoke-virtual {v15, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_0

    .line 723
    :catch_2
    move-exception v2

    .line 724
    .restart local v2       #e:Landroid/content/ActivityNotFoundException;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/inveno/newpiflow/widget/PiWindowView;->mContext:Landroid/content/Context;

    const-string v16, "\u534e\u7a97\u5df2\u505c\u7528\u6216\u672a\u5b89\u88c5"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 676
    .end local v2           #e:Landroid/content/ActivityNotFoundException;
    :catch_3
    move-exception v2

    .line 677
    .local v2, e:Ljava/net/URISyntaxException;
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 715
    .end local v2           #e:Ljava/net/URISyntaxException;
    :cond_d
    :try_start_4
    const-string v15, "service"

    iget-object v0, v10, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;->intentType:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e

    .line 716
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/inveno/newpiflow/widget/PiWindowView;->mContext:Landroid/content/Context;

    invoke-virtual {v15, v7}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 725
    :catch_4
    move-exception v2

    .line 726
    .local v2, e:Ljava/lang/SecurityException;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/inveno/newpiflow/widget/PiWindowView;->mContext:Landroid/content/Context;

    const-string v16, "\u534e\u7a97\u5df2\u505c\u7528\u6216\u672a\u5b89\u88c5"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 717
    .end local v2           #e:Ljava/lang/SecurityException;
    :cond_e
    :try_start_5
    const-string v15, "receiver"

    iget-object v0, v10, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;->intentType:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 718
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/inveno/newpiflow/widget/PiWindowView;->mContext:Landroid/content/Context;

    invoke-virtual {v15, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 720
    :cond_f
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/inveno/newpiflow/widget/PiWindowView;->mContext:Landroid/content/Context;

    invoke-virtual {v15, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_0

    .line 731
    .end local v6           #info:Lcom/inveno/newpiflow/model/BizShowFlowNew;
    .end local v10           #opInfo:Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;
    :pswitch_2
    const/4 v15, 0x1

    invoke-static {v15}, Lcom/inveno/newpiflow/tools/InvenoUBC;->statForClickInfo(B)V

    .line 732
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/inveno/newpiflow/widget/PiWindowView;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->getId()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/inveno/newpiflow/biz/OpDataUtil;->getIQiyiEntityById(Landroid/content/Context;Ljava/lang/String;)Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;

    move-result-object v9

    .line 733
    .local v9, iqiyiInfo:Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;
    iget-object v15, v9, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;->uri:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_10

    .line 734
    const-string v15, "android.intent.action.VIEW"

    invoke-virtual {v7, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 735
    iget-object v15, v9, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;->uri:Ljava/lang/String;

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v7, v15}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 738
    :cond_10
    :try_start_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/inveno/newpiflow/widget/PiWindowView;->mContext:Landroid/content/Context;

    invoke-virtual {v15, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 739
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/inveno/newpiflow/widget/PiWindowView;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/inveno/newpiflow/tools/AdUtil;->clearDownloadID(Landroid/content/Context;)V
    :try_end_6
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_0

    .line 740
    :catch_5
    move-exception v2

    .line 741
    .local v2, e:Landroid/content/ActivityNotFoundException;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/inveno/newpiflow/widget/PiWindowView;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/inveno/newpiflow/tools/AdUtil;->isDownloading(Landroid/content/Context;)Z

    move-result v15

    if-nez v15, :cond_14

    .line 742
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/inveno/newpiflow/widget/PiWindowView;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/inveno/newpiflow/tools/AdUtil;->getDownloadPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 743
    .local v11, path:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_13

    .line 744
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 745
    .local v4, f:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_11

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/inveno/newpiflow/widget/PiWindowView;->mContext:Landroid/content/Context;

    invoke-static {v15, v11}, Lcom/inveno/newpiflow/tools/AdUtil;->isValidPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_12

    .line 746
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/inveno/newpiflow/widget/PiWindowView;->downloadIqiyiApk()V

    goto/16 :goto_0

    .line 748
    :cond_12
    new-instance v8, Landroid/content/Intent;

    const-string v15, "android.intent.action.VIEW"

    invoke-direct {v8, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 749
    .local v8, intent1:Landroid/content/Intent;
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v15}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v15

    const-string v16, "application/vnd.android.package-archive"

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 750
    const/high16 v15, 0x1000

    invoke-virtual {v8, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 751
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/inveno/newpiflow/widget/PiWindowView;->mContext:Landroid/content/Context;

    invoke-virtual {v15, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 754
    .end local v4           #f:Ljava/io/File;
    .end local v8           #intent1:Landroid/content/Intent;
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/inveno/newpiflow/widget/PiWindowView;->downloadIqiyiApk()V

    goto/16 :goto_0

    .line 757
    .end local v11           #path:Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/inveno/newpiflow/widget/PiWindowView;->mContext:Landroid/content/Context;

    const v16, 0x7f0c02f7

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 616
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
