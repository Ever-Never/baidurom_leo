.class public Lcom/baidu/bulletin/ui/settings/Settings;
.super Landroid/widget/RelativeLayout;
.source "Settings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/baidu/bulletin/ui/logic/UIController$ISettingsAction;


# static fields
.field public static final BULLEINT_CONGI_REFRESH:Ljava/lang/String; = "com.baidu.bulletin.refresh"

.field public static final TYPE_CHANNEL:I = 0x0

.field public static final TYPE_CONFIG:I = 0x1

.field private static mSettingsInstance:Lcom/baidu/bulletin/ui/settings/Settings;


# instance fields
.field private mBackView:Landroid/widget/ImageView;

.field private mChannelList:Lcom/baidu/bulletin/ui/settings/ChannelList;

.field private mTabChannel:Landroid/view/View;

.field private mTabConfig:Landroid/view/View;

.field private needInited:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/bulletin/ui/settings/Settings;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/bulletin/ui/settings/Settings;->needInited:Z

    .line 40
    return-void
.end method

.method public static getSettingsInstance(Landroid/content/Context;)Lcom/baidu/bulletin/ui/settings/Settings;
    .locals 2
    .parameter "context"

    .prologue
    .line 43
    sget-object v0, Lcom/baidu/bulletin/ui/settings/Settings;->mSettingsInstance:Lcom/baidu/bulletin/ui/settings/Settings;

    if-nez v0, :cond_0

    .line 44
    const v0, 0x7f03003d

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/baidu/bulletin/ui/settings/Settings;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/ui/settings/Settings;

    sput-object v0, Lcom/baidu/bulletin/ui/settings/Settings;->mSettingsInstance:Lcom/baidu/bulletin/ui/settings/Settings;

    .line 45
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/UIController;->getUIController()Lcom/baidu/bulletin/ui/logic/UIController;

    move-result-object v0

    sget-object v1, Lcom/baidu/bulletin/ui/settings/Settings;->mSettingsInstance:Lcom/baidu/bulletin/ui/settings/Settings;

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/logic/UIController;->addAction(Lcom/baidu/bulletin/ui/logic/UIController$IAction;)V

    .line 47
    :cond_0
    sget-object v0, Lcom/baidu/bulletin/ui/settings/Settings;->mSettingsInstance:Lcom/baidu/bulletin/ui/settings/Settings;

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/baidu/bulletin/ui/settings/Settings;->mChannelList:Lcom/baidu/bulletin/ui/settings/ChannelList;

    if-nez v0, :cond_0

    .line 52
    const v0, 0x7f0800e1

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/settings/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/ui/settings/ChannelList;

    iput-object v0, p0, Lcom/baidu/bulletin/ui/settings/Settings;->mChannelList:Lcom/baidu/bulletin/ui/settings/ChannelList;

    .line 53
    const v0, 0x7f0800df

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/settings/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bulletin/ui/settings/Settings;->mBackView:Landroid/widget/ImageView;

    .line 54
    iget-object v0, p0, Lcom/baidu/bulletin/ui/settings/Settings;->mBackView:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bulletin/ui/settings/Settings$1;

    invoke-direct {v1, p0}, Lcom/baidu/bulletin/ui/settings/Settings$1;-><init>(Lcom/baidu/bulletin/ui/settings/Settings;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    :cond_0
    return-void
.end method

.method private showPages(I)V
    .locals 1
    .parameter "type"

    .prologue
    const/4 v0, 0x1

    .line 64
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/settings/Settings;->init()V

    .line 66
    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/settings/Settings;->setFocusable(Z)V

    .line 67
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/settings/Settings;->requestFocus()Z

    .line 68
    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/settings/Settings;->setClickable(Z)V

    .line 69
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/settings/Settings;->setVisibility(I)V

    .line 70
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/settings/Settings;->invalidate()V

    .line 71
    return-void
.end method


# virtual methods
.method public isVisible()Z
    .locals 1

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/settings/Settings;->getVisibility()I

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
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/baidu/bulletin/ui/settings/Settings;->mTabChannel:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/baidu/bulletin/ui/settings/Settings;->showPages(I)V

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/baidu/bulletin/ui/settings/Settings;->mTabConfig:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 84
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/baidu/bulletin/ui/settings/Settings;->showPages(I)V

    goto :goto_0
.end method

.method public onClose()V
    .locals 2

    .prologue
    .line 95
    sget-object v0, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;->SubscribedInfoChange:Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/ChangeNotifyManager;->nofityChange(Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;Ljava/lang/Object;)V

    .line 96
    return-void
.end method

.method public onInit()V
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/baidu/bulletin/ui/settings/Settings;->needInited:Z

    if-eqz v0, :cond_0

    .line 106
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/settings/Settings;->init()V

    .line 107
    iget-object v0, p0, Lcom/baidu/bulletin/ui/settings/Settings;->mChannelList:Lcom/baidu/bulletin/ui/settings/ChannelList;

    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/settings/ChannelList;->onInit()V

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/bulletin/ui/settings/Settings;->needInited:Z

    .line 110
    :cond_0
    return-void
.end method

.method public onStart(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/ui/settings/Settings;->showPages(I)V

    .line 91
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 114
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/UIController;->getUIController()Lcom/baidu/bulletin/ui/logic/UIController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/bulletin/ui/logic/UIController;->releaseAction(Lcom/baidu/bulletin/ui/logic/UIController$IAction;)V

    .line 115
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/bulletin/ui/settings/Settings;->mSettingsInstance:Lcom/baidu/bulletin/ui/settings/Settings;

    .line 116
    return-void
.end method
