.class public Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;
.super Lcom/baidu/launcher/thememanager/ui/BaseActivity;
.source "WallpaperDetailLocalActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$DataLoadTask;,
        Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$ImagePagerAdapter;
    }
.end annotation


# static fields
.field private static mWallpaperLocalList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdapter:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$ImagePagerAdapter;

.field private mCurrentIndex:I

.field private mHistoryPath:Ljava/lang/String;

.field private mImageFetcher:Lcom/baidu/launcher/thememanager/util/ImageFetcher;

.field private mImageOriginalHeight:I

.field private mImageOriginalWidth:I

.field private mSetWallpaperBtn:Landroid/widget/Button;

.field private mTitleBarText:Landroid/widget/TextView;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private mWallpaperResizer:Lcom/baidu/launcher/thememanager/util/ImageResizer;

.field private mWallpaperSize:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/baidu/launcher/thememanager/ui/BaseActivity;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->mCurrentIndex:I

    .line 246
    return-void
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->mWallpaperLocalList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;)Lcom/baidu/launcher/thememanager/util/ImageFetcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->mImageFetcher:Lcom/baidu/launcher/thememanager/util/ImageFetcher;

    return-object v0
.end method

.method static synthetic access$300(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->mSetWallpaperBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$402(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput p1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->mCurrentIndex:I

    return p1
.end method

.method static synthetic access$500(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->mHistoryPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;)Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$ImagePagerAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->mAdapter:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$ImagePagerAdapter;

    return-object v0
.end method

.method static synthetic access$602(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$ImagePagerAdapter;)Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$ImagePagerAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->mAdapter:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$ImagePagerAdapter;

    return-object p1
.end method

.method static synthetic access$700(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$702(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/ViewPager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object p1
.end method

.method static synthetic access$800(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->updateData(I)V

    return-void
.end method

.method private updateData(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 171
    iput p1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->mCurrentIndex:I

    .line 172
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->mWallpaperSize:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->mWallpaperLocalList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->mCurrentIndex:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;

    invoke-virtual {v0}, Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;->getmSize()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "KB"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    return-void
.end method


# virtual methods
.method public applyWallpaper()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 176
    invoke-static {}, Lcom/baidu/launcher/thememanager/util/StorageUtil;->isSdcardAvailable()Z

    move-result v4

    if-nez v4, :cond_0

    .line 177
    const v4, 0x7f0c011b

    invoke-static {p0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 178
    .local v2, toast:Landroid/widget/Toast;
    const/16 v4, 0x11

    invoke-virtual {v2, v4, v6, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 179
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 196
    .end local v2           #toast:Landroid/widget/Toast;
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->mSetWallpaperBtn:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 184
    new-instance v0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$4;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$4;-><init>(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;)V

    .line 191
    .local v0, callBack:Lcom/baidu/launcher/thememanager/util/ApplyWallpaperTask$ApplyCallBack;
    sget-object v4, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->mWallpaperLocalList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->mCurrentIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;

    invoke-virtual {v4}, Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;->getmItemPath()Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, path:Ljava/lang/String;
    sget-object v4, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->mWallpaperLocalList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->mCurrentIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;

    invoke-virtual {v4}, Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;->getmType()I

    move-result v3

    .line 194
    .local v3, typle:I
    new-instance v4, Lcom/baidu/launcher/thememanager/util/ApplyWallpaperTask;

    invoke-direct {v4, p0, v3, v0}, Lcom/baidu/launcher/thememanager/util/ApplyWallpaperTask;-><init>(Landroid/content/Context;ILcom/baidu/launcher/thememanager/util/ApplyWallpaperTask$ApplyCallBack;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    aput-object v1, v5, v6

    invoke-virtual {v4, v5}, Lcom/baidu/launcher/thememanager/util/ApplyWallpaperTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public deleteWallpaper()V
    .locals 6

    .prologue
    const/16 v5, 0x11

    const/4 v4, 0x0

    .line 200
    sget-object v2, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->mWallpaperLocalList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->mCurrentIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;

    invoke-virtual {v2}, Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;->getmType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 201
    const v2, 0x7f0c0124

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 202
    .local v1, toast:Landroid/widget/Toast;
    invoke-virtual {v1, v5, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 203
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 240
    .end local v1           #toast:Landroid/widget/Toast;
    :goto_0
    return-void

    .line 207
    :cond_0
    invoke-static {}, Lcom/baidu/launcher/thememanager/util/StorageUtil;->isSdcardAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 208
    const v2, 0x7f0c011b

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 209
    .restart local v1       #toast:Landroid/widget/Toast;
    invoke-virtual {v1, v5, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 210
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 214
    .end local v1           #toast:Landroid/widget/Toast;
    :cond_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    const v3, 0x1030132

    invoke-direct {v2, p0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v3, 0x7f0c0120

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c0121

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c0122

    new-instance v4, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$6;

    invoke-direct {v4, p0}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$6;-><init>(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c0123

    new-instance v4, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$5;

    invoke-direct {v4, p0}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$5;-><init>(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 238
    .local v0, delAlertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public initLayout()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 80
    const v4, 0x7f0300ad

    invoke-virtual {p0, v4}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->setContentView(I)V

    .line 82
    const v4, 0x7f080238

    invoke-virtual {p0, v4}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 83
    .local v2, titleBar:Landroid/view/View;
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 85
    const v4, 0x7f08023c

    invoke-virtual {p0, v4}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 86
    .local v3, titleView:Landroid/view/View;
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 87
    const v4, 0x7f08023d

    invoke-virtual {p0, v4}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 88
    .local v0, backView:Landroid/view/View;
    new-instance v4, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$1;

    invoke-direct {v4, p0}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$1;-><init>(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    const v4, 0x7f080240

    invoke-virtual {p0, v4}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->mTitleBarText:Landroid/widget/TextView;

    .line 97
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->mTitleBarText:Landroid/widget/TextView;

    const v5, 0x7f0c010e

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 99
    const v4, 0x7f080241

    invoke-virtual {p0, v4}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 100
    .local v1, delView:Landroid/view/View;
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 101
    new-instance v4, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$2;

    invoke-direct {v4, p0}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$2;-><init>(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    const v4, 0x7f080223

    invoke-virtual {p0, v4}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->mWallpaperSize:Landroid/widget/TextView;

    .line 110
    const v4, 0x7f080224

    invoke-virtual {p0, v4}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->mSetWallpaperBtn:Landroid/widget/Button;

    .line 111
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->mSetWallpaperBtn:Landroid/widget/Button;

    const v5, 0x7f0c011f

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 112
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->mSetWallpaperBtn:Landroid/widget/Button;

    new-instance v5, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$3;

    invoke-direct {v5, p0}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$3;-><init>(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/baidu/launcher/thememanager/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->requestWindowFeature(I)Z

    .line 60
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b008d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->mImageOriginalWidth:I

    .line 61
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b008e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->mImageOriginalHeight:I

    .line 63
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "currentItem"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->mHistoryPath:Ljava/lang/String;

    .line 66
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->mWallpaperLocalList:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Lcom/baidu/launcher/thememanager/util/ImageFetcher;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/thememanager/util/ImageFetcher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->mImageFetcher:Lcom/baidu/launcher/thememanager/util/ImageFetcher;

    .line 70
    new-instance v0, Lcom/baidu/launcher/thememanager/util/ImageResizer;

    iget v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->mImageOriginalWidth:I

    iget v2, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->mImageOriginalHeight:I

    invoke-direct {v0, v1, v2}, Lcom/baidu/launcher/thememanager/util/ImageResizer;-><init>(II)V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->mWallpaperResizer:Lcom/baidu/launcher/thememanager/util/ImageResizer;

    .line 71
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->mImageFetcher:Lcom/baidu/launcher/thememanager/util/ImageFetcher;

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->mWallpaperResizer:Lcom/baidu/launcher/thememanager/util/ImageResizer;

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->setImageResizer(Lcom/baidu/launcher/thememanager/util/ImageResizer;)V

    .line 74
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->initLayout()V

    .line 76
    new-instance v0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$DataLoadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$DataLoadTask;-><init>(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$DataLoadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 77
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 310
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 311
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->finish()V

    .line 312
    const v0, 0x7f04000c

    const v1, 0x7f04000d

    invoke-virtual {p0, v0, v1}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->overridePendingTransition(II)V

    .line 313
    const/4 v0, 0x0

    .line 315
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 158
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 163
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->updateData(I)V

    .line 168
    return-void
.end method
