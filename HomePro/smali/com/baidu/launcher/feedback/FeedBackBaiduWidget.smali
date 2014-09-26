.class public Lcom/baidu/launcher/feedback/FeedBackBaiduWidget;
.super Landroid/widget/FrameLayout;
.source "FeedBackBaiduWidget.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 26
    new-instance v0, Lcom/baidu/launcher/feedback/FeedBackBaiduWidget$1;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/feedback/FeedBackBaiduWidget$1;-><init>(Lcom/baidu/launcher/feedback/FeedBackBaiduWidget;)V

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/feedback/FeedBackBaiduWidget;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    return-void
.end method
