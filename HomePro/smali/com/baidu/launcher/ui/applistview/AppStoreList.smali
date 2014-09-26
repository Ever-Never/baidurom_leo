.class public Lcom/baidu/launcher/ui/applistview/AppStoreList;
.super Landroid/content/BroadcastReceiver;
.source "AppStoreList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/applistview/AppStoreList$AppStorePopupAdapter;
    }
.end annotation


# static fields
.field public static final ACTION_DOWNLOAD_COMPOLETED:Ljava/lang/String; = "com.baidu.launcher.download_completed"


# instance fields
.field private DEFAULT_APK_PACKAGE:Ljava/lang/String;

.field private DEFAULT_APK_URL:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mDownloadDialog:Landroid/app/AlertDialog;

.field private mIsRegistered:Z

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private mListAdapter:Lcom/baidu/launcher/ui/applistview/AppStoreList$AppStorePopupAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private taskMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 47
    iput-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 48
    iput-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 49
    iput-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mListView:Landroid/widget/ListView;

    .line 51
    iput-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mListAdapter:Lcom/baidu/launcher/ui/applistview/AppStoreList$AppStorePopupAdapter;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mIsRegistered:Z

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->taskMap:Ljava/util/HashMap;

    .line 57
    const-string v0, "http://mo.baidu.com/1000561s/d/AppSearch_Android_1000561s.apk"

    iput-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->DEFAULT_APK_URL:Ljava/lang/String;

    .line 58
    const-string v0, "com.baidu.appsearch"

    iput-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->DEFAULT_APK_PACKAGE:Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mContext:Landroid/content/Context;

    .line 64
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppStoreList;->registerMonitor()V

    .line 65
    return-void
.end method

.method private DownloadDialog(Lcom/baidu/launcher/business/item/RecommendAppItem;)V
    .locals 9
    .parameter "appItem"

    .prologue
    .line 127
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mContext:Landroid/content/Context;

    const v1, 0x1030132

    invoke-direct {v6, v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 131
    .local v6, dlg:Landroid/app/AlertDialog$Builder;
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mContext:Landroid/content/Context;

    const v1, 0x7f0c01f7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 132
    .local v7, shoujizhushou:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 133
    invoke-virtual {p1}, Lcom/baidu/launcher/business/item/RecommendAppItem;->getName()Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, appName:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/baidu/launcher/business/item/RecommendAppItem;->getApk()Ljava/lang/String;

    move-result-object v5

    .line 135
    .local v5, url:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/baidu/launcher/business/item/RecommendAppItem;->getStrategyId()J

    move-result-wide v3

    .line 141
    .local v3, strategyId:J
    :goto_0
    invoke-static {v2, v3, v4}, Lcom/baidu/launcher/utils/StorageUtil;->isBusinessApkFileExit(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mContext:Landroid/content/Context;

    invoke-static {v2, v3, v4}, Lcom/baidu/launcher/utils/StorageUtil;->getBusinessApkFileDir(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/baidu/launcher/ui/applistview/AppStoreList;->installApk(Landroid/content/Context;Ljava/lang/String;)V

    .line 186
    :goto_1
    return-void

    .line 137
    .end local v2           #appName:Ljava/lang/String;
    .end local v3           #strategyId:J
    .end local v5           #url:Ljava/lang/String;
    :cond_0
    move-object v2, v7

    .line 138
    .restart local v2       #appName:Ljava/lang/String;
    iget-object v5, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->DEFAULT_APK_URL:Ljava/lang/String;

    .line 139
    .restart local v5       #url:Ljava/lang/String;
    new-instance v0, Lcom/baidu/launcher/business/BusinessSyncManager;

    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/baidu/launcher/business/BusinessSyncManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/baidu/launcher/business/BusinessSyncManager;->getBusinessStrategyId()J

    move-result-wide v3

    .restart local v3       #strategyId:J
    goto :goto_0

    .line 144
    :cond_1
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    const v0, 0x7f0c01f8

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 146
    const v0, 0x7f0c01f9

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 152
    :goto_2
    const v8, 0x7f0c0136

    new-instance v0, Lcom/baidu/launcher/ui/applistview/AppStoreList$3;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/baidu/launcher/ui/applistview/AppStoreList$3;-><init>(Lcom/baidu/launcher/ui/applistview/AppStoreList;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v6, v8, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 175
    const v0, 0x7f0c0137

    new-instance v1, Lcom/baidu/launcher/ui/applistview/AppStoreList$4;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/applistview/AppStoreList$4;-><init>(Lcom/baidu/launcher/ui/applistview/AppStoreList;)V

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 183
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mDownloadDialog:Landroid/app/AlertDialog;

    .line 184
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mDownloadDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    .line 148
    :cond_2
    const v0, 0x7f0c00e4

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 149
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mContext:Landroid/content/Context;

    const v1, 0x7f0c01f5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_2
.end method

.method static synthetic access$102(Lcom/baidu/launcher/ui/applistview/AppStoreList;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object p1
.end method

.method static synthetic access$202(Lcom/baidu/launcher/ui/applistview/AppStoreList;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mLinearLayout:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$302(Lcom/baidu/launcher/ui/applistview/AppStoreList;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mListView:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/baidu/launcher/ui/applistview/AppStoreList;)Lcom/baidu/launcher/ui/applistview/AppStoreList$AppStorePopupAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mListAdapter:Lcom/baidu/launcher/ui/applistview/AppStoreList$AppStorePopupAdapter;

    return-object v0
.end method

.method static synthetic access$402(Lcom/baidu/launcher/ui/applistview/AppStoreList;Lcom/baidu/launcher/ui/applistview/AppStoreList$AppStorePopupAdapter;)Lcom/baidu/launcher/ui/applistview/AppStoreList$AppStorePopupAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mListAdapter:Lcom/baidu/launcher/ui/applistview/AppStoreList$AppStorePopupAdapter;

    return-object p1
.end method

.method static synthetic access$500(Lcom/baidu/launcher/ui/applistview/AppStoreList;Lcom/baidu/launcher/business/item/RecommendAppItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/applistview/AppStoreList;->DownloadDialog(Lcom/baidu/launcher/business/item/RecommendAppItem;)V

    return-void
.end method

.method static synthetic access$600(Lcom/baidu/launcher/ui/applistview/AppStoreList;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->taskMap:Ljava/util/HashMap;

    return-object v0
.end method

.method private installApk(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "apkPath"

    .prologue
    .line 332
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 333
    .local v0, installIntent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 334
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 338
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 234
    :cond_0
    return-void
.end method

.method public dismissMenuAndDialog()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mDownloadDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mDownloadDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 244
    :cond_1
    return-void
.end method

.method public initStoreList()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x2

    .line 68
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030003

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 69
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mLinearLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f08001c

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mListView:Landroid/widget/ListView;

    .line 70
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 71
    new-instance v0, Lcom/baidu/launcher/ui/applistview/AppStoreList$AppStorePopupAdapter;

    invoke-direct {v0, p0, v4}, Lcom/baidu/launcher/ui/applistview/AppStoreList$AppStorePopupAdapter;-><init>(Lcom/baidu/launcher/ui/applistview/AppStoreList;Lcom/baidu/launcher/ui/applistview/AppStoreList$1;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mListAdapter:Lcom/baidu/launcher/ui/applistview/AppStoreList$AppStorePopupAdapter;

    .line 72
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mListAdapter:Lcom/baidu/launcher/ui/applistview/AppStoreList$AppStorePopupAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 73
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-direct {v0, v1, v2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 74
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 75
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 76
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mPopupWindow:Landroid/widget/PopupWindow;

    const v1, 0x7f0a003e

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 77
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202ed

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 79
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v1, Lcom/baidu/launcher/ui/applistview/AppStoreList$1;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/applistview/AppStoreList$1;-><init>(Lcom/baidu/launcher/ui/applistview/AppStoreList;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 92
    new-instance v0, Lcom/baidu/launcher/ui/applistview/AppStoreList$2;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/applistview/AppStoreList$2;-><init>(Lcom/baidu/launcher/ui/applistview/AppStoreList;)V

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/applistview/AppStoreList;->setOnClick(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 124
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const-wide/16 v8, -0x1

    .line 312
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, action:Ljava/lang/String;
    const-string v6, "extra_id"

    invoke-virtual {p2, v6, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 314
    .local v1, id:J
    const-string v6, "extra_result"

    const/4 v7, 0x1

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 315
    .local v4, result:I
    cmp-long v6, v1, v8

    if-eqz v6, :cond_0

    .line 316
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 317
    .local v5, taskId:Ljava/lang/String;
    const-string v6, "com.baidu.launcher.download_completed"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->taskMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 319
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->taskMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 320
    .local v3, path:Ljava/lang/String;
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->taskMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    if-nez v4, :cond_0

    .line 322
    invoke-direct {p0, p1, v3}, Lcom/baidu/launcher/ui/applistview/AppStoreList;->installApk(Landroid/content/Context;Ljava/lang/String;)V

    .line 329
    .end local v3           #path:Ljava/lang/String;
    .end local v5           #taskId:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public registerMonitor()V
    .locals 2

    .prologue
    .line 346
    iget-boolean v1, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mIsRegistered:Z

    if-nez v1, :cond_0

    .line 348
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 350
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.baidu.launcher.download_completed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 351
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 353
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mIsRegistered:Z

    .line 355
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public setOnClick(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 250
    :cond_0
    return-void
.end method

.method public show(Landroid/view/View;)V
    .locals 11
    .parameter "anchorView"

    .prologue
    const/4 v7, 0x1

    const/4 v10, 0x0

    .line 189
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppStoreList;->initStoreList()V

    .line 190
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v6, :cond_0

    .line 191
    const/4 v6, 0x2

    new-array v5, v6, [I

    .line 192
    .local v5, pos:[I
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/baidu/launcher/data/AppsDataManager;->loadeAppStoreData()Ljava/util/ArrayList;

    move-result-object v0

    .line 193
    .local v0, appItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/business/item/RecommendAppItem;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v7, :cond_1

    .line 194
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mListAdapter:Lcom/baidu/launcher/ui/applistview/AppStoreList$AppStorePopupAdapter;

    invoke-virtual {v6, v0}, Lcom/baidu/launcher/ui/applistview/AppStoreList$AppStorePopupAdapter;->setStoresMap(Ljava/util/ArrayList;)V

    .line 195
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mListAdapter:Lcom/baidu/launcher/ui/applistview/AppStoreList$AppStorePopupAdapter;

    invoke-virtual {v6}, Lcom/baidu/launcher/ui/applistview/AppStoreList$AppStorePopupAdapter;->notifyDataSetChanged()V

    .line 196
    invoke-virtual {p1, v5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 197
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mPopupWindow:Landroid/widget/PopupWindow;

    const/16 v7, 0x53

    aget v8, v5, v10

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v9

    shr-int/lit8 v9, v9, 0x4

    add-int/2addr v8, v9

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-virtual {v6, p1, v7, v8, v9}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 228
    .end local v0           #appItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/business/item/RecommendAppItem;>;"
    .end local v5           #pos:[I
    :cond_0
    :goto_0
    return-void

    .line 198
    .restart local v0       #appItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/business/item/RecommendAppItem;>;"
    .restart local v5       #pos:[I
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v7, :cond_2

    .line 199
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/launcher/business/item/RecommendAppItem;

    invoke-direct {p0, v6}, Lcom/baidu/launcher/ui/applistview/AppStoreList;->DownloadDialog(Lcom/baidu/launcher/business/item/RecommendAppItem;)V

    goto :goto_0

    .line 204
    :cond_2
    :try_start_0
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->DEFAULT_APK_PACKAGE:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 209
    .local v4, packageInfo:Landroid/content/pm/PackageInfo;
    :goto_1
    if-nez v4, :cond_3

    .line 211
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/baidu/launcher/ui/applistview/AppStoreList;->DownloadDialog(Lcom/baidu/launcher/business/item/RecommendAppItem;)V

    goto :goto_0

    .line 205
    .end local v4           #packageInfo:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 206
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v4, 0x0

    .line 207
    .restart local v4       #packageInfo:Landroid/content/pm/PackageInfo;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 213
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->DEFAULT_APK_PACKAGE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 214
    .local v2, intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mContext:Landroid/content/Context;

    const v7, 0x7f0c01f7

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 215
    .local v3, name:Ljava/lang/String;
    if-eqz v2, :cond_4

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v6, v6, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v6, :cond_5

    .line 216
    :cond_4
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mContext:Landroid/content/Context;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mContext:Landroid/content/Context;

    const v9, 0x7f0c0211

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 223
    :goto_2
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mContext:Landroid/content/Context;

    invoke-static {v6, v3}, Lcom/baidu/launcher/ubc/UBC;->reportAppstoreOpen(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :cond_5
    const/high16 v6, 0x1000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 220
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2
.end method

.method public unregisterMonitor()V
    .locals 1

    .prologue
    .line 363
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mIsRegistered:Z

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 365
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mIsRegistered:Z

    .line 367
    :cond_0
    return-void
.end method
