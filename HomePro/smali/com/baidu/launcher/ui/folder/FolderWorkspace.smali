.class public Lcom/baidu/launcher/ui/folder/FolderWorkspace;
.super Landroid/widget/GridView;
.source "FolderWorkspace.java"


# instance fields
.field private mGridViewFrame:Landroid/graphics/Rect;

.field private mTouchFrame:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method


# virtual methods
.method public pointToPosition(II)I
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 29
    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/FolderWorkspace;->mTouchFrame:Landroid/graphics/Rect;

    .line 30
    .local v2, frame:Landroid/graphics/Rect;
    if-nez v2, :cond_0

    .line 31
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/baidu/launcher/ui/folder/FolderWorkspace;->mTouchFrame:Landroid/graphics/Rect;

    .line 32
    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/FolderWorkspace;->mTouchFrame:Landroid/graphics/Rect;

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/folder/FolderWorkspace;->getChildCount()I

    move-result v1

    .line 36
    .local v1, count:I
    add-int/lit8 v3, v1, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_3

    .line 37
    invoke-virtual {p0, v3}, Lcom/baidu/launcher/ui/folder/FolderWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 38
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 39
    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 40
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 41
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/folder/FolderWorkspace;->getFirstVisiblePosition()I

    move-result v4

    add-int/2addr v4, v3

    .line 45
    .end local v0           #child:Landroid/view/View;
    :goto_1
    return v4

    .line 36
    .restart local v0       #child:Landroid/view/View;
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 45
    .end local v0           #child:Landroid/view/View;
    :cond_3
    const/4 v4, -0x1

    goto :goto_1
.end method
