.class public Lcom/android/systemui/statusbar/switcher/activity/Item;
.super Landroid/widget/LinearLayout;
.source "Item.java"


# instance fields
.field private mDragger:Landroid/widget/ImageView;

.field private mKey:I

.field private mSwitcher:Landroid/widget/ImageView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public static createItem(Landroid/content/Context;I)Lcom/android/systemui/statusbar/switcher/activity/Item;
    .locals 3
    .parameter "context"
    .parameter "key"

    .prologue
    .line 159
    const v1, 0x7f040030

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/switcher/activity/Item;

    .line 160
    .local v0, item:Lcom/android/systemui/statusbar/switcher/activity/Item;
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/switcher/activity/Item;->setKey(I)V

    .line 161
    return-object v0
.end method


# virtual methods
.method public cloneItem(Lcom/android/systemui/statusbar/switcher/activity/Item;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 166
    return-void
.end method

.method public equal(Lcom/android/systemui/statusbar/switcher/activity/Item;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 169
    iget v0, p0, Lcom/android/systemui/statusbar/switcher/activity/Item;->mKey:I

    iget v1, p1, Lcom/android/systemui/statusbar/switcher/activity/Item;->mKey:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getKey()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/android/systemui/statusbar/switcher/activity/Item;->mKey:I

    return v0
.end method

.method public isTouchingOnDrager(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "ev"

    .prologue
    .line 145
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 146
    .local v2, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 148
    .local v3, y:I
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/activity/Item;->getLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/activity/Item;->getTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/activity/Item;->getRight()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/activity/Item;->getBottom()I

    move-result v7

    invoke-direct {v1, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 149
    .local v1, rect:Landroid/graphics/Rect;
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 150
    new-instance v0, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/systemui/statusbar/switcher/activity/Item;->mDragger:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLeft()I

    move-result v4

    add-int/lit8 v4, v4, -0x32

    iget-object v5, p0, Lcom/android/systemui/statusbar/switcher/activity/Item;->mDragger:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/switcher/activity/Item;->mDragger:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getRight()I

    move-result v6

    add-int/lit8 v6, v6, 0x32

    iget-object v7, p0, Lcom/android/systemui/statusbar/switcher/activity/Item;->mDragger:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getBottom()I

    move-result v7

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 151
    .local v0, dragRect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/activity/Item;->getLeft()I

    move-result v4

    sub-int v4, v2, v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/activity/Item;->getTop()I

    move-result v5

    sub-int v5, v3, v5

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 152
    const/4 v4, 0x1

    .line 155
    .end local v0           #dragRect:Landroid/graphics/Rect;
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 48
    const v0, 0x7f0900bd

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/switcher/activity/Item;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/switcher/activity/Item;->mSwitcher:Landroid/widget/ImageView;

    .line 49
    const v0, 0x7f0900be

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/switcher/activity/Item;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/switcher/activity/Item;->mTitle:Landroid/widget/TextView;

    .line 50
    const v0, 0x7f0900bf

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/switcher/activity/Item;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/switcher/activity/Item;->mDragger:Landroid/widget/ImageView;

    .line 51
    return-void
.end method

.method public set(II)V
    .locals 1
    .parameter "imgRes"
    .parameter "titleRes"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/activity/Item;->mSwitcher:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/activity/Item;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 64
    return-void
.end method

.method public setKey(I)V
    .locals 2
    .parameter "key"

    .prologue
    .line 67
    iput p1, p0, Lcom/android/systemui/statusbar/switcher/activity/Item;->mKey:I

    .line 68
    packed-switch p1, :pswitch_data_0

    .line 138
    :goto_0
    :pswitch_0
    return-void

    .line 70
    :pswitch_1
    const v0, 0x7f020087

    const v1, 0x7f0c00ad

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/switcher/activity/Item;->set(II)V

    goto :goto_0

    .line 73
    :pswitch_2
    const v0, 0x7f020076

    const v1, 0x7f0c00ae

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/switcher/activity/Item;->set(II)V

    goto :goto_0

    .line 76
    :pswitch_3
    const v0, 0x7f020079

    const v1, 0x7f0c00af

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/switcher/activity/Item;->set(II)V

    goto :goto_0

    .line 79
    :pswitch_4
    const v0, 0x7f02007c

    const v1, 0x7f0c00b0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/switcher/activity/Item;->set(II)V

    goto :goto_0

    .line 82
    :pswitch_5
    const v0, 0x7f020089

    const v1, 0x7f0c00b1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/switcher/activity/Item;->set(II)V

    goto :goto_0

    .line 85
    :pswitch_6
    const v0, 0x7f02009a

    const v1, 0x7f0c00b2

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/switcher/activity/Item;->set(II)V

    goto :goto_0

    .line 88
    :pswitch_7
    const v0, 0x7f0200a0

    const v1, 0x7f0c00b3

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/switcher/activity/Item;->set(II)V

    goto :goto_0

    .line 91
    :pswitch_8
    const v0, 0x7f0200a3

    const v1, 0x7f0c00b4

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/switcher/activity/Item;->set(II)V

    goto :goto_0

    .line 94
    :pswitch_9
    const v0, 0x7f0200aa

    const v1, 0x7f0c00b5

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/switcher/activity/Item;->set(II)V

    goto :goto_0

    .line 97
    :pswitch_a
    const v0, 0x7f0200ac

    const v1, 0x7f0c00c1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/switcher/activity/Item;->set(II)V

    goto :goto_0

    .line 101
    :pswitch_b
    const v0, 0x7f02008e

    const v1, 0x7f0c00b9

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/switcher/activity/Item;->set(II)V

    goto :goto_0

    .line 104
    :pswitch_c
    const v0, 0x7f020085

    const v1, 0x7f0c00b8

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/switcher/activity/Item;->set(II)V

    goto :goto_0

    .line 107
    :pswitch_d
    const v0, 0x7f020091

    const v1, 0x7f0c00bb

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/switcher/activity/Item;->set(II)V

    goto/16 :goto_0

    .line 110
    :pswitch_e
    const v0, 0x7f02008b

    const v1, 0x7f0c00bd

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/switcher/activity/Item;->set(II)V

    goto/16 :goto_0

    .line 113
    :pswitch_f
    const v0, 0x7f0200a2

    const v1, 0x7f0c00be

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/switcher/activity/Item;->set(II)V

    goto/16 :goto_0

    .line 116
    :pswitch_10
    const v0, 0x7f0200a6

    const v1, 0x7f0c00b6

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/switcher/activity/Item;->set(II)V

    goto/16 :goto_0

    .line 119
    :pswitch_11
    const v0, 0x7f020097

    const v1, 0x7f0c00bc

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/switcher/activity/Item;->set(II)V

    goto/16 :goto_0

    .line 122
    :pswitch_12
    const v0, 0x7f02009d

    const v1, 0x7f0c00c5

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/switcher/activity/Item;->set(II)V

    goto/16 :goto_0

    .line 125
    :pswitch_13
    const v0, 0x7f020095

    const v1, 0x7f0c00c6

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/switcher/activity/Item;->set(II)V

    goto/16 :goto_0

    .line 128
    :pswitch_14
    const v0, 0x7f020080

    const v1, 0x7f0c00c7

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/switcher/activity/Item;->set(II)V

    goto/16 :goto_0

    .line 131
    :pswitch_15
    const v0, 0x7f02008d

    const v1, 0x7f0c00b7

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/switcher/activity/Item;->set(II)V

    goto/16 :goto_0

    .line 134
    :pswitch_16
    const v0, 0x7f020093

    const v1, 0x7f0c00ba

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/switcher/activity/Item;->set(II)V

    goto/16 :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_0
        :pswitch_16
    .end packed-switch
.end method

.method public setTitle(I)V
    .locals 1
    .parameter "titleRes"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/activity/Item;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 59
    return-void
.end method
