.class public Lcom/android/systemui/statusbar/holiday/GifFrame;
.super Ljava/lang/Object;
.source "GifFrame.java"


# instance fields
.field public delay:I

.field public image:Landroid/graphics/Bitmap;

.field public nextFrame:Lcom/android/systemui/statusbar/holiday/GifFrame;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 1
    .parameter "im"
    .parameter "del"

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifFrame;->nextFrame:Lcom/android/systemui/statusbar/holiday/GifFrame;

    .line 7
    iput-object p1, p0, Lcom/android/systemui/statusbar/holiday/GifFrame;->image:Landroid/graphics/Bitmap;

    .line 8
    iput p2, p0, Lcom/android/systemui/statusbar/holiday/GifFrame;->delay:I

    .line 9
    return-void
.end method
