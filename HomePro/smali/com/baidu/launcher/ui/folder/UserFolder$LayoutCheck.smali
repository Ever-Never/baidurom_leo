.class Lcom/baidu/launcher/ui/folder/UserFolder$LayoutCheck;
.super Ljava/lang/Object;
.source "UserFolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/folder/UserFolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LayoutCheck"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/folder/UserFolder;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/folder/UserFolder;)V
    .locals 0
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Lcom/baidu/launcher/ui/folder/UserFolder$LayoutCheck;->this$0:Lcom/baidu/launcher/ui/folder/UserFolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/UserFolder$LayoutCheck;->this$0:Lcom/baidu/launcher/ui/folder/UserFolder;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/folder/UserFolder;->layoutShortcuts()V

    .line 306
    return-void
.end method
