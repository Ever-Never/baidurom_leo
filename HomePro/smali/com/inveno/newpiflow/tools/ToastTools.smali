.class public Lcom/inveno/newpiflow/tools/ToastTools;
.super Ljava/lang/Object;
.source "ToastTools.java"


# static fields
.field private static INSTANCE_FROM_BOTTOM:I

.field private static toast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/16 v0, 0x82

    sput v0, Lcom/inveno/newpiflow/tools/ToastTools;->INSTANCE_FROM_BOTTOM:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static initToast(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "word"

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 31
    return-void
.end method

.method public static initToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "word"

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 27
    return-void
.end method

.method public static showToast(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "word"

    .prologue
    .line 22
    invoke-static {p0, p1}, Lcom/inveno/newpiflow/tools/ToastTools;->initToast(Landroid/content/Context;I)V

    .line 23
    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "word"

    .prologue
    .line 18
    invoke-static {p0, p1}, Lcom/inveno/newpiflow/tools/ToastTools;->initToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 19
    return-void
.end method
