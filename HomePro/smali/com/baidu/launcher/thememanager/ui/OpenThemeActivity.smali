.class public Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;
.super Lcom/baidu/launcher/thememanager/ui/BaseActivity;
.source "OpenThemeActivity.java"

# interfaces
.implements Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor$SDCardObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity$ScanTask;
    }
.end annotation


# static fields
.field private static final DELAY_TIME:I = 0x2710

.field private static final MSG_TIME_OUT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "OpenThemeActivity"


# instance fields
.field private appIcon:Landroid/graphics/drawable/Drawable;

.field private mActionBar2:Lcom/baidu/launcher/thememanager/view/ExActionBar;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mComponentType:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mId:I

.field private mKey:Ljava/lang/String;

.field private mListener:Landroid/content/BroadcastReceiver;

.field private mPath:Ljava/lang/String;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mScanText:Landroid/widget/TextView;

.field private mScanning:Z

.field private mStart_apply:Z

.field private mThemeType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Lcom/baidu/launcher/thememanager/ui/BaseActivity;-><init>()V

    .line 43
    iput-boolean v0, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->mScanning:Z

    .line 47
    iput-boolean v0, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->mStart_apply:Z

    .line 142
    new-instance v0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity$1;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity$1;-><init>(Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;)V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->mListener:Landroid/content/BroadcastReceiver;

    .line 243
    new-instance v0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity$2;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity$2;-><init>(Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;)V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->mScanning:Z

    return v0
.end method

.method static synthetic access$102(Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->mScanning:Z

    return p1
.end method

.method static synthetic access$200(Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->showFailed()V

    return-void
.end method

.method static synthetic access$400(Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->showNoSDCard()V

    return-void
.end method

.method static synthetic access$500(Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;Landroid/content/Context;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->getDetail(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->setIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->showDetail(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$900(Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->showDialog()V

    return-void
.end method

.method private getDetail(Landroid/content/Context;I)V
    .locals 9
    .parameter "context"
    .parameter "id"

    .prologue
    .line 202
    new-instance v8, Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " _id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 205
    .local v8, whereString:Ljava/lang/StringBuffer;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "key"

    aput-object v1, v2, v0

    .line 210
    .local v2, projection:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 212
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->THEME_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 215
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 216
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 217
    const-string v0, "key"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->mKey:Ljava/lang/String;

    .line 218
    iput p2, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->mId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :cond_0
    if-eqz v6, :cond_1

    .line 224
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 227
    :cond_1
    :goto_0
    return-void

    .line 220
    :catch_0
    move-exception v7

    .line 221
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    if-eqz v6, :cond_1

    .line 224
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 223
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 224
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private isThemeValid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 3
    .parameter "path"
    .parameter "title"
    .parameter "key"
    .parameter "id"
    .parameter "type"

    .prologue
    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, result:Z
    invoke-static {p0, p1}, Lcom/baidu/launcher/thememanager/util/ThemeUtils;->checkThemeExist(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->mId:I

    .line 113
    iget v1, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->mId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 114
    const/4 v0, 0x1

    .line 116
    :cond_0
    return v0
.end method

.method private scanTheme(Ljava/lang/String;)V
    .locals 5
    .parameter "path"

    .prologue
    .line 130
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 131
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.baidu.thememanager.ui.openfile"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    const-class v1, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 135
    const-string v1, "com.baidu.thememanager.extra.downloadpath"

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    const-string v1, "component_type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 137
    const-string v1, "title"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 139
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 140
    return-void
.end method

.method private setIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 180
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 181
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "_id"

    iget v2, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->mId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 182
    const-string v1, "component_type"

    iget v2, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->mComponentType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 183
    return-object v0
.end method

.method private showDetail(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 120
    const-class v0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const-string v0, "_id"

    iget v1, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->mId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 122
    const-string v0, "theme_type"

    iget v1, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->mThemeType:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 123
    sget-object v0, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->EXTRA_DETAIL_CANNOT_BACK:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 124
    const-string v0, "path"

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->mPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->startActivity(Landroid/content/Intent;)V

    .line 126
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->finish()V

    .line 127
    return-void
.end method

.method private showDialog()V
    .locals 3

    .prologue
    .line 257
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 258
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v1, 0x1030132

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00ec

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00b6

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00b7

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity$3;

    invoke-direct {v2, p0}, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity$3;-><init>(Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 271
    return-void
.end method

.method private showFailed()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->mScanText:Landroid/widget/TextView;

    const v1, 0x7f0c00eb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 189
    return-void
.end method

.method private showNoSDCard()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->mScanText:Landroid/widget/TextView;

    const v1, 0x7f0c010a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 194
    return-void
.end method

.method private showOpen()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->mScanText:Landroid/widget/TextView;

    const v1, 0x7f0c00ea

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 199
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 106
    invoke-super {p0}, Lcom/baidu/launcher/thememanager/ui/BaseActivity;->onBackPressed()V

    .line 107
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->finish()V

    .line 108
    return-void
.end method

.method public onChange(Ljava/lang/String;)V
    .locals 2
    .parameter "type"

    .prologue
    const/16 v1, 0x64

    .line 276
    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    iget v0, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->mThemeType:I

    if-ge v0, v1, :cond_0

    .line 278
    invoke-direct {p0}, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->showOpen()V

    .line 279
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->mPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->scanTheme(Ljava/lang/String;)V

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    const-string v0, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    :cond_2
    iget v0, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->mThemeType:I

    if-ge v0, v1, :cond_0

    .line 284
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 285
    invoke-direct {p0}, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->showNoSDCard()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/16 v2, 0x8

    const/4 v1, -0x1

    .line 51
    invoke-super {p0, p1}, Lcom/baidu/launcher/thememanager/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->mContext:Landroid/content/Context;

    .line 53
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 54
    .local v7, intent:Landroid/content/Intent;
    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->mPath:Ljava/lang/String;

    .line 55
    const-string v0, "key"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->mKey:Ljava/lang/String;

    .line 56
    const-string v0, "_id"

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->mId:I

    .line 57
    const-string v0, "component_type"

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->mComponentType:I

    .line 58
    const-string v0, "theme_type"

    const/4 v1, 0x2

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->mThemeType:I

    .line 60
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->requestWindowFeature(I)Z

    .line 61
    const v0, 0x7f0300a0

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->setContentView(I)V

    .line 63
    const v0, 0x7f08001d

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/thememanager/view/ExActionBar;

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->mActionBar2:Lcom/baidu/launcher/thememanager/view/ExActionBar;

    .line 64
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02020c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 65
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->mActionBar2:Lcom/baidu/launcher/thememanager/view/ExActionBar;

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->appIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/thememanager/view/ExActionBar;->setActionBarIcon(Landroid/graphics/drawable/Drawable;)V

    .line 66
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->mActionBar2:Lcom/baidu/launcher/thememanager/view/ExActionBar;

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/thememanager/view/ExActionBar;->setActionBarOperVisible(I)V

    .line 67
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->mActionBar2:Lcom/baidu/launcher/thememanager/view/ExActionBar;

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/thememanager/view/ExActionBar;->setActionBarBackVisible(I)V

    .line 69
    const v0, 0x7f080200

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 70
    const v0, 0x7f080201

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->mScanText:Landroid/widget/TextView;

    .line 72
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 73
    .local v6, filter:Landroid/content/IntentFilter;
    const-string v0, "com.baidu.thememanager.ui.parsestatus"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->mListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v6}, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 76
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->mPath:Ljava/lang/String;

    const-string v2, ""

    iget-object v3, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->mKey:Ljava/lang/String;

    iget v4, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->mId:I

    iget v5, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->mComponentType:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->isThemeValid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-direct {p0, v7}, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->showDetail(Landroid/content/Intent;)V

    .line 83
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->mPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->scanTheme(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    iput-boolean v1, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->mScanning:Z

    .line 88
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 89
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->mListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 93
    invoke-super {p0}, Lcom/baidu/launcher/thememanager/ui/BaseActivity;->onDestroy()V

    .line 94
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 98
    invoke-super {p0}, Lcom/baidu/launcher/thememanager/ui/BaseActivity;->onPause()V

    .line 99
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 102
    :cond_0
    return-void
.end method
