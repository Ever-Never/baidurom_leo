.class public Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;
.super Landroid/widget/RelativeLayout;
.source "SwitchCell.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell$UserActionListener;
    }
.end annotation


# instance fields
.field private listener:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell$UserActionListener;

.field private mIsShortcut:Z

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;)Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell$UserActionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;->listener:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell$UserActionListener;

    return-object v0
.end method


# virtual methods
.method public IsShortcut()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;->mIsShortcut:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 33
    const v0, 0x7f0801c3

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;->mTitle:Landroid/widget/TextView;

    .line 34
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell$1;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell$1;-><init>(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;)V

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell$2;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell$2;-><init>(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;)V

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 51
    return-void
.end method

.method public setImageViewResource(II)V
    .locals 1
    .parameter "id"
    .parameter "resId"

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 55
    .local v0, target:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 58
    :cond_0
    return-void
.end method

.method public setShortcut(Z)V
    .locals 0
    .parameter "mIsShortcut"

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;->mIsShortcut:Z

    .line 85
    return-void
.end method

.method public setTextViewResource(II)V
    .locals 1
    .parameter "id"
    .parameter "resId"

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 62
    .local v0, target:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 65
    :cond_0
    return-void
.end method

.method public setTitleVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 68
    if-eqz p1, :cond_0

    .line 69
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;->mTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;->mTitle:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method setUserActionListener(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell$UserActionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;->listener:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell$UserActionListener;

    .line 81
    return-void
.end method
