.class Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "QuickSwitchPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwitchLayoutParams"
.end annotation


# static fields
.field public static final LAYOUT_TYPE_BOTTOM:I = 0x0

.field public static final LAYOUT_TYPE_TOP:I = 0x1


# instance fields
.field public mAnimating:Z

.field private mAnimationStep:I

.field public mAnimationX:I

.field public mAnimationY:I

.field public mDesIndex:I

.field public mDesX:I

.field public mDesY:I

.field public mKey:I

.field public mLayoutType:I

.field public mSrcIndex:I

.field public mSrcX:I

.field public mSrcY:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;II)V
    .locals 2
    .parameter
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, -0x1

    .line 149
    iput-object p1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    .line 150
    invoke-direct {p0, p2, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 141
    iput v1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mAnimationStep:I

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mAnimating:Z

    .line 143
    iput v1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mLayoutType:I

    .line 144
    iput v1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcIndex:I

    .line 145
    iput v1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mDesIndex:I

    .line 146
    iput v1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mKey:I

    .line 151
    return-void
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mAnimationStep:I

    return v0
.end method

.method static synthetic access$2502(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput p1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mAnimationStep:I

    return p1
.end method
