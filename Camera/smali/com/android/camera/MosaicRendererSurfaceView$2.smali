.class Lcom/android/camera/MosaicRendererSurfaceView$2;
.super Ljava/lang/Object;
.source "MosaicRendererSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/MosaicRendererSurfaceView;->preprocess([F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/MosaicRendererSurfaceView;

.field final synthetic val$transformMatrix:[F


# direct methods
.method constructor <init>(Lcom/android/camera/MosaicRendererSurfaceView;[F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 340
    iput-object p1, p0, Lcom/android/camera/MosaicRendererSurfaceView$2;->this$0:Lcom/android/camera/MosaicRendererSurfaceView;

    iput-object p2, p0, Lcom/android/camera/MosaicRendererSurfaceView$2;->val$transformMatrix:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/camera/MosaicRendererSurfaceView$2;->this$0:Lcom/android/camera/MosaicRendererSurfaceView;

    #getter for: Lcom/android/camera/MosaicRendererSurfaceView;->mRenderer:Lcom/android/camera/MosaicRendererSurfaceViewRenderer;
    invoke-static {v0}, Lcom/android/camera/MosaicRendererSurfaceView;->access$200(Lcom/android/camera/MosaicRendererSurfaceView;)Lcom/android/camera/MosaicRendererSurfaceViewRenderer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/MosaicRendererSurfaceView$2;->val$transformMatrix:[F

    invoke-virtual {v0, v1}, Lcom/android/camera/MosaicRendererSurfaceViewRenderer;->preprocess([F)V

    .line 345
    return-void
.end method
