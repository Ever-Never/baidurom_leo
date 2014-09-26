.class public interface abstract Lcom/baidu/launcher/ui/folder/FolderHolder;
.super Ljava/lang/Object;
.source "FolderHolder.java"


# virtual methods
.method public abstract cancelFolderHighlight()V
.end method

.method public abstract checkForRemoveFolder()V
.end method

.method public abstract getBottom()I
.end method

.method public abstract getHeight()I
.end method

.method public abstract getLeft()I
.end method

.method public abstract getLocationOnScreen([I)V
.end method

.method public abstract getTag()Ljava/lang/Object;
.end method

.method public abstract getWidth()I
.end method

.method public abstract onDrop(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)V
.end method

.method public abstract removeOpenFolderCallbacks()V
.end method

.method public abstract setText(Ljava/lang/CharSequence;)V
.end method

.method public abstract updateFolderEventNumber(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/utils/EventNumberUtil$EventNumberInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateFolderIcon()V
.end method
