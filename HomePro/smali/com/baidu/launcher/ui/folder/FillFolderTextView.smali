.class public Lcom/baidu/launcher/ui/folder/FillFolderTextView;
.super Lcom/baidu/launcher/ui/common/ActionTextView;
.source "FillFolderTextView.java"


# instance fields
.field private mIsSelected:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/common/ActionTextView;-><init>(Landroid/content/Context;)V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/folder/FillFolderTextView;->mIsSelected:Z

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/baidu/launcher/ui/common/ActionTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/folder/FillFolderTextView;->mIsSelected:Z

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/launcher/ui/common/ActionTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/folder/FillFolderTextView;->mIsSelected:Z

    .line 26
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/4 v8, 0x0

    .line 30
    invoke-super {p0, p1}, Lcom/baidu/launcher/ui/common/ActionTextView;->draw(Landroid/graphics/Canvas;)V

    .line 31
    iget-boolean v6, p0, Lcom/baidu/launcher/ui/folder/FillFolderTextView;->mIsSelected:Z

    if-eqz v6, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/folder/FillFolderTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02014d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 33
    .local v3, select:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 34
    .local v2, iconW:I
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 35
    .local v0, iconH:I
    invoke-virtual {v3, v8, v8, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 36
    invoke-static {}, Lcom/baidu/launcher/utils/Utilities;->getAppIconSize()I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3f59999a

    mul-float/2addr v6, v7

    float-to-int v1, v6

    .line 37
    .local v1, iconSize:I
    iget v6, p0, Lcom/baidu/launcher/ui/folder/FillFolderTextView;->mScrollX:I

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/folder/FillFolderTextView;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    div-int/lit8 v7, v1, 0x2

    add-int/2addr v6, v7

    mul-int/lit8 v7, v2, 0x7

    div-int/lit8 v7, v7, 0xa

    sub-int v4, v6, v7

    .line 38
    .local v4, translateX:I
    iget v6, p0, Lcom/baidu/launcher/ui/folder/FillFolderTextView;->mScrollY:I

    add-int/2addr v6, v1

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/folder/FillFolderTextView;->getPaddingTop()I

    move-result v7

    add-int/2addr v6, v7

    mul-int/lit8 v7, v0, 0x7

    div-int/lit8 v7, v7, 0xa

    sub-int v5, v6, v7

    .line 39
    .local v5, translateY:I
    int-to-float v6, v4

    int-to-float v7, v5

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 40
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 41
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 43
    .end local v0           #iconH:I
    .end local v1           #iconSize:I
    .end local v2           #iconW:I
    .end local v3           #select:Landroid/graphics/drawable/Drawable;
    .end local v4           #translateX:I
    .end local v5           #translateY:I
    :cond_0
    return-void
.end method

.method public setItemSelected(Z)V
    .locals 0
    .parameter "selected"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/baidu/launcher/ui/folder/FillFolderTextView;->mIsSelected:Z

    .line 47
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/folder/FillFolderTextView;->invalidate()V

    .line 48
    return-void
.end method
