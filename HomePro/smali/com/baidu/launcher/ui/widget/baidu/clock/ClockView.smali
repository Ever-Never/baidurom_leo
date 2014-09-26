.class public Lcom/baidu/launcher/ui/widget/baidu/clock/ClockView;
.super Landroid/widget/FrameLayout;
.source "ClockView.java"

# interfaces
.implements Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView$BaiduWidgetView;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static TORCH_WIDGET_ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/16 v0, 0x9

    sput v0, Lcom/baidu/launcher/ui/widget/baidu/clock/ClockView;->TORCH_WIDGET_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method private activeManager(Landroid/content/ComponentName;)V
    .locals 4
    .parameter "aComponentName"

    .prologue
    .line 42
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.ADD_DEVICE_ADMIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 43
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 44
    const-string v1, "android.app.extra.ADD_EXPLANATION"

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/clock/ClockView;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0092

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/clock/ClockView;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v1, v0}, Lcom/baidu/launcher/app/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 46
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 32
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/clock/ClockView;->mContext:Landroid/content/Context;

    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 33
    .local v1, policyManager:Landroid/app/admin/DevicePolicyManager;
    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/clock/ClockView;->mContext:Landroid/content/Context;

    const-class v3, Lcom/baidu/launcher/app/LockScreenReceiver;

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    .local v0, componentName:Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->lockNow()V

    .line 39
    :goto_0
    return-void

    .line 37
    :cond_0
    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/clock/ClockView;->activeManager(Landroid/content/ComponentName;)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 51
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 26
    invoke-virtual {p0, p0}, Lcom/baidu/launcher/ui/widget/baidu/clock/ClockView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 28
    return-void
.end method

.method public update(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 55
    return-void
.end method
