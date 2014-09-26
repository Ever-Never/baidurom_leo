.class public Lcom/baidu/bulletin/ui/op/OperationWebView;
.super Landroid/widget/LinearLayout;
.source "OperationWebView.java"

# interfaces
.implements Lcom/baidu/bulletin/ui/logic/UIController$IOpWebAction;


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static mOperationInstance:Lcom/baidu/bulletin/ui/op/OperationWebView;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLoadUrl:Ljava/lang/String;

.field private mOpWebView:Landroid/webkit/WebView;

.field private mPrDialog:Landroid/app/ProgressDialog;

.field private mUserDismissDialog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/baidu/bulletin/ui/op/OperationWebView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/bulletin/ui/op/OperationWebView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/bulletin/ui/op/OperationWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/bulletin/ui/op/OperationWebView;->mUserDismissDialog:Z

    .line 31
    iput-object p1, p0, Lcom/baidu/bulletin/ui/op/OperationWebView;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/bulletin/ui/op/OperationWebView;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/baidu/bulletin/ui/op/OperationWebView;->mPrDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/baidu/bulletin/ui/op/OperationWebView;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput-object p1, p0, Lcom/baidu/bulletin/ui/op/OperationWebView;->mPrDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method public static getOperationWebViewInstance(Landroid/content/Context;)Lcom/baidu/bulletin/ui/op/OperationWebView;
    .locals 2
    .parameter "context"

    .prologue
    .line 35
    sget-object v0, Lcom/baidu/bulletin/ui/op/OperationWebView;->mOperationInstance:Lcom/baidu/bulletin/ui/op/OperationWebView;

    if-nez v0, :cond_0

    .line 36
    const v0, 0x7f030034

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/baidu/bulletin/ui/op/OperationWebView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/ui/op/OperationWebView;

    sput-object v0, Lcom/baidu/bulletin/ui/op/OperationWebView;->mOperationInstance:Lcom/baidu/bulletin/ui/op/OperationWebView;

    .line 38
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/UIController;->getUIController()Lcom/baidu/bulletin/ui/logic/UIController;

    move-result-object v0

    sget-object v1, Lcom/baidu/bulletin/ui/op/OperationWebView;->mOperationInstance:Lcom/baidu/bulletin/ui/op/OperationWebView;

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/logic/UIController;->addAction(Lcom/baidu/bulletin/ui/logic/UIController$IAction;)V

    .line 40
    :cond_0
    sget-object v0, Lcom/baidu/bulletin/ui/op/OperationWebView;->mOperationInstance:Lcom/baidu/bulletin/ui/op/OperationWebView;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 44
    iget-object v0, p0, Lcom/baidu/bulletin/ui/op/OperationWebView;->mOpWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 45
    const v0, 0x7f0800d9

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/op/OperationWebView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/baidu/bulletin/ui/op/OperationWebView;->mOpWebView:Landroid/webkit/WebView;

    .line 46
    iget-object v0, p0, Lcom/baidu/bulletin/ui/op/OperationWebView;->mOpWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 47
    iget-object v0, p0, Lcom/baidu/bulletin/ui/op/OperationWebView;->mOpWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/baidu/bulletin/ui/op/OperationWebView$1;

    invoke-direct {v1, p0}, Lcom/baidu/bulletin/ui/op/OperationWebView$1;-><init>(Lcom/baidu/bulletin/ui/op/OperationWebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 59
    iget-object v0, p0, Lcom/baidu/bulletin/ui/op/OperationWebView;->mLoadUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/baidu/bulletin/ui/op/OperationWebView;->mOpWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/op/OperationWebView;->mLoadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/baidu/bulletin/ui/op/OperationWebView;->mPrDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/op/OperationWebView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/op/OperationWebView;->mPrDialog:Landroid/app/ProgressDialog;

    .line 63
    iget-object v0, p0, Lcom/baidu/bulletin/ui/op/OperationWebView;->mPrDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/op/OperationWebView;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0276

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p0, Lcom/baidu/bulletin/ui/op/OperationWebView;->mPrDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/op/OperationWebView;->setVisibility(I)V

    goto :goto_0
.end method

.method private showWebView()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 73
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/op/OperationWebView;->init()V

    .line 74
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/op/OperationWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->bringChildToFront(Landroid/view/View;)V

    .line 75
    invoke-virtual {p0, v1}, Lcom/baidu/bulletin/ui/op/OperationWebView;->setFocusable(Z)V

    .line 76
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/op/OperationWebView;->requestFocus()Z

    .line 77
    invoke-virtual {p0, v1}, Lcom/baidu/bulletin/ui/op/OperationWebView;->setClickable(Z)V

    .line 78
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/op/OperationWebView;->setVisibility(I)V

    .line 79
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/op/OperationWebView;->invalidate()V

    .line 80
    return-void
.end method


# virtual methods
.method public isVisible()Z
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/op/OperationWebView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBack()Z
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public onClose()V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public onInit()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 0
    .parameter "loadUrl"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/baidu/bulletin/ui/op/OperationWebView;->mLoadUrl:Ljava/lang/String;

    .line 90
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/op/OperationWebView;->showWebView()V

    .line 91
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 112
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/UIController;->getUIController()Lcom/baidu/bulletin/ui/logic/UIController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/bulletin/ui/logic/UIController;->releaseAction(Lcom/baidu/bulletin/ui/logic/UIController$IAction;)V

    .line 113
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/bulletin/ui/op/OperationWebView;->mOperationInstance:Lcom/baidu/bulletin/ui/op/OperationWebView;

    .line 114
    return-void
.end method
