.class Lcom/android/camera/MosaicRendererSurfaceView$1;
.super Ljava/lang/Object;
.source "MosaicRendererSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/MosaicRendererSurfaceView;->setReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/MosaicRendererSurfaceView;


# direct methods
.method constructor <init>(Lcom/android/camera/MosaicRendererSurfaceView;)V
    .locals 0
    .parameter

    .prologue
    .line 330
    iput-object p1, p0, Lcom/android/camera/MosaicRendererSurfaceView$1;->this$0:Lcom/android/camera/MosaicRendererSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/camera/MosaicRendererSurfaceView$1;->this$0:Lcom/android/camera/MosaicRendererSurfaceView;

    #getter for: Lcom/android/camera/MosaicRendererSurfaceView;->mRenderer:Lcom/android/camera/MosaicRendererSurfaceViewRenderer;
    invoke-static {v0}, Lcom/android/camera/MosaicRendererSurfaceView;->access$200(Lcom/android/camera/MosaicRendererSurfaceView;)Lcom/android/camera/MosaicRendererSurfaceViewRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/MosaicRendererSurfaceViewRenderer;->setReady()V

    .line 335
    return-void
.end method