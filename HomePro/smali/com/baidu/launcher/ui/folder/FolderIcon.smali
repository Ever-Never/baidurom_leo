.class public Lcom/baidu/launcher/ui/folder/FolderIcon;
.super Lcom/baidu/launcher/ui/common/BubbleTextView;
.source "FolderIcon.java"

# interfaces
.implements Lcom/baidu/launcher/ui/folder/FolderHolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/folder/FolderIcon$FolderAction;
    }
.end annotation


# instance fields
.field private mInfo:Lcom/baidu/launcher/data/item/IFolderInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/common/BubbleTextView;-><init>(Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/baidu/launcher/ui/common/BubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method private convertDragData(Ljava/lang/Object;)Lcom/baidu/launcher/data/item/BaseItemInfo;
    .locals 9
    .parameter "dragInfo"

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 114
    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/FolderIcon;->mInfo:Lcom/baidu/launcher/data/item/IFolderInfo;

    invoke-interface {v2}, Lcom/baidu/launcher/data/item/IFolderInfo;->getItemType()I

    move-result v8

    .line 115
    .local v8, type:I
    const/4 v2, 0x2

    if-ne v8, v2, :cond_2

    .line 117
    instance-of v2, p1, Lcom/baidu/launcher/data/item/ListAppInfo;

    if-eqz v2, :cond_1

    .line 119
    new-instance v1, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    check-cast p1, Lcom/baidu/launcher/data/item/ListAppInfo;

    .end local p1
    invoke-direct {v1, p1}, Lcom/baidu/launcher/data/item/HomeShortcutInfo;-><init>(Lcom/baidu/launcher/data/item/ListAppInfo;)V

    .line 125
    .local v1, item:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    :goto_0
    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/FolderIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->getIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;

    .line 126
    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/FolderIcon;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/launcher/data/HomeDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/HomeDataManager;

    move-result-object v0

    .line 128
    .local v0, homeDataManager:Lcom/baidu/launcher/data/HomeDataManager;
    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/FolderIcon;->mInfo:Lcom/baidu/launcher/data/item/IFolderInfo;

    invoke-interface {v2}, Lcom/baidu/launcher/data/item/IFolderInfo;->getID()J

    move-result-wide v2

    iget-object v5, p0, Lcom/baidu/launcher/ui/folder/FolderIcon;->mInfo:Lcom/baidu/launcher/data/item/IFolderInfo;

    invoke-interface {v5}, Lcom/baidu/launcher/data/item/IFolderInfo;->getSize()I

    move-result v5

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/launcher/data/HomeDataManager;->addOrMoveItemInDatabase(Lcom/baidu/launcher/data/item/HomeItemInfo;JIII)V

    .line 140
    .end local v0           #homeDataManager:Lcom/baidu/launcher/data/HomeDataManager;
    .end local v1           #item:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    :cond_0
    :goto_1
    return-object v1

    .line 120
    .restart local p1
    :cond_1
    instance-of v2, p1, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 121
    check-cast v1, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    .restart local v1       #item:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    goto :goto_0

    .line 131
    .end local v1           #item:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    :cond_2
    const/16 v2, 0xb

    if-ne v8, v2, :cond_0

    instance-of v2, p1, Lcom/baidu/launcher/data/item/ListAppInfo;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 132
    check-cast v1, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 134
    .local v1, item:Lcom/baidu/launcher/data/item/ListAppInfo;
    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/FolderIcon;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v7

    .line 136
    .local v7, appsDataManager:Lcom/baidu/launcher/data/AppsDataManager;
    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/FolderIcon;->mInfo:Lcom/baidu/launcher/data/item/IFolderInfo;

    invoke-interface {v2}, Lcom/baidu/launcher/data/item/IFolderInfo;->getID()J

    move-result-wide v2

    iget-object v4, p0, Lcom/baidu/launcher/ui/folder/FolderIcon;->mInfo:Lcom/baidu/launcher/data/item/IFolderInfo;

    invoke-interface {v4}, Lcom/baidu/launcher/data/item/IFolderInfo;->getSize()I

    move-result v4

    invoke-virtual {v7, v1, v2, v3, v4}, Lcom/baidu/launcher/data/AppsDataManager;->addOrMoveItemInDatabase(Lcom/baidu/launcher/data/item/ListItemInfo;JI)V

    goto :goto_1
.end method

.method public static fromXml(ILandroid/content/Context;Landroid/view/ViewGroup;Lcom/baidu/launcher/data/item/IFolderInfo;)Lcom/baidu/launcher/ui/folder/FolderIcon;
    .locals 6
    .parameter "resId"
    .parameter "context"
    .parameter "group"
    .parameter "folderInfo"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 63
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, p0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/folder/FolderIcon;

    .line 64
    .local v2, icon:Lcom/baidu/launcher/ui/folder/FolderIcon;
    invoke-static {p1, p3, v4}, Lcom/baidu/launcher/utils/Utilities;->getFolderPicture(Landroid/content/Context;Lcom/baidu/launcher/data/item/IFolderInfo;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 65
    .local v0, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v5, v0, v5, v5}, Lcom/baidu/launcher/ui/folder/FolderIcon;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 66
    invoke-interface {p3, p1}, Lcom/baidu/launcher/data/item/IFolderInfo;->getDisplayTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/launcher/ui/folder/FolderIcon;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {v2, p3}, Lcom/baidu/launcher/ui/folder/FolderIcon;->setTag(Ljava/lang/Object;)V

    .line 68
    iput-object p3, v2, Lcom/baidu/launcher/ui/folder/FolderIcon;->mInfo:Lcom/baidu/launcher/data/item/IFolderInfo;

    .line 69
    iput-boolean v4, v2, Lcom/baidu/launcher/ui/folder/FolderIcon;->shouldDrawBlur:Z

    .line 70
    sget-boolean v3, Lcom/baidu/launcher/utils/Utilities;->useShadow:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->show_icon_floor:Z

    if-eqz v3, :cond_0

    .line 71
    const v3, 0x7f020314

    invoke-virtual {v2, v3}, Lcom/baidu/launcher/ui/folder/FolderIcon;->setBackgroundResource(I)V

    .line 74
    :cond_0
    invoke-static {}, Lcom/baidu/launcher/utils/EventNumberUtil;->getInstance()Lcom/baidu/launcher/utils/EventNumberUtil;

    move-result-object v1

    .line 75
    .local v1, enventNumberUtil:Lcom/baidu/launcher/utils/EventNumberUtil;
    check-cast p3, Lcom/baidu/launcher/data/item/BaseItemInfo;

    .end local p3
    invoke-virtual {v1, p3}, Lcom/baidu/launcher/utils/EventNumberUtil;->checkEventInfo(Lcom/baidu/launcher/data/item/BaseItemInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 76
    invoke-virtual {v1, v2}, Lcom/baidu/launcher/utils/EventNumberUtil;->registerView(Landroid/view/View;)Z

    .line 78
    :cond_1
    return-object v2
.end method


# virtual methods
.method public acceptDrop(Ljava/lang/Object;)Z
    .locals 4
    .parameter "dragInfo"

    .prologue
    const/4 v2, 0x1

    .line 82
    move-object v0, p1

    check-cast v0, Lcom/baidu/launcher/data/item/BaseItemInfo;

    .line 83
    .local v0, item:Lcom/baidu/launcher/data/item/BaseItemInfo;
    iget v1, v0, Lcom/baidu/launcher/data/item/BaseItemInfo;->itemType:I

    .line 84
    .local v1, itemType:I
    const/16 v3, 0xa

    if-eq v1, v3, :cond_0

    if-eqz v1, :cond_0

    if-eq v1, v2, :cond_0

    .line 87
    const/4 v2, 0x0

    .line 89
    :cond_0
    return v2
.end method

.method public cancelFolderHighlight()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 153
    invoke-super {p0}, Lcom/baidu/launcher/ui/common/BubbleTextView;->cancelFolderHighlight()V

    .line 154
    iget-object v1, p0, Lcom/baidu/launcher/ui/folder/FolderIcon;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/FolderIcon;->mInfo:Lcom/baidu/launcher/data/item/IFolderInfo;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/baidu/launcher/utils/Utilities;->getFolderPicture(Landroid/content/Context;Lcom/baidu/launcher/data/item/IFolderInfo;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 155
    .local v0, pic:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v4, v0, v4, v4}, Lcom/baidu/launcher/ui/folder/FolderIcon;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 156
    return-void
.end method

.method public checkForRemoveFolder()V
    .locals 0

    .prologue
    .line 228
    return-void
.end method

.method public drawFolderHighlight()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 144
    invoke-super {p0}, Lcom/baidu/launcher/ui/common/BubbleTextView;->drawFolderHighlight()V

    .line 145
    iget-object v1, p0, Lcom/baidu/launcher/ui/folder/FolderIcon;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/FolderIcon;->mInfo:Lcom/baidu/launcher/data/item/IFolderInfo;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/baidu/launcher/utils/Utilities;->getFolderPicture(Landroid/content/Context;Lcom/baidu/launcher/data/item/IFolderInfo;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 146
    .local v0, pic:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v4, v0, v4, v4}, Lcom/baidu/launcher/ui/folder/FolderIcon;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 147
    return-void
.end method

.method public onDrop(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)V
    .locals 3
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 94
    invoke-direct {p0, p7}, Lcom/baidu/launcher/ui/folder/FolderIcon;->convertDragData(Ljava/lang/Object;)Lcom/baidu/launcher/data/item/BaseItemInfo;

    move-result-object v1

    .line 95
    .local v1, item:Lcom/baidu/launcher/data/item/BaseItemInfo;
    if-nez v1, :cond_0

    .line 110
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/FolderIcon;->mInfo:Lcom/baidu/launcher/data/item/IFolderInfo;

    invoke-interface {v2, v1}, Lcom/baidu/launcher/data/item/IFolderInfo;->add(Lcom/baidu/launcher/data/item/BaseItemInfo;)V

    .line 99
    invoke-static {}, Lcom/baidu/launcher/utils/EventNumberUtil;->getInstance()Lcom/baidu/launcher/utils/EventNumberUtil;

    move-result-object v0

    .line 100
    .local v0, enventNumberUtil:Lcom/baidu/launcher/utils/EventNumberUtil;
    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/FolderIcon;->mInfo:Lcom/baidu/launcher/data/item/IFolderInfo;

    check-cast v2, Lcom/baidu/launcher/data/item/BaseItemInfo;

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/utils/EventNumberUtil;->checkEventInfo(Lcom/baidu/launcher/data/item/BaseItemInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    invoke-virtual {v0, p0}, Lcom/baidu/launcher/utils/EventNumberUtil;->registerView(Landroid/view/View;)Z

    .line 103
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/folder/FolderIcon;->updateFolderIcon()V

    .line 104
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/folder/FolderIcon;->cancelFolderHighlight()V

    goto :goto_0
.end method

.method public onFlingToDelete(Lcom/baidu/launcher/ui/dragdrop/DragSource;Ljava/lang/Object;IILandroid/graphics/PointF;)V
    .locals 0
    .parameter "source"
    .parameter "dragInfo"
    .parameter "x"
    .parameter "y"
    .parameter "vec"

    .prologue
    .line 233
    return-void
.end method

.method public removeOpenFolderCallbacks()V
    .locals 0

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/folder/FolderIcon;->cancelFolderHighlight()V

    .line 160
    return-void
.end method

.method public updateFolderEventNumber(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/utils/EventNumberUtil$EventNumberInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 192
    .local p1, eventNumberInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/utils/EventNumberUtil$EventNumberInfo;>;"
    return-void
.end method

.method public updateFolderIcon()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 173
    iget-object v1, p0, Lcom/baidu/launcher/ui/folder/FolderIcon;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/FolderIcon;->mInfo:Lcom/baidu/launcher/data/item/IFolderInfo;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/baidu/launcher/utils/Utilities;->getFolderPicture(Landroid/content/Context;Lcom/baidu/launcher/data/item/IFolderInfo;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 174
    .local v0, pic:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v4, v0, v4, v4}, Lcom/baidu/launcher/ui/folder/FolderIcon;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 175
    iget-object v1, p0, Lcom/baidu/launcher/ui/folder/FolderIcon;->mInfo:Lcom/baidu/launcher/data/item/IFolderInfo;

    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/FolderIcon;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/baidu/launcher/data/item/IFolderInfo;->getDisplayTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/folder/FolderIcon;->setText(Ljava/lang/CharSequence;)V

    .line 176
    return-void
.end method
