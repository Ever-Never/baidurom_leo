.class public Lcom/baidu/launcher/ui/folder/FillFolderView$SelectItem;
.super Ljava/lang/Object;
.source "FillFolderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/folder/FillFolderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SelectItem"
.end annotation


# instance fields
.field protected app:Lcom/baidu/launcher/data/item/BaseItemInfo;

.field protected index:I

.field protected selected:Z


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
