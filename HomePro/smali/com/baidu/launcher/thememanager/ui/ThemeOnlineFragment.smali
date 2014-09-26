.class public Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;
.super Landroid/support/v4/app/Fragment;
.source "ThemeOnlineFragment.java"

# interfaces
.implements Lcom/baidu/launcher/thememanager/network/TaskListener;
.implements Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor$SDCardObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ServiceHandler;,
        Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$LocalInfoLoaderCallback;,
        Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$DownloadStatusLoaderCallback;,
        Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ButtonClickListener;,
        Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$DownloadReceiver;,
        Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ImageClickListener;,
        Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$PullGridListener;
    }
.end annotation


# static fields
.field private static final ITEMS_LOAD_ONCE:I = 0x9

.field private static final LOADER_ID:I = 0x64

.field private static final TAB_0:I = 0x0

.field private static final TAB_1:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ThemeOnlineFragment"

.field private static final TAG_CURRENT_TAB:Ljava/lang/String; = "current_tab"


# instance fields
.field private btn_click_listener:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ButtonClickListener;

.field private current_page:[I

.field private current_tab:I

.field private gridview:Landroid/widget/GridView;

.field private gridview_adapter:[Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;

.field private gridview_offset:[I

.field private image_click_listener:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ImageClickListener;

.field private mComponentType:I

.field private mContext:Landroid/content/Context;

.field private mDownloadReceiver:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$DownloadReceiver;

.field private mFragView:Landroid/view/View;

.field mHandler:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ServiceHandler;

.field private pressed:Z

.field private pull_listener:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$PullGridListener;

.field private task_status:[I

.field private view_disable:Landroid/view/View;

.field private view_error:Landroid/view/View;

.field private view_loading:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 76
    iput v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->current_tab:I

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->mComponentType:I

    .line 83
    iput-boolean v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->pressed:Z

    .line 86
    new-instance v0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ImageClickListener;

    invoke-direct {v0, p0, v3}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ImageClickListener;-><init>(Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$1;)V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->image_click_listener:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ImageClickListener;

    .line 87
    new-instance v0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$PullGridListener;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$PullGridListener;-><init>(Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;)V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->pull_listener:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$PullGridListener;

    .line 88
    new-instance v0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ButtonClickListener;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ButtonClickListener;-><init>(Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;)V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->btn_click_listener:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ButtonClickListener;

    .line 93
    new-array v0, v2, [Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;

    aput-object v3, v0, v1

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->gridview_adapter:[Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;

    .line 96
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->task_status:[I

    .line 99
    new-array v0, v2, [I

    aput v1, v0, v1

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->current_page:[I

    .line 103
    new-array v0, v2, [I

    aput v1, v0, v1

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->gridview_offset:[I

    .line 644
    new-instance v0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ServiceHandler;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ServiceHandler;-><init>(Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;)V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->mHandler:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ServiceHandler;

    .line 645
    return-void

    .line 96
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$100(Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->current_page:[I

    return-object v0
.end method

.method static synthetic access$1000(Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->mComponentType:I

    return v0
.end method

.method static synthetic access$1200(Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->update_button()V

    return-void
.end method

.method static synthetic access$1300(Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->downloadTheme(Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->requestThemeList(III)V

    return-void
.end method

.method static synthetic access$300(Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->current_tab:I

    return v0
.end method

.method static synthetic access$400(Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->task_status:[I

    return-object v0
.end method

.method static synthetic access$500(Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->updateView()V

    return-void
.end method

.method static synthetic access$800(Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->pressed:Z

    return v0
.end method

.method static synthetic access$802(Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->pressed:Z

    return p1
.end method

.method static synthetic access$900(Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;)[Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->gridview_adapter:[Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;

    return-object v0
.end method

.method private changeAdapter(ILcom/baidu/launcher/thememanager/network/Response;Lcom/baidu/launcher/thememanager/network/HttpTask;)V
    .locals 6
    .parameter "tab_index"
    .parameter "obj"
    .parameter "task"

    .prologue
    .line 289
    :try_start_0
    iget-object v3, p2, Lcom/baidu/launcher/thememanager/network/Response;->mDataSet:Ljava/util/List;

    .line 291
    .local v3, newThemeItems:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/launcher/thememanager/model/AbsDataItem;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/thememanager/model/AbsDataItem;

    .line 293
    .local v0, dataItem:Lcom/baidu/launcher/thememanager/model/AbsDataItem;
    iget v4, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->mComponentType:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 294
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->gridview_adapter:[Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;

    aget-object v4, v4, p1

    check-cast v0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;

    .end local v0           #dataItem:Lcom/baidu/launcher/thememanager/model/AbsDataItem;
    invoke-virtual {v4, v0}, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->add(Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 307
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #newThemeItems:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/launcher/thememanager/model/AbsDataItem;>;"
    :catch_0
    move-exception v1

    .line 308
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 309
    invoke-virtual {p0, p3}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->listTaskFailed(Lcom/baidu/launcher/thememanager/network/HttpTask;)V

    .line 311
    .end local v1           #e:Ljava/lang/Exception;
    :goto_1
    return-void

    .line 298
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #newThemeItems:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/launcher/thememanager/model/AbsDataItem;>;"
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->gridview_adapter:[Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->getDataCount()I

    move-result v4

    iget-object v5, p2, Lcom/baidu/launcher/thememanager/network/Response;->mResult:Lcom/baidu/launcher/thememanager/network/Response$Result;

    iget v5, v5, Lcom/baidu/launcher/thememanager/network/Response$Result;->count:I

    if-lt v4, v5, :cond_2

    .line 299
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->gridview_adapter:[Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;

    aget-object v4, v4, p1

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->setLoadMore(Z)V

    .line 302
    :cond_2
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->gridview_adapter:[Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->notifyDataSetChanged()V

    .line 304
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->current_page:[I

    iget-object v5, p2, Lcom/baidu/launcher/thememanager/network/Response;->mResult:Lcom/baidu/launcher/thememanager/network/Response$Result;

    iget v5, v5, Lcom/baidu/launcher/thememanager/network/Response$Result;->curpage:I

    aput v5, v4, p1

    .line 305
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->task_status:[I

    const/4 v5, 0x2

    aput v5, v4, p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private downloadTheme(Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;Landroid/view/View;)V
    .locals 4
    .parameter "info"
    .parameter "v"

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/launcher/ubc/UBC;->reportThemeDownload(Landroid/content/Context;)V

    .line 218
    instance-of v1, p2, Landroid/widget/Button;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 219
    check-cast v0, Landroid/widget/Button;

    .line 220
    .local v0, downButton:Landroid/widget/Button;
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 223
    .end local v0           #downButton:Landroid/widget/Button;
    :cond_0
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->mHandler:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ServiceHandler;

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->mHandler:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ServiceHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ServiceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 225
    return-void
.end method

.method private requestThemeList(III)V
    .locals 4
    .parameter "tab_index"
    .parameter "curpage"
    .parameter "pageRows"

    .prologue
    .line 332
    const-string v1, "current_tab"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestThemeList "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/launcher/thememanager/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const/4 v0, 0x0

    .line 336
    .local v0, request:Lcom/baidu/launcher/thememanager/network/Request;
    packed-switch p1, :pswitch_data_0

    .line 347
    :goto_0
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->task_status:[I

    const/4 v2, 0x0

    aput v2, v1, p1

    .line 349
    invoke-direct {p0}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->updateView()V

    .line 351
    invoke-virtual {v0}, Lcom/baidu/launcher/thememanager/network/Request;->newVer()V

    .line 352
    invoke-static {}, Lcom/baidu/launcher/thememanager/network/TransportOperator;->getInstance()Lcom/baidu/launcher/thememanager/network/TransportOperator;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, p0, v2}, Lcom/baidu/launcher/thememanager/network/TransportOperator;->sendRequest(Lcom/baidu/launcher/thememanager/network/Request;Lcom/baidu/launcher/thememanager/network/TaskListener;Ljava/lang/String;)V

    .line 355
    return-void

    .line 338
    :pswitch_0
    sget-object v1, Lcom/baidu/launcher/thememanager/network/Request$RequestType;->REQ_TYPE_GET_THEME_LATEST:Lcom/baidu/launcher/thememanager/network/Request$RequestType;

    invoke-static {v1, p2, p3}, Lcom/baidu/launcher/thememanager/network/RequestFactory;->build(Lcom/baidu/launcher/thememanager/network/Request$RequestType;II)Lcom/baidu/launcher/thememanager/network/Request;

    move-result-object v0

    .line 340
    goto :goto_0

    .line 342
    :pswitch_1
    sget-object v1, Lcom/baidu/launcher/thememanager/network/Request$RequestType;->REQ_TYPE_GET_THEME_MATCH_1:Lcom/baidu/launcher/thememanager/network/Request$RequestType;

    invoke-static {v1, p2, p3}, Lcom/baidu/launcher/thememanager/network/RequestFactory;->build(Lcom/baidu/launcher/thememanager/network/Request$RequestType;II)Lcom/baidu/launcher/thememanager/network/Request;

    move-result-object v0

    goto :goto_0

    .line 336
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 522
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->task_status:[I

    iget v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->current_tab:I

    aget v0, v0, v1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 523
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->view_error:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 524
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->view_loading:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 525
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->gridview:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 526
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->view_disable:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 550
    :cond_0
    :goto_0
    return-void

    .line 527
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->current_page:[I

    iget v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->current_tab:I

    aget v0, v0, v1

    if-nez v0, :cond_4

    .line 528
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->task_status:[I

    iget v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->current_tab:I

    aget v0, v0, v1

    if-nez v0, :cond_2

    .line 529
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->view_error:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 530
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->view_loading:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 531
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->gridview:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 532
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->view_disable:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 533
    :cond_2
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->task_status:[I

    iget v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->current_tab:I

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 534
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->view_error:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 535
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->view_loading:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 536
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->gridview:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 537
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->view_disable:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 538
    :cond_3
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->task_status:[I

    iget v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->current_tab:I

    aget v0, v0, v1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 539
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->view_error:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 540
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->view_loading:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 541
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->gridview:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVisibility(I)V

    .line 542
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->view_disable:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 545
    :cond_4
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->view_error:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 546
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->view_loading:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 547
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->gridview:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVisibility(I)V

    .line 548
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->view_disable:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private update_button()V
    .locals 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->gridview_adapter:[Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;

    iget v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->current_tab:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->notifyDataSetChanged()V

    .line 387
    return-void
.end method


# virtual methods
.method public Init(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 140
    iput p1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->mComponentType:I

    .line 141
    return-void
.end method

.method public listTaskCompleted(Lcom/baidu/launcher/thememanager/network/Response;Lcom/baidu/launcher/thememanager/network/HttpTask;)V
    .locals 2
    .parameter "obj"
    .parameter "task"

    .prologue
    .line 279
    iget-object v1, p2, Lcom/baidu/launcher/thememanager/network/HttpTask;->req_tag:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 281
    .local v0, tab_index:I
    invoke-direct {p0, v0, p1, p2}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->changeAdapter(ILcom/baidu/launcher/thememanager/network/Response;Lcom/baidu/launcher/thememanager/network/HttpTask;)V

    .line 283
    invoke-direct {p0}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->updateView()V

    .line 284
    return-void
.end method

.method public listTaskFailed(Lcom/baidu/launcher/thememanager/network/HttpTask;)V
    .locals 3
    .parameter "task"

    .prologue
    .line 314
    iget-object v1, p1, Lcom/baidu/launcher/thememanager/network/HttpTask;->req_tag:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 316
    .local v0, tab_index:I
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->task_status:[I

    const/4 v2, 0x1

    aput v2, v1, v0

    .line 318
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->current_page:[I

    aget v1, v1, v0

    if-nez v1, :cond_1

    .line 319
    invoke-direct {p0}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->updateView()V

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    iget v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->current_tab:I

    if-ne v0, v1, :cond_0

    .line 325
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->gridview_adapter:[Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->gridview:Landroid/widget/GridView;

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->disableRefreshView(Landroid/widget/GridView;)V

    .line 326
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->gridview_adapter:[Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->resetState()V

    goto :goto_0
.end method

.method public onChange(Ljava/lang/String;)V
    .locals 3
    .parameter "type"

    .prologue
    .line 629
    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 631
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->current_page:[I

    iget v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->current_tab:I

    aget v0, v0, v1

    if-nez v0, :cond_1

    .line 632
    iget v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->current_tab:I

    const/4 v1, 0x1

    const/16 v2, 0x9

    invoke-direct {p0, v0, v1, v2}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->requestThemeList(III)V

    .line 643
    :cond_0
    :goto_0
    return-void

    .line 634
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->task_status:[I

    iget v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->current_tab:I

    const/4 v2, 0x2

    aput v2, v0, v1

    .line 635
    invoke-direct {p0}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->updateView()V

    goto :goto_0

    .line 638
    :cond_2
    const-string v0, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 640
    :cond_3
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->task_status:[I

    iget v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->current_tab:I

    const/4 v2, 0x3

    aput v2, v0, v1

    .line 641
    invoke-direct {p0}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->updateView()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    .line 120
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 121
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->mContext:Landroid/content/Context;

    .line 122
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->setHasOptionsMenu(Z)V

    .line 125
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 126
    .local v7, filter:Landroid/content/IntentFilter;
    const-string v0, "com.baidu.thememanager.action.downloadstatechange"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    const-string v0, "com.baidu.thememanager.ui.parsestatus"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    new-instance v0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$DownloadReceiver;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$DownloadReceiver;-><init>(Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;)V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->mDownloadReceiver:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$DownloadReceiver;

    .line 129
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->mDownloadReceiver:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$DownloadReceiver;

    invoke-virtual {v0, v1, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 131
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->gridview_adapter:[Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;

    array-length v0, v0

    if-ge v6, v0, :cond_0

    .line 132
    iget-object v8, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->gridview_adapter:[Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;

    new-instance v0, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;

    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->mComponentType:I

    iget-object v3, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->btn_click_listener:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ButtonClickListener;

    iget-object v4, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->image_click_listener:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ImageClickListener;

    iget-object v5, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->pull_listener:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$PullGridListener;

    invoke-direct/range {v0 .. v6}, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;-><init>(Landroid/content/Context;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Lcom/baidu/launcher/thememanager/adapter/IPullGridListener;I)V

    aput-object v0, v8, v6

    .line 131
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 136
    :cond_0
    invoke-static {}, Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;->getInstance()Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;->attach(Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor$SDCardObserver;)V

    .line 137
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 146
    const v1, 0x7f03009f

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->mFragView:Landroid/view/View;

    .line 148
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->mFragView:Landroid/view/View;

    const v2, 0x7f0801fc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->view_error:Landroid/view/View;

    .line 149
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->mFragView:Landroid/view/View;

    const v2, 0x7f0801fd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 150
    .local v0, reload:Landroid/widget/Button;
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->mFragView:Landroid/view/View;

    const v2, 0x7f0801ff

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->view_loading:Landroid/view/View;

    .line 151
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->mFragView:Landroid/view/View;

    const v2, 0x7f0801f8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->view_disable:Landroid/view/View;

    .line 152
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->mFragView:Landroid/view/View;

    const v2, 0x7f080134

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->gridview:Landroid/widget/GridView;

    .line 154
    new-instance v1, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$1;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$1;-><init>(Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    if-eqz p3, :cond_0

    .line 167
    const-string v1, "current_tab"

    invoke-virtual {p3, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->current_tab:I

    .line 170
    :cond_0
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->gridview:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->gridview_adapter:[Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;

    iget v3, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->current_tab:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 172
    invoke-static {}, Lcom/baidu/launcher/thememanager/util/StorageUtil;->isSdcardAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    iget v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->current_tab:I

    const/4 v2, 0x1

    const/16 v3, 0x9

    invoke-direct {p0, v1, v2, v3}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->requestThemeList(III)V

    .line 179
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    const/16 v2, 0x64

    new-instance v3, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$DownloadStatusLoaderCallback;

    invoke-direct {v3, p0, v4}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$DownloadStatusLoaderCallback;-><init>(Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$1;)V

    invoke-virtual {v1, v2, v4, v3}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 180
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    const/16 v2, 0x65

    new-instance v3, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$LocalInfoLoaderCallback;

    invoke-direct {v3, p0, v4}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$LocalInfoLoaderCallback;-><init>(Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$1;)V

    invoke-virtual {v1, v2, v4, v3}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 182
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->mFragView:Landroid/view/View;

    return-object v1

    .line 175
    :cond_1
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->task_status:[I

    iget v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->current_tab:I

    const/4 v3, 0x3

    aput v3, v1, v2

    .line 176
    invoke-direct {p0}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->updateView()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 194
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->mDownloadReceiver:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$DownloadReceiver;

    if-eqz v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->mDownloadReceiver:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$DownloadReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 198
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->gridview_adapter:[Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 199
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->gridview_adapter:[Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 200
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->gridview_adapter:[Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->clean()V

    .line 198
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 203
    :cond_2
    invoke-static {}, Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;->getInstance()Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;->detach(Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor$SDCardObserver;)V

    .line 205
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 206
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 187
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->pressed:Z

    .line 189
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 554
    const-string v0, "current_tab"

    iget v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->current_tab:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 555
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 556
    return-void
.end method

.method public taskCancelled(Lcom/baidu/launcher/thememanager/network/HttpTask;)V
    .locals 3
    .parameter "task"

    .prologue
    .line 374
    iget-object v1, p1, Lcom/baidu/launcher/thememanager/network/HttpTask;->req_tag:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 376
    .local v0, tab_index:I
    iget v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->current_tab:I

    if-ne v0, v1, :cond_0

    .line 380
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->gridview_adapter:[Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->gridview:Landroid/widget/GridView;

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->disableRefreshView(Landroid/widget/GridView;)V

    .line 381
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->gridview_adapter:[Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->resetState()V

    .line 383
    :cond_0
    return-void
.end method

.method public taskCompleted(Lcom/baidu/launcher/thememanager/network/HttpTask;Lcom/baidu/launcher/thememanager/network/Response;)V
    .locals 0
    .parameter "task"
    .parameter "obj"

    .prologue
    .line 363
    invoke-virtual {p0, p2, p1}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->listTaskCompleted(Lcom/baidu/launcher/thememanager/network/Response;Lcom/baidu/launcher/thememanager/network/HttpTask;)V

    .line 364
    return-void
.end method

.method public taskFailed(Lcom/baidu/launcher/thememanager/network/HttpTask;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "task"
    .parameter "ex"

    .prologue
    .line 368
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->listTaskFailed(Lcom/baidu/launcher/thememanager/network/HttpTask;)V

    .line 369
    return-void
.end method

.method public taskProgress(Lcom/baidu/launcher/thememanager/network/HttpTask;Lcom/baidu/launcher/thememanager/network/Progress;)V
    .locals 0
    .parameter "task"
    .parameter "progress"

    .prologue
    .line 359
    return-void
.end method
