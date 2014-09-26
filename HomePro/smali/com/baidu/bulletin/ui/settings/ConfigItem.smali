.class public Lcom/baidu/bulletin/ui/settings/ConfigItem;
.super Landroid/widget/RelativeLayout;
.source "ConfigItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final CONFIG_COLOR_CLOSE:I

.field private static final CONFIG_COLOR_OPEN:I


# instance fields
.field private configList:Lcom/baidu/bulletin/ui/settings/ConfigList;

.field private mAlertDialog:Landroid/app/Dialog;

.field private mHint:[I

.field private mIcon:Landroid/widget/ImageView;

.field private mId:I

.field private mSelected:Z

.field private mStateText:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xb6

    .line 26
    const/4 v0, 0x0

    const/16 v1, 0x77

    const/16 v2, 0xfd

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/baidu/bulletin/ui/settings/ConfigItem;->CONFIG_COLOR_OPEN:I

    .line 27
    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/baidu/bulletin/ui/settings/ConfigItem;->CONFIG_COLOR_CLOSE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 31
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/baidu/bulletin/ui/settings/ConfigItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/bulletin/ui/settings/ConfigItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/bulletin/ui/settings/ConfigItem;->mSelected:Z

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/bulletin/ui/settings/ConfigItem;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/settings/ConfigItem;->switchState()V

    return-void
.end method

.method private setSelectState(Z)V
    .locals 3
    .parameter "isSelected"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/baidu/bulletin/ui/settings/ConfigItem;->mSelected:Z

    .line 64
    if-eqz p1, :cond_1

    .line 65
    iget-object v0, p0, Lcom/baidu/bulletin/ui/settings/ConfigItem;->mStateText:Landroid/widget/TextView;

    sget v1, Lcom/baidu/bulletin/ui/settings/ConfigItem;->CONFIG_COLOR_OPEN:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 66
    iget-object v0, p0, Lcom/baidu/bulletin/ui/settings/ConfigItem;->mHint:[I

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/baidu/bulletin/ui/settings/ConfigItem;->mStateText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/settings/ConfigItem;->mHint:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 73
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/settings/ConfigItem;->invalidate()V

    .line 74
    return-void

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/baidu/bulletin/ui/settings/ConfigItem;->mStateText:Landroid/widget/TextView;

    sget v1, Lcom/baidu/bulletin/ui/settings/ConfigItem;->CONFIG_COLOR_CLOSE:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    iget-object v0, p0, Lcom/baidu/bulletin/ui/settings/ConfigItem;->mHint:[I

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/baidu/bulletin/ui/settings/ConfigItem;->mStateText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/settings/ConfigItem;->mHint:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private showConfirmDialog()V
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/baidu/bulletin/ui/settings/ConfigItem;->mAlertDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/settings/ConfigItem;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1030132

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c024b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0247

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0249

    new-instance v2, Lcom/baidu/bulletin/ui/settings/ConfigItem$2;

    invoke-direct {v2, p0}, Lcom/baidu/bulletin/ui/settings/ConfigItem$2;-><init>(Lcom/baidu/bulletin/ui/settings/ConfigItem;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c024a

    new-instance v2, Lcom/baidu/bulletin/ui/settings/ConfigItem$1;

    invoke-direct {v2, p0}, Lcom/baidu/bulletin/ui/settings/ConfigItem$1;-><init>(Lcom/baidu/bulletin/ui/settings/ConfigItem;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bulletin/ui/settings/ConfigItem;->mAlertDialog:Landroid/app/Dialog;

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/baidu/bulletin/ui/settings/ConfigItem;->mAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/baidu/bulletin/ui/settings/ConfigItem;->mAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f09002f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 132
    iget-object v0, p0, Lcom/baidu/bulletin/ui/settings/ConfigItem;->mAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 134
    :cond_1
    return-void
.end method

.method private switchState()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 77
    iget v0, p0, Lcom/baidu/bulletin/ui/settings/ConfigItem;->mId:I

    if-ne v0, v1, :cond_1

    .line 78
    iget-object v0, p0, Lcom/baidu/bulletin/ui/settings/ConfigItem;->configList:Lcom/baidu/bulletin/ui/settings/ConfigList;

    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/settings/ConfigList;->getConfigItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/ui/settings/ConfigItem;

    iget-boolean v0, v0, Lcom/baidu/bulletin/ui/settings/ConfigItem;->mSelected:Z

    if-nez v0, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    iget-boolean v0, p0, Lcom/baidu/bulletin/ui/settings/ConfigItem;->mSelected:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-direct {p0, v0}, Lcom/baidu/bulletin/ui/settings/ConfigItem;->setSelectState(Z)V

    .line 84
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/UIController;->getUIController()Lcom/baidu/bulletin/ui/logic/UIController;

    move-result-object v0

    iget v3, p0, Lcom/baidu/bulletin/ui/settings/ConfigItem;->mId:I

    iget-boolean v4, p0, Lcom/baidu/bulletin/ui/settings/ConfigItem;->mSelected:Z

    invoke-virtual {v0, v1, v3, v4}, Lcom/baidu/bulletin/ui/logic/UIController;->storeSettings(IIZ)V

    .line 86
    iget v0, p0, Lcom/baidu/bulletin/ui/settings/ConfigItem;->mId:I

    if-nez v0, :cond_0

    .line 87
    iget-boolean v0, p0, Lcom/baidu/bulletin/ui/settings/ConfigItem;->mSelected:Z

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/baidu/bulletin/ui/settings/ConfigItem;->configList:Lcom/baidu/bulletin/ui/settings/ConfigList;

    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/settings/ConfigList;->getConfigItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/ui/settings/ConfigItem;

    invoke-direct {v0, v2}, Lcom/baidu/bulletin/ui/settings/ConfigItem;->setSelectState(Z)V

    .line 91
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/UIController;->getUIController()Lcom/baidu/bulletin/ui/logic/UIController;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v2}, Lcom/baidu/bulletin/ui/logic/UIController;->storeSettings(IIZ)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 83
    goto :goto_1
.end method


# virtual methods
.method public findViewsById()V
    .locals 1

    .prologue
    .line 57
    const v0, 0x7f0800e3

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/settings/ConfigItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bulletin/ui/settings/ConfigItem;->mIcon:Landroid/widget/ImageView;

    .line 58
    const v0, 0x7f0800e4

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/settings/ConfigItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bulletin/ui/settings/ConfigItem;->mTitle:Landroid/widget/TextView;

    .line 59
    const v0, 0x7f0800e5

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/settings/ConfigItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bulletin/ui/settings/ConfigItem;->mStateText:Landroid/widget/TextView;

    .line 60
    return-void
.end method

.method public initConfigItem(Lcom/baidu/bulletin/ui/settings/ConfigList;III[IZ)V
    .locals 1
    .parameter "configList"
    .parameter "channelId"
    .parameter "iconResource"
    .parameter "itemTitle"
    .parameter "itemHint"
    .parameter "selected"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/baidu/bulletin/ui/settings/ConfigItem;->configList:Lcom/baidu/bulletin/ui/settings/ConfigList;

    .line 46
    iput p2, p0, Lcom/baidu/bulletin/ui/settings/ConfigItem;->mId:I

    .line 47
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/settings/ConfigItem;->findViewsById()V

    .line 48
    iget-object v0, p0, Lcom/baidu/bulletin/ui/settings/ConfigItem;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 49
    iget-object v0, p0, Lcom/baidu/bulletin/ui/settings/ConfigItem;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(I)V

    .line 50
    iput-object p5, p0, Lcom/baidu/bulletin/ui/settings/ConfigItem;->mHint:[I

    .line 51
    invoke-direct {p0, p6}, Lcom/baidu/bulletin/ui/settings/ConfigItem;->setSelectState(Z)V

    .line 52
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/settings/ConfigItem;->setClickable(Z)V

    .line 53
    invoke-virtual {p0, p0}, Lcom/baidu/bulletin/ui/settings/ConfigItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/baidu/bulletin/ui/settings/ConfigItem;->mHint:[I

    if-eqz v0, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/settings/ConfigItem;->switchState()V

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/settings/ConfigItem;->showConfirmDialog()V

    goto :goto_0
.end method

.method public refresh(Z)V
    .locals 0
    .parameter "isSelected"

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/ui/settings/ConfigItem;->setSelectState(Z)V

    .line 138
    return-void
.end method
