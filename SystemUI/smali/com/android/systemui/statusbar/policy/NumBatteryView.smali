.class public Lcom/android/systemui/statusbar/policy/NumBatteryView;
.super Landroid/widget/FrameLayout;
.source "NumBatteryView.java"


# instance fields
.field private mBackground:Landroid/widget/ImageView;

.field private mBatteryNumView:Landroid/view/View;

.field private mNum1:Landroid/widget/ImageView;

.field private mNum2:Landroid/widget/ImageView;

.field private mNum3:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
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
    .line 86
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 87
    const v0, 0x7f090033

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NumBatteryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NumBatteryView;->mNum1:Landroid/widget/ImageView;

    .line 88
    const v0, 0x7f090034

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NumBatteryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NumBatteryView;->mNum2:Landroid/widget/ImageView;

    .line 89
    const v0, 0x7f090035

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NumBatteryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NumBatteryView;->mNum3:Landroid/widget/ImageView;

    .line 90
    const v0, 0x7f090031

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NumBatteryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NumBatteryView;->mBackground:Landroid/widget/ImageView;

    .line 91
    const v0, 0x7f090032

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NumBatteryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NumBatteryView;->mBatteryNumView:Landroid/view/View;

    .line 92
    return-void
.end method

.method public setImageLevel(IZ)V
    .locals 8
    .parameter "level"
    .parameter "isCharging"

    .prologue
    const v5, 0x7f0200f6

    const v4, 0x7f0200f5

    const v3, 0x7f0200ea

    const/4 v2, 0x0

    const/16 v7, 0x64

    .line 32
    move v0, p1

    .line 33
    .local v0, unit:I
    if-ltz p1, :cond_1

    if-gt p1, v7, :cond_1

    .line 35
    const/16 v1, 0x14

    if-le p1, v1, :cond_3

    .line 36
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NumBatteryView;->mNum1:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 37
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NumBatteryView;->mNum2:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 38
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NumBatteryView;->mNum3:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 40
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NumBatteryView;->mBackground:Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    if-ne p1, v7, :cond_2

    :cond_0
    const v1, 0x7f020176

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 61
    :goto_1
    if-eqz p2, :cond_7

    if-eq p1, v7, :cond_7

    .line 62
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NumBatteryView;->mBatteryNumView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NumBatteryView;->mBatteryNumView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NumBatteryView;->mBatteryNumView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NumBatteryView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e005f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NumBatteryView;->mBatteryNumView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 71
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NumBatteryView;->mNum1:Landroid/widget/ImageView;

    div-int/lit8 v3, v0, 0x64

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 72
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NumBatteryView;->mNum1:Landroid/widget/ImageView;

    if-ne p1, v7, :cond_8

    move v1, v2

    :goto_3
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74
    rem-int/lit8 v0, v0, 0x64

    .line 75
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NumBatteryView;->mNum2:Landroid/widget/ImageView;

    div-int/lit8 v3, v0, 0xa

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 76
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NumBatteryView;->mNum2:Landroid/widget/ImageView;

    const/16 v1, 0xa

    if-lt p1, v1, :cond_9

    move v1, v2

    :goto_4
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 78
    rem-int/lit8 v0, v0, 0xa

    .line 79
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NumBatteryView;->mNum3:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 80
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NumBatteryView;->mNum3:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 82
    :cond_1
    return-void

    .line 40
    :cond_2
    const v1, 0x7f020172

    goto :goto_0

    .line 43
    :cond_3
    const/16 v1, 0xa

    if-le p1, v1, :cond_5

    .line 44
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NumBatteryView;->mNum1:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 45
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NumBatteryView;->mNum2:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 46
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NumBatteryView;->mNum3:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 48
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NumBatteryView;->mBackground:Landroid/widget/ImageView;

    if-nez p2, :cond_4

    const v1, 0x7f020178

    :goto_5
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_4
    const v1, 0x7f020174

    goto :goto_5

    .line 52
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NumBatteryView;->mNum1:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 53
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NumBatteryView;->mNum2:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 54
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NumBatteryView;->mNum3:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 56
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NumBatteryView;->mBackground:Landroid/widget/ImageView;

    if-nez p2, :cond_6

    const v1, 0x7f020177

    :goto_6
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :cond_6
    const v1, 0x7f020173

    goto :goto_6

    .line 66
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NumBatteryView;->mBatteryNumView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NumBatteryView;->mBatteryNumView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NumBatteryView;->mBatteryNumView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NumBatteryView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e005f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NumBatteryView;->mBatteryNumView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_2

    .line 72
    :cond_8
    const/16 v1, 0x8

    goto/16 :goto_3

    .line 76
    :cond_9
    const/16 v1, 0x8

    goto/16 :goto_4
.end method
