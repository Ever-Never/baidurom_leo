.class public Lcom/baidu/launcher/ui/folder/FolderAdapter;
.super Landroid/widget/ArrayAdapter;
.source "FolderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/baidu/launcher/data/item/BaseItemInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field mIsDragging:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/BaseItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/BaseItemInfo;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 52
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/folder/FolderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 53
    return-void
.end method


# virtual methods
.method public contain(Lcom/baidu/launcher/data/item/BaseItemInfo;)Z
    .locals 3
    .parameter "info"

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/folder/FolderAdapter;->getRealCount()I

    move-result v0

    .line 102
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 103
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/folder/FolderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 104
    const/4 v2, 0x1

    .line 107
    :goto_1
    return v2

    .line 102
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 120
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getRealCount()I
    .locals 1

    .prologue
    .line 124
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x4

    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 57
    if-nez p2, :cond_0

    .line 58
    iget-object v6, p0, Lcom/baidu/launcher/ui/folder/FolderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f030006

    invoke-virtual {v6, v7, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v3, p2

    .line 60
    check-cast v3, Lcom/baidu/launcher/ui/common/ActionTextView;

    .line 61
    .local v3, textView:Lcom/baidu/launcher/ui/common/ActionTextView;
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/folder/FolderAdapter;->getRealCount()I

    move-result v6

    if-lt p1, v6, :cond_2

    .line 62
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/folder/FolderAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 73
    .local v2, res:Landroid/content/res/Resources;
    const-string v6, ""

    invoke-virtual {v3, v6}, Lcom/baidu/launcher/ui/common/ActionTextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    invoke-virtual {v3, v9}, Lcom/baidu/launcher/ui/common/ActionTextView;->setTag(Ljava/lang/Object;)V

    .line 75
    iput-boolean v5, v3, Lcom/baidu/launcher/ui/common/ActionTextView;->shouldDrawBlur:Z

    .line 76
    iget-boolean v6, p0, Lcom/baidu/launcher/ui/folder/FolderAdapter;->mIsDragging:Z

    if-eqz v6, :cond_1

    :goto_0
    invoke-virtual {v3, v4}, Lcom/baidu/launcher/ui/common/ActionTextView;->setVisibility(I)V

    .line 97
    .end local v2           #res:Landroid/content/res/Resources;
    :goto_1
    return-object p2

    .restart local v2       #res:Landroid/content/res/Resources;
    :cond_1
    move v4, v5

    .line 76
    goto :goto_0

    .line 78
    .end local v2           #res:Landroid/content/res/Resources;
    :cond_2
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/folder/FolderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/data/item/BaseItemInfo;

    .line 79
    .local v1, info:Lcom/baidu/launcher/data/item/BaseItemInfo;
    new-instance v6, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;

    iget-object v7, v1, Lcom/baidu/launcher/data/item/BaseItemInfo;->iconBitmap:Landroid/graphics/Bitmap;

    sget v8, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->iconScale:F

    invoke-direct {v6, v7, v8}, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;F)V

    invoke-virtual {v3, v9, v6, v9, v9}, Lcom/baidu/launcher/ui/common/ActionTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 81
    iget-object v6, v1, Lcom/baidu/launcher/data/item/BaseItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3, v6}, Lcom/baidu/launcher/ui/common/ActionTextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    invoke-virtual {v3, v1}, Lcom/baidu/launcher/ui/common/ActionTextView;->setTag(Ljava/lang/Object;)V

    .line 83
    const/4 v6, 0x1

    iput-boolean v6, v3, Lcom/baidu/launcher/ui/common/ActionTextView;->shouldDrawBlur:Z

    .line 84
    invoke-virtual {v3, v5}, Lcom/baidu/launcher/ui/common/ActionTextView;->updateEventNumber(I)V

    .line 85
    iput v5, v1, Lcom/baidu/launcher/data/item/BaseItemInfo;->eventCount:I

    .line 87
    invoke-static {}, Lcom/baidu/launcher/utils/EventNumberUtil;->getInstance()Lcom/baidu/launcher/utils/EventNumberUtil;

    move-result-object v0

    .line 88
    .local v0, enventNumberUtil:Lcom/baidu/launcher/utils/EventNumberUtil;
    invoke-virtual {v0, v1}, Lcom/baidu/launcher/utils/EventNumberUtil;->checkEventInfo(Lcom/baidu/launcher/data/item/BaseItemInfo;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 89
    invoke-virtual {v0, v3}, Lcom/baidu/launcher/utils/EventNumberUtil;->registerView(Landroid/view/View;)Z

    .line 91
    :cond_3
    iget-boolean v6, v1, Lcom/baidu/launcher/data/item/BaseItemInfo;->isDragging:Z

    if-eqz v6, :cond_4

    .line 92
    invoke-virtual {v3, v4}, Lcom/baidu/launcher/ui/common/ActionTextView;->setVisibility(I)V

    goto :goto_1

    .line 94
    :cond_4
    invoke-virtual {v3, v5}, Lcom/baidu/launcher/ui/common/ActionTextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public insert(Lcom/baidu/launcher/data/item/BaseItemInfo;I)V
    .locals 1
    .parameter "object"
    .parameter "index"

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/folder/FolderAdapter;->getRealCount()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 112
    invoke-super {p0, p1, p2}, Landroid/widget/ArrayAdapter;->insert(Ljava/lang/Object;I)V

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/folder/FolderAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic insert(Ljava/lang/Object;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    check-cast p1, Lcom/baidu/launcher/data/item/BaseItemInfo;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/baidu/launcher/ui/folder/FolderAdapter;->insert(Lcom/baidu/launcher/data/item/BaseItemInfo;I)V

    return-void
.end method
