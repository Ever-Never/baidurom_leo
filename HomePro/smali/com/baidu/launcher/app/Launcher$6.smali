.class Lcom/baidu/launcher/app/Launcher$6;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/app/Launcher;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/app/Launcher;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/app/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 762
    iput-object p1, p0, Lcom/baidu/launcher/app/Launcher$6;->this$0:Lcom/baidu/launcher/app/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 765
    invoke-static {}, Lcom/baidu/launcher/utils/Utilities;->getCurrentDay()I

    move-result v0

    .line 766
    .local v0, day:I
    iget-object v1, p0, Lcom/baidu/launcher/app/Launcher$6;->this$0:Lcom/baidu/launcher/app/Launcher;

    #calls: Lcom/baidu/launcher/app/Launcher;->updateCalendarIcon(I)V
    invoke-static {v1, v0}, Lcom/baidu/launcher/app/Launcher;->access$1000(Lcom/baidu/launcher/app/Launcher;I)V

    .line 767
    return-void
.end method
