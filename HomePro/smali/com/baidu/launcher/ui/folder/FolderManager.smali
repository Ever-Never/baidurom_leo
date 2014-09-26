.class public Lcom/baidu/launcher/ui/folder/FolderManager;
.super Ljava/lang/Object;
.source "FolderManager.java"


# instance fields
.field private mBackupFolder:Lcom/baidu/launcher/data/item/IFolderInfo;

.field private mFolderLayer:Lcom/baidu/launcher/ui/folder/FolderLayer;

.field private mKeepBackground:Z

.field private mOpendFolderIcon:Lcom/baidu/launcher/ui/folder/FolderHolder;

.field private mOpenedFolder:Lcom/baidu/launcher/ui/folder/Folder;


# direct methods
.method public constructor <init>(Lcom/baidu/launcher/ui/folder/FolderLayer;)V
    .locals 0
    .parameter "folderLayer"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/baidu/launcher/ui/folder/FolderManager;->mFolderLayer:Lcom/baidu/launcher/ui/folder/FolderLayer;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/ui/folder/FolderManager;)Lcom/baidu/launcher/ui/folder/FolderHolder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FolderManager;->mOpendFolderIcon:Lcom/baidu/launcher/ui/folder/FolderHolder;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/launcher/ui/folder/FolderManager;)Lcom/baidu/launcher/ui/folder/FolderLayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FolderManager;->mFolderLayer:Lcom/baidu/launcher/ui/folder/FolderLayer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/launcher/ui/folder/FolderManager;)Lcom/baidu/launcher/ui/folder/Folder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FolderManager;->mOpenedFolder:Lcom/baidu/launcher/ui/folder/Folder;

    return-object v0
.end method


# virtual methods
.method public backupFolder(Lcom/baidu/launcher/data/item/IFolderInfo;)V
    .locals 0
    .parameter "folder"

    .prologue
    .line 184
    iput-object p1, p0, Lcom/baidu/launcher/ui/folder/FolderManager;->mBackupFolder:Lcom/baidu/launcher/data/item/IFolderInfo;

    .line 185
    return-void
.end method

.method public cancelFolderHighlight()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FolderManager;->mOpendFolderIcon:Lcom/baidu/launcher/ui/folder/FolderHolder;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FolderManager;->mOpendFolderIcon:Lcom/baidu/launcher/ui/folder/FolderHolder;

    invoke-interface {v0}, Lcom/baidu/launcher/ui/folder/FolderHolder;->cancelFolderHighlight()V

    .line 170
    :cond_0
    return-void
.end method

.method public closeFolder(Lcom/baidu/launcher/app/Launcher;Lcom/baidu/launcher/ui/dragdrop/DragController;ZZ[I)V
    .locals 3
    .parameter "launcher"
    .parameter "dragController"
    .parameter "save"
    .parameter "animate"
    .parameter "pos"

    .prologue
    .line 92
    new-instance v0, Lcom/baidu/launcher/ui/folder/FolderManager$1;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/baidu/launcher/ui/folder/FolderManager$1;-><init>(Lcom/baidu/launcher/ui/folder/FolderManager;Lcom/baidu/launcher/ui/dragdrop/DragController;ZZ)V

    .line 97
    .local v0, run:Ljava/lang/Runnable;
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/baidu/launcher/ui/folder/FolderManager$2;

    invoke-direct {v2, p0, p1, p5, v0}, Lcom/baidu/launcher/ui/folder/FolderManager$2;-><init>(Lcom/baidu/launcher/ui/folder/FolderManager;Lcom/baidu/launcher/app/Launcher;[ILjava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 104
    return-void
.end method

.method public closeFolder(Lcom/baidu/launcher/ui/dragdrop/DragController;ZZ)V
    .locals 6
    .parameter "dragController"
    .parameter "save"
    .parameter "animate"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 51
    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/FolderManager;->mOpenedFolder:Lcom/baidu/launcher/ui/folder/Folder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/FolderManager;->mOpendFolderIcon:Lcom/baidu/launcher/ui/folder/FolderHolder;

    if-nez v2, :cond_2

    .line 52
    :cond_0
    iget-boolean v2, p0, Lcom/baidu/launcher/ui/folder/FolderManager;->mKeepBackground:Z

    if-eqz v2, :cond_1

    .line 53
    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/FolderManager;->mFolderLayer:Lcom/baidu/launcher/ui/folder/FolderLayer;

    iget-boolean v3, p0, Lcom/baidu/launcher/ui/folder/FolderManager;->mKeepBackground:Z

    invoke-virtual {v2, p3, v3}, Lcom/baidu/launcher/ui/folder/FolderLayer;->startFolderCloseAnim(ZZ)V

    .line 54
    iput-boolean v4, p0, Lcom/baidu/launcher/ui/folder/FolderManager;->mKeepBackground:Z

    .line 88
    :goto_0
    return-void

    .line 56
    :cond_1
    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/FolderManager;->mFolderLayer:Lcom/baidu/launcher/ui/folder/FolderLayer;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/baidu/launcher/ui/folder/FolderLayer;->setVisibility(I)V

    .line 57
    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/FolderManager;->mFolderLayer:Lcom/baidu/launcher/ui/folder/FolderLayer;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/folder/FolderLayer;->destoryLayerBackground()V

    goto :goto_0

    .line 61
    :cond_2
    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/FolderManager;->mOpenedFolder:Lcom/baidu/launcher/ui/folder/Folder;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/folder/Folder;->getInfo()Lcom/baidu/launcher/data/item/IFolderInfo;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/baidu/launcher/data/item/IFolderInfo;->setOpen(Z)V

    .line 62
    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/FolderManager;->mOpenedFolder:Lcom/baidu/launcher/ui/folder/Folder;

    instance-of v2, v2, Lcom/baidu/launcher/ui/dragdrop/DropTarget;

    if-eqz v2, :cond_3

    .line 63
    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/FolderManager;->mOpenedFolder:Lcom/baidu/launcher/ui/folder/Folder;

    check-cast v2, Lcom/baidu/launcher/ui/dragdrop/DropTarget;

    invoke-virtual {p1, v2}, Lcom/baidu/launcher/ui/dragdrop/DragController;->removeDropTarget(Lcom/baidu/launcher/ui/dragdrop/DropTarget;)V

    .line 65
    :cond_3
    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/FolderManager;->mOpenedFolder:Lcom/baidu/launcher/ui/folder/Folder;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/folder/Folder;->isEditingName()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 66
    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/FolderManager;->mOpenedFolder:Lcom/baidu/launcher/ui/folder/Folder;

    invoke-virtual {v2, p2}, Lcom/baidu/launcher/ui/folder/Folder;->doneEditTitle(Z)V

    .line 68
    :cond_4
    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/FolderManager;->mFolderLayer:Lcom/baidu/launcher/ui/folder/FolderLayer;

    invoke-virtual {v2, v5}, Lcom/baidu/launcher/ui/folder/FolderLayer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/FolderManager;->mFolderLayer:Lcom/baidu/launcher/ui/folder/FolderLayer;

    iget-boolean v3, p0, Lcom/baidu/launcher/ui/folder/FolderManager;->mKeepBackground:Z

    invoke-virtual {v2, p3, v3}, Lcom/baidu/launcher/ui/folder/FolderLayer;->startFolderCloseAnim(ZZ)V

    .line 70
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/folder/FolderManager;->refreshFolderIcon()V

    .line 73
    invoke-static {}, Lcom/baidu/launcher/utils/EventNumberUtil;->getInstance()Lcom/baidu/launcher/utils/EventNumberUtil;

    move-result-object v0

    .line 74
    .local v0, eventUtil:Lcom/baidu/launcher/utils/EventNumberUtil;
    invoke-virtual {v0}, Lcom/baidu/launcher/utils/EventNumberUtil;->unregisterFolderViews()V

    .line 75
    invoke-virtual {v0, v4}, Lcom/baidu/launcher/utils/EventNumberUtil;->onChange(Z)V

    .line 76
    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/FolderManager;->mOpendFolderIcon:Lcom/baidu/launcher/ui/folder/FolderHolder;

    invoke-interface {v2}, Lcom/baidu/launcher/ui/folder/FolderHolder;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/data/item/IFolderInfo;

    .line 77
    .local v1, info:Lcom/baidu/launcher/data/item/IFolderInfo;
    check-cast v1, Lcom/baidu/launcher/data/item/BaseItemInfo;

    .end local v1           #info:Lcom/baidu/launcher/data/item/IFolderInfo;
    invoke-virtual {v0, v1}, Lcom/baidu/launcher/utils/EventNumberUtil;->checkEventInfo(Lcom/baidu/launcher/data/item/BaseItemInfo;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 78
    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/FolderManager;->mOpendFolderIcon:Lcom/baidu/launcher/ui/folder/FolderHolder;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/utils/EventNumberUtil;->unregisterView(Landroid/view/View;)Z

    .line 83
    :cond_5
    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/FolderManager;->mOpenedFolder:Lcom/baidu/launcher/ui/folder/Folder;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/folder/Folder;->unbind()V

    .line 84
    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/FolderManager;->mFolderLayer:Lcom/baidu/launcher/ui/folder/FolderLayer;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/folder/FolderLayer;->unbindFolder()V

    .line 85
    iput-object v5, p0, Lcom/baidu/launcher/ui/folder/FolderManager;->mOpendFolderIcon:Lcom/baidu/launcher/ui/folder/FolderHolder;

    .line 86
    iput-object v5, p0, Lcom/baidu/launcher/ui/folder/FolderManager;->mOpenedFolder:Lcom/baidu/launcher/ui/folder/Folder;

    .line 87
    iput-boolean v4, p0, Lcom/baidu/launcher/ui/folder/FolderManager;->mKeepBackground:Z

    goto :goto_0
.end method

.method public getBackupFolder()Lcom/baidu/launcher/data/item/IFolderInfo;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FolderManager;->mBackupFolder:Lcom/baidu/launcher/data/item/IFolderInfo;

    return-object v0
.end method

.method public getOpenFolder()Lcom/baidu/launcher/ui/folder/Folder;
    .locals 1

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/folder/FolderManager;->isFolderOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FolderManager;->mFolderLayer:Lcom/baidu/launcher/ui/folder/FolderLayer;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/folder/FolderLayer;->getFolder()Lcom/baidu/launcher/ui/folder/Folder;

    move-result-object v0

    .line 180
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFolderOpened()Z
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FolderManager;->mFolderLayer:Lcom/baidu/launcher/ui/folder/FolderLayer;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/folder/FolderLayer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public openFolder(Lcom/baidu/launcher/app/Launcher;Lcom/baidu/launcher/ui/folder/FolderHolder;Lcom/baidu/launcher/ui/logic/ViewManager;Z[IJ)V
    .locals 7
    .parameter "launcher"
    .parameter "folderIcon"
    .parameter "viewManager"
    .parameter "onlyShowBackground"
    .parameter "pos"
    .parameter "startTime"

    .prologue
    .line 150
    invoke-virtual {p0, p2, p3, p4}, Lcom/baidu/launcher/ui/folder/FolderManager;->openFolder(Lcom/baidu/launcher/ui/folder/FolderHolder;Lcom/baidu/launcher/ui/logic/ViewManager;Z)V

    .line 151
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FolderManager;->mFolderLayer:Lcom/baidu/launcher/ui/folder/FolderLayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/folder/FolderLayer;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FolderManager;->mFolderLayer:Lcom/baidu/launcher/ui/folder/FolderLayer;

    invoke-virtual {v0, p6, p7}, Lcom/baidu/launcher/ui/folder/FolderLayer;->setStartTime(J)V

    .line 153
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/baidu/launcher/ui/folder/FolderManager$3;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/baidu/launcher/ui/folder/FolderManager$3;-><init>(Lcom/baidu/launcher/ui/folder/FolderManager;Lcom/baidu/launcher/ui/logic/ViewManager;Lcom/baidu/launcher/app/Launcher;Lcom/baidu/launcher/ui/folder/FolderHolder;[I)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 159
    return-void
.end method

.method public openFolder(Lcom/baidu/launcher/ui/folder/FolderHolder;Lcom/baidu/launcher/ui/logic/ViewManager;Z)V
    .locals 10
    .parameter "folderIcon"
    .parameter "viewManager"
    .parameter "onlyShowBackground"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 108
    iput-boolean v7, p0, Lcom/baidu/launcher/ui/folder/FolderManager;->mKeepBackground:Z

    .line 109
    if-eqz p3, :cond_0

    .line 110
    iget-object v5, p0, Lcom/baidu/launcher/ui/folder/FolderManager;->mFolderLayer:Lcom/baidu/launcher/ui/folder/FolderLayer;

    invoke-virtual {v5, v6}, Lcom/baidu/launcher/ui/folder/FolderLayer;->startFolderOpenAnim(Z)V

    .line 146
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-virtual {p2}, Lcom/baidu/launcher/ui/logic/ViewManager;->getDragController()Lcom/baidu/launcher/ui/dragdrop/DragController;

    move-result-object v0

    .line 114
    .local v0, dragController:Lcom/baidu/launcher/ui/dragdrop/DragController;
    invoke-interface {p1}, Lcom/baidu/launcher/ui/folder/FolderHolder;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/data/item/IFolderInfo;

    .line 115
    .local v3, folderInfo:Lcom/baidu/launcher/data/item/IFolderInfo;
    iput-object p1, p0, Lcom/baidu/launcher/ui/folder/FolderManager;->mOpendFolderIcon:Lcom/baidu/launcher/ui/folder/FolderHolder;

    .line 117
    iget-object v4, p0, Lcom/baidu/launcher/ui/folder/FolderManager;->mFolderLayer:Lcom/baidu/launcher/ui/folder/FolderLayer;

    .line 118
    .local v4, layer:Lcom/baidu/launcher/ui/folder/FolderLayer;
    invoke-virtual {v4}, Lcom/baidu/launcher/ui/folder/FolderLayer;->getFolder()Lcom/baidu/launcher/ui/folder/Folder;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 119
    invoke-virtual {v4}, Lcom/baidu/launcher/ui/folder/FolderLayer;->getFolder()Lcom/baidu/launcher/ui/folder/Folder;

    move-result-object v2

    .line 120
    .local v2, folder:Lcom/baidu/launcher/ui/folder/Folder;
    if-eqz v2, :cond_1

    .line 122
    :try_start_0
    invoke-virtual {v2}, Lcom/baidu/launcher/ui/folder/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_1
    invoke-virtual {v4}, Lcom/baidu/launcher/ui/folder/FolderLayer;->unbindFolder()V

    .line 129
    .end local v2           #folder:Lcom/baidu/launcher/ui/folder/Folder;
    :cond_1
    invoke-virtual {v4}, Lcom/baidu/launcher/ui/folder/FolderLayer;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/baidu/launcher/ui/folder/UserFolder;->fromXml(Landroid/content/Context;)Lcom/baidu/launcher/ui/folder/UserFolder;

    move-result-object v5

    iput-object v5, p0, Lcom/baidu/launcher/ui/folder/FolderManager;->mOpenedFolder:Lcom/baidu/launcher/ui/folder/Folder;

    .line 131
    iget-object v5, p0, Lcom/baidu/launcher/ui/folder/FolderManager;->mOpenedFolder:Lcom/baidu/launcher/ui/folder/Folder;

    invoke-virtual {v5, v0}, Lcom/baidu/launcher/ui/folder/Folder;->setDragController(Lcom/baidu/launcher/ui/dragdrop/DragController;)V

    .line 133
    iget-object v5, p0, Lcom/baidu/launcher/ui/folder/FolderManager;->mOpenedFolder:Lcom/baidu/launcher/ui/folder/Folder;

    invoke-virtual {v5, p1, v3}, Lcom/baidu/launcher/ui/folder/Folder;->bind(Lcom/baidu/launcher/ui/folder/FolderHolder;Lcom/baidu/launcher/data/item/IFolderInfo;)V

    .line 134
    invoke-interface {v3, v6}, Lcom/baidu/launcher/data/item/IFolderInfo;->setOpen(Z)V

    .line 135
    iget-object v5, p0, Lcom/baidu/launcher/ui/folder/FolderManager;->mOpenedFolder:Lcom/baidu/launcher/ui/folder/Folder;

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/folder/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-nez v5, :cond_2

    .line 136
    iget-object v8, p0, Lcom/baidu/launcher/ui/folder/FolderManager;->mFolderLayer:Lcom/baidu/launcher/ui/folder/FolderLayer;

    iget-object v9, p0, Lcom/baidu/launcher/ui/folder/FolderManager;->mOpenedFolder:Lcom/baidu/launcher/ui/folder/Folder;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/dragdrop/DragController;->isDragging()Z

    move-result v5

    if-nez v5, :cond_4

    move v5, v6

    :goto_2
    invoke-virtual {v8, v9, p1, v5}, Lcom/baidu/launcher/ui/folder/FolderLayer;->bindFolder(Lcom/baidu/launcher/ui/folder/Folder;Lcom/baidu/launcher/ui/folder/FolderHolder;Z)V

    .line 138
    :cond_2
    iget-object v5, p0, Lcom/baidu/launcher/ui/folder/FolderManager;->mFolderLayer:Lcom/baidu/launcher/ui/folder/FolderLayer;

    invoke-virtual {v5, v7}, Lcom/baidu/launcher/ui/folder/FolderLayer;->startFolderOpenAnim(Z)V

    .line 139
    iget-object v5, p0, Lcom/baidu/launcher/ui/folder/FolderManager;->mOpenedFolder:Lcom/baidu/launcher/ui/folder/Folder;

    instance-of v5, v5, Lcom/baidu/launcher/ui/dragdrop/DropTarget;

    if-eqz v5, :cond_3

    .line 140
    iget-object v5, p0, Lcom/baidu/launcher/ui/folder/FolderManager;->mOpenedFolder:Lcom/baidu/launcher/ui/folder/Folder;

    check-cast v5, Lcom/baidu/launcher/ui/dragdrop/DropTarget;

    invoke-virtual {v0, v5, v7}, Lcom/baidu/launcher/ui/dragdrop/DragController;->insertDropTarget(Lcom/baidu/launcher/ui/dragdrop/DropTarget;I)V

    .line 142
    :cond_3
    iget-object v5, p0, Lcom/baidu/launcher/ui/folder/FolderManager;->mOpenedFolder:Lcom/baidu/launcher/ui/folder/Folder;

    invoke-virtual {v5, v7}, Lcom/baidu/launcher/ui/folder/Folder;->onOpen(Z)V

    .line 143
    invoke-virtual {v4}, Lcom/baidu/launcher/ui/folder/FolderLayer;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4}, Lcom/baidu/launcher/ui/folder/FolderLayer;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-interface {v3, v6}, Lcom/baidu/launcher/data/item/IFolderInfo;->getDisplayTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baidu/launcher/ubc/UBC;->reportFolderOpen(Landroid/content/Context;Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/dragdrop/DragController;->removeScrollCallbacks()V

    goto :goto_0

    .line 123
    .restart local v2       #folder:Lcom/baidu/launcher/ui/folder/Folder;
    :catch_0
    move-exception v1

    .line 124
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string v8, "removeView fail for wrong parent tree"

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #folder:Lcom/baidu/launcher/ui/folder/Folder;
    :cond_4
    move v5, v7

    .line 136
    goto :goto_2
.end method

.method public refreshFolderIcon()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FolderManager;->mOpendFolderIcon:Lcom/baidu/launcher/ui/folder/FolderHolder;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FolderManager;->mOpendFolderIcon:Lcom/baidu/launcher/ui/folder/FolderHolder;

    invoke-interface {v0}, Lcom/baidu/launcher/ui/folder/FolderHolder;->updateFolderIcon()V

    .line 165
    :cond_0
    return-void
.end method

.method public setKeepBackground(Z)V
    .locals 0
    .parameter "keepBackground"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/baidu/launcher/ui/folder/FolderManager;->mKeepBackground:Z

    .line 48
    return-void
.end method
