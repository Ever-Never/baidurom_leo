.class public Lcom/baidu/bulletin/ui/settings/ChannelItem;
.super Landroid/widget/ImageView;
.source "ChannelItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mIconNormRes:I

.field private mIconSelectedRes:I

.field private mId:I

.field private mSelected:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 18
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/baidu/bulletin/ui/settings/ChannelItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/bulletin/ui/settings/ChannelItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/bulletin/ui/settings/ChannelItem;->mSelected:Z

    .line 27
    return-void
.end method

.method private setSelectState(Z)V
    .locals 1
    .parameter "isSelected"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/baidu/bulletin/ui/settings/ChannelItem;->mSelected:Z

    .line 40
    if-eqz p1, :cond_0

    .line 41
    iget v0, p0, Lcom/baidu/bulletin/ui/settings/ChannelItem;->mIconSelectedRes:I

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/settings/ChannelItem;->setImageResource(I)V

    .line 45
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/settings/ChannelItem;->invalidate()V

    .line 46
    return-void

    .line 43
    :cond_0
    iget v0, p0, Lcom/baidu/bulletin/ui/settings/ChannelItem;->mIconNormRes:I

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/settings/ChannelItem;->setImageResource(I)V

    goto :goto_0
.end method

.method private switchState()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 49
    iget-boolean v0, p0, Lcom/baidu/bulletin/ui/settings/ChannelItem;->mSelected:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/baidu/bulletin/ui/settings/ChannelItem;->setSelectState(Z)V

    .line 50
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/UIController;->getUIController()Lcom/baidu/bulletin/ui/logic/UIController;

    move-result-object v0

    iget v2, p0, Lcom/baidu/bulletin/ui/settings/ChannelItem;->mId:I

    iget-boolean v3, p0, Lcom/baidu/bulletin/ui/settings/ChannelItem;->mSelected:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/bulletin/ui/logic/UIController;->storeSettings(IIZ)V

    .line 51
    return-void

    :cond_0
    move v0, v1

    .line 49
    goto :goto_0
.end method


# virtual methods
.method public initChannelItem(IIIIZ)V
    .locals 0
    .parameter "channelId"
    .parameter "iconNormResource"
    .parameter "iconSelectedResource"
    .parameter "bgResource"
    .parameter "selected"

    .prologue
    .line 30
    iput p1, p0, Lcom/baidu/bulletin/ui/settings/ChannelItem;->mId:I

    .line 31
    iput p2, p0, Lcom/baidu/bulletin/ui/settings/ChannelItem;->mIconNormRes:I

    .line 32
    iput p3, p0, Lcom/baidu/bulletin/ui/settings/ChannelItem;->mIconSelectedRes:I

    .line 33
    invoke-direct {p0, p5}, Lcom/baidu/bulletin/ui/settings/ChannelItem;->setSelectState(Z)V

    .line 34
    invoke-virtual {p0, p4}, Lcom/baidu/bulletin/ui/settings/ChannelItem;->setBackgroundResource(I)V

    .line 35
    invoke-virtual {p0, p0}, Lcom/baidu/bulletin/ui/settings/ChannelItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/settings/ChannelItem;->switchState()V

    .line 56
    return-void
.end method
