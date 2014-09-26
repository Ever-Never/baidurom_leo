.class public Lcom/baidu/launcher/ui/widget/baidu/BaiduPresetWidget;
.super Landroid/widget/LinearLayout;
.source "BaiduPresetWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method private updateStatus()V
    .locals 2

    .prologue
    .line 42
    const v1, 0x7f08027e

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/widget/baidu/BaiduPresetWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 43
    .local v0, image:Landroid/widget/ImageView;
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    new-instance v1, Lcom/baidu/launcher/ui/widget/baidu/BaiduPresetWidget$1;

    invoke-direct {v1, p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/BaiduPresetWidget$1;-><init>(Lcom/baidu/launcher/ui/widget/baidu/BaiduPresetWidget;Landroid/widget/ImageView;)V

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/widget/baidu/BaiduPresetWidget;->post(Ljava/lang/Runnable;)Z

    .line 80
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f08027e

    if-ne v2, v3, :cond_1

    .line 85
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/BaiduPresetWidget;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 86
    .local v0, tag:Ljava/lang/Object;
    instance-of v2, v0, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 87
    check-cast v1, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;

    .line 88
    .local v1, widget:Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;
    iget-object v2, v1, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;->replacedIntent:Landroid/content/Intent;

    if-eqz v2, :cond_3

    .line 89
    iget v2, v1, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;->status:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 90
    const-wide/16 v2, 0x1

    iput-wide v2, v1, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;->clickCount:J

    .line 91
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;->isPreset:Z

    .line 92
    const/4 v2, 0x4

    iput v2, v1, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;->status:I

    .line 93
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/BaiduPresetWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/launcher/data/HomeDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/HomeDataManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/launcher/data/HomeDataManager;->updateItemInDatabase(Lcom/baidu/launcher/data/item/HomeItemInfo;)V

    .line 94
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/BaiduPresetWidget;->mContext:Landroid/content/Context;

    iget-object v2, v1, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;->title:Ljava/lang/CharSequence;

    if-nez v2, :cond_2

    const-string v2, ""

    :goto_0
    iget-wide v4, v1, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;->businessTableID:J

    invoke-static {v3, v2, v4, v5}, Lcom/baidu/launcher/ubc/UBC;->reportAppActivated(Landroid/content/Context;Ljava/lang/String;J)V

    .line 95
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/BaiduPresetWidget;->updateStatus()V

    .line 97
    :cond_0
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/BaiduPresetWidget;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/baidu/launcher/app/Launcher;

    iget-object v3, v1, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;->replacedIntent:Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/baidu/launcher/app/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    .line 103
    .end local v0           #tag:Ljava/lang/Object;
    .end local v1           #widget:Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;
    :cond_1
    :goto_1
    return-void

    .line 94
    .restart local v0       #tag:Ljava/lang/Object;
    .restart local v1       #widget:Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;
    :cond_2
    iget-object v2, v1, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 98
    :cond_3
    iget-boolean v2, v1, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;->isPreset:Z

    if-eqz v2, :cond_1

    .line 99
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/BaiduPresetWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/baidu/launcher/business/BusinessUtil;->BusinessIconClick(Landroid/content/Context;Lcom/baidu/launcher/data/item/BaseItemInfo;)Z

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 38
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/BaiduPresetWidget;->updateStatus()V

    .line 39
    return-void
.end method
