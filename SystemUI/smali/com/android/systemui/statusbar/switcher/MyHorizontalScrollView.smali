.class public Lcom/android/systemui/statusbar/switcher/MyHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "MyHorizontalScrollView.java"


# instance fields
.field mItemWidth:I

.field mLineWidth:I

.field private mMovePlus:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 8
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/systemui/statusbar/switcher/MyHorizontalScrollView;->mMovePlus:I

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/switcher/MyHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/systemui/statusbar/switcher/MyHorizontalScrollView;->mMovePlus:I

    .line 49
    return-void
.end method


# virtual methods
.method public moveToCenter()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/android/systemui/statusbar/switcher/MyHorizontalScrollView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/switcher/MyHorizontalScrollView$1;-><init>(Lcom/android/systemui/statusbar/switcher/MyHorizontalScrollView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/switcher/MyHorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    .line 29
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 19
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 20
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 11
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onSizeChanged(IIII)V

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/MyHorizontalScrollView;->moveToCenter()V

    .line 13
    return-void
.end method

.method public scrollItem(I)V
    .locals 2
    .parameter "number"

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scrollItem by"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/switcher/MyHorizontalScrollView;->mItemWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/switcher/MyHorizontalScrollView;->mLineWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->debug(Ljava/lang/String;)V

    .line 38
    iget v0, p0, Lcom/android/systemui/statusbar/switcher/MyHorizontalScrollView;->mItemWidth:I

    iget v1, p0, Lcom/android/systemui/statusbar/switcher/MyHorizontalScrollView;->mLineWidth:I

    add-int/2addr v0, v1

    mul-int/2addr v0, p1

    iget v1, p0, Lcom/android/systemui/statusbar/switcher/MyHorizontalScrollView;->mMovePlus:I

    add-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/switcher/MyHorizontalScrollView;->scrollTo(II)V

    .line 39
    return-void
.end method

.method public setItemWidth(II)V
    .locals 0
    .parameter "viewWidth"
    .parameter "lineWidth"

    .prologue
    .line 32
    iput p1, p0, Lcom/android/systemui/statusbar/switcher/MyHorizontalScrollView;->mItemWidth:I

    .line 33
    iput p2, p0, Lcom/android/systemui/statusbar/switcher/MyHorizontalScrollView;->mLineWidth:I

    .line 34
    return-void
.end method
