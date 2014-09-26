.class public Lcom/android/systemui/statusbar/switcher/SwitcherItemView;
.super Landroid/widget/LinearLayout;
.source "SwitcherItemView.java"


# instance fields
.field private configuration:Landroid/view/ViewConfiguration;

.field private mImage:Landroid/widget/ImageView;

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLineHeight:Landroid/view/View;

.field private mLineWidth:Landroid/view/View;

.field private mText:Landroid/widget/TextView;

.field private mTip:Landroid/widget/TextView;

.field private mTouchSlop:I

.field private mTracker:Lcom/android/systemui/statusbar/switcher/SwitchTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->configuration:Landroid/view/ViewConfiguration;

    .line 36
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->configuration:Landroid/view/ViewConfiguration;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->mTouchSlop:I

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/switcher/SwitcherItemView;)Lcom/android/systemui/statusbar/switcher/SwitchTracker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->mTracker:Lcom/android/systemui/statusbar/switcher/SwitchTracker;

    return-object v0
.end method

.method public static inflate(Landroid/content/Context;)Lcom/android/systemui/statusbar/switcher/SwitcherItemView;
    .locals 2
    .parameter "context"

    .prologue
    .line 150
    const v0, 0x7f040033

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;

    return-object v0
.end method


# virtual methods
.method public bindTracker(Lcom/android/systemui/statusbar/switcher/SwitchTracker;)V
    .locals 2
    .parameter "tracker"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->mTracker:Lcom/android/systemui/statusbar/switcher/SwitchTracker;

    .line 41
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->mTracker:Lcom/android/systemui/statusbar/switcher/SwitchTracker;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->setSwitcherView(Lcom/android/systemui/statusbar/switcher/SwitcherItemView;)V

    .line 42
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->mTracker:Lcom/android/systemui/statusbar/switcher/SwitchTracker;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->updateStatus(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 56
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->mTracker:Lcom/android/systemui/statusbar/switcher/SwitchTracker;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->onAttach(Landroid/content/Context;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->setupListeners()V

    .line 59
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 63
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 64
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->mTracker:Lcom/android/systemui/statusbar/switcher/SwitchTracker;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->onDetach(Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 47
    const v0, 0x7f090009

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->mImage:Landroid/widget/ImageView;

    .line 48
    const v0, 0x7f0900bb

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->mText:Landroid/widget/TextView;

    .line 49
    const v0, 0x7f0900c7

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->mTip:Landroid/widget/TextView;

    .line 50
    const v0, 0x7f0900c5

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->mLineWidth:Landroid/view/View;

    .line 51
    const v0, 0x7f0900c6

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->mLineHeight:Landroid/view/View;

    .line 52
    return-void
.end method

.method public setHeightAlpha(F)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->mLineHeight:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 115
    return-void
.end method

.method public setHeightVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->mLineHeight:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 97
    return-void
.end method

.method public setLineHeight(I)V
    .locals 2
    .parameter "height"

    .prologue
    .line 91
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->mLineHeight:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 92
    .local v0, params:Landroid/widget/FrameLayout$LayoutParams;
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 93
    return-void
.end method

.method public setLineWidth(I)V
    .locals 2
    .parameter "width"

    .prologue
    .line 86
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->mLineWidth:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 87
    .local v0, params:Landroid/widget/FrameLayout$LayoutParams;
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 88
    return-void
.end method

.method public setTip(I)V
    .locals 1
    .parameter "tipId"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->mTip:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 127
    return-void
.end method

.method public setTipVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->mTip:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .parameter "titleId"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 79
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    return-void
.end method

.method public setTitleVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    return-void
.end method

.method public setWidthAlpha(F)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->mLineWidth:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 119
    return-void
.end method

.method public setWidthLeftMargin(I)V
    .locals 2
    .parameter "leftMargin"

    .prologue
    .line 104
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->mLineWidth:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 105
    .local v0, params:Landroid/widget/FrameLayout$LayoutParams;
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 106
    return-void
.end method

.method public setWidthRightMargin(I)V
    .locals 2
    .parameter "rightMargin"

    .prologue
    .line 109
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->mLineWidth:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 110
    .local v0, params:Landroid/widget/FrameLayout$LayoutParams;
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 111
    return-void
.end method

.method public setWidthVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->mLineWidth:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 101
    return-void
.end method

.method public setupListeners()V
    .locals 2

    .prologue
    .line 131
    new-instance v0, Lcom/android/systemui/statusbar/switcher/SwitcherItemView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView$1;-><init>(Lcom/android/systemui/statusbar/switcher/SwitcherItemView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    new-instance v0, Lcom/android/systemui/statusbar/switcher/SwitcherItemView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView$2;-><init>(Lcom/android/systemui/statusbar/switcher/SwitcherItemView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->mTracker:Lcom/android/systemui/statusbar/switcher/SwitchTracker;

    instance-of v0, v0, Lcom/android/systemui/statusbar/switcher/MoreTracker;

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->mTracker:Lcom/android/systemui/statusbar/switcher/SwitchTracker;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->updateStatus(Landroid/content/Context;)V

    .line 147
    :cond_0
    return-void
.end method

.method public updateView(IZZ)V
    .locals 1
    .parameter "imageResId"
    .parameter "showLine"
    .parameter "isEnabled"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 70
    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->setEnabled(Z)V

    .line 71
    return-void
.end method
