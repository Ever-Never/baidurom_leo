.class Lcom/android/camera/PanoramaActivity$1;
.super Ljava/lang/Object;
.source "PanoramaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PanoramaActivity;->addBaseMenuItems(Landroid/view/Menu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PanoramaActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/PanoramaActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lcom/android/camera/PanoramaActivity$1;->this$0:Lcom/android/camera/PanoramaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$1;->this$0:Lcom/android/camera/PanoramaActivity;

    const/4 v1, 0x0

    #calls: Lcom/android/camera/PanoramaActivity;->switchToOtherMode(I)Z
    invoke-static {v0, v1}, Lcom/android/camera/PanoramaActivity;->access$300(Lcom/android/camera/PanoramaActivity;I)Z

    .line 259
    return-void
.end method
