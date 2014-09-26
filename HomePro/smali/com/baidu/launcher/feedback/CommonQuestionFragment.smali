.class public Lcom/baidu/launcher/feedback/CommonQuestionFragment;
.super Landroid/support/v4/app/Fragment;
.source "CommonQuestionFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/feedback/CommonQuestionFragment$CommonQuestionCallback;,
        Lcom/baidu/launcher/feedback/CommonQuestionFragment$CommonQuestionCallbackImpl;
    }
.end annotation


# static fields
.field private static final COMMON_PROBLEM_FILENAME:Ljava/lang/String; = "commonproblem"

.field private static final COMMON_PROBLEM_VERSION:Ljava/lang/String; = "commonproblemversion"

.field private static final MESSAGE_GTE_COMMON_PROBLEM:I = 0x67

.field private static final MESSAGE_INIT_COMMON_PROBLEM:I = 0x65

.field private static final MESSAGE_READ_COMMON_PROBLEM_FROMFILE:I = 0x6a

.field private static final MESSAGE_SAVE_COMMON_PROBLEM:I = 0x69

.field private static final MESSAGE_SHOW_COMMON_PROBLEM:I = 0x68

.field private static final MESSAGE_SHOW_FAILED_PROMPT:I = 0x6b


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBtnRefresh:Landroid/widget/Button;

.field private mCallback:Lcom/baidu/launcher/feedback/CommonQuestionFragment$CommonQuestionCallbackImpl;

.field private mComProblemContentRespones:Ljava/lang/String;

.field private mCommonProblemAdapter:Lcom/baidu/launcher/feedback/CommonQuestionAdapter;

.field private mCommonProblemUpdateItem:Lcom/baidu/launcher/feedback/CommonQuestionUpdateItem;

.field private mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/feedback/CommonQuestionItem;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mLayoutEmpty:Landroid/widget/LinearLayout;

.field private mListView:Landroid/widget/ListView;

.field private mNowVersion:Ljava/lang/String;

.field private mTvPrompt:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 36
    const-class v0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->TAG:Ljava/lang/String;

    .line 60
    new-instance v0, Lcom/baidu/launcher/feedback/CommonQuestionFragment$CommonQuestionCallbackImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/launcher/feedback/CommonQuestionFragment$CommonQuestionCallbackImpl;-><init>(Lcom/baidu/launcher/feedback/CommonQuestionFragment;Lcom/baidu/launcher/feedback/CommonQuestionFragment$1;)V

    iput-object v0, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->mCallback:Lcom/baidu/launcher/feedback/CommonQuestionFragment$CommonQuestionCallbackImpl;

    .line 103
    new-instance v0, Lcom/baidu/launcher/feedback/CommonQuestionFragment$1;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/feedback/CommonQuestionFragment$1;-><init>(Lcom/baidu/launcher/feedback/CommonQuestionFragment;)V

    iput-object v0, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/baidu/launcher/feedback/CommonQuestionFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->mDataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/baidu/launcher/feedback/CommonQuestionFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->setFailedPromptText()V

    return-void
.end method

.method static synthetic access$102(Lcom/baidu/launcher/feedback/CommonQuestionFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->mDataList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$202(Lcom/baidu/launcher/feedback/CommonQuestionFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->mComProblemContentRespones:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/baidu/launcher/feedback/CommonQuestionFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$402(Lcom/baidu/launcher/feedback/CommonQuestionFragment;Lcom/baidu/launcher/feedback/CommonQuestionUpdateItem;)Lcom/baidu/launcher/feedback/CommonQuestionUpdateItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->mCommonProblemUpdateItem:Lcom/baidu/launcher/feedback/CommonQuestionUpdateItem;

    return-object p1
.end method

.method static synthetic access$500(Lcom/baidu/launcher/feedback/CommonQuestionFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->handleInitCommonProblemItem()V

    return-void
.end method

.method static synthetic access$600(Lcom/baidu/launcher/feedback/CommonQuestionFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->handleGetCommonProblemItem()V

    return-void
.end method

.method static synthetic access$700(Lcom/baidu/launcher/feedback/CommonQuestionFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->handleShowCommonProblemItem()V

    return-void
.end method

.method static synthetic access$800(Lcom/baidu/launcher/feedback/CommonQuestionFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->handleSaveCommonProblemItem()V

    return-void
.end method

.method static synthetic access$900(Lcom/baidu/launcher/feedback/CommonQuestionFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->handleReadCommonProblem()V

    return-void
.end method

.method private closeSoftInput()V
    .locals 3

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 308
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->mBtnRefresh:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 310
    return-void
.end method

.method private getCommonProblemVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 302
    .local v0, sharedpreferences:Landroid/content/SharedPreferences;
    const-string v1, "commonproblemversion"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private handleGetCommonProblemItem()V
    .locals 2

    .prologue
    .line 199
    invoke-static {}, Lcom/baidu/launcher/utils/LogEx;->enter()V

    .line 200
    iget-object v0, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->mCommonProblemUpdateItem:Lcom/baidu/launcher/feedback/CommonQuestionUpdateItem;

    invoke-virtual {v0}, Lcom/baidu/launcher/feedback/CommonQuestionUpdateItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->mCallback:Lcom/baidu/launcher/feedback/CommonQuestionFragment$CommonQuestionCallbackImpl;

    invoke-static {v0, v1}, Lcom/baidu/launcher/protocol/Agent;->getCommonQuestionData(Ljava/lang/String;Lcom/baidu/launcher/feedback/CommonQuestionFragment$CommonQuestionCallback;)V

    .line 201
    invoke-static {}, Lcom/baidu/launcher/utils/LogEx;->leave()V

    .line 202
    return-void
.end method

.method private handleInitCommonProblemItem()V
    .locals 4

    .prologue
    .line 180
    invoke-static {}, Lcom/baidu/launcher/utils/LogEx;->enter()V

    .line 181
    iget-object v1, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->mTvPrompt:Landroid/widget/TextView;

    const v2, 0x7f0c01a5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 182
    invoke-virtual {p0}, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->isNetworkConnectivity(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 183
    new-instance v0, Lcom/baidu/launcher/feedback/CommonQuestionPostInfo;

    invoke-direct {v0}, Lcom/baidu/launcher/feedback/CommonQuestionPostInfo;-><init>()V

    .line 184
    .local v0, postdata:Lcom/baidu/launcher/feedback/CommonQuestionPostInfo;
    invoke-virtual {p0}, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->getChannelID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/feedback/CommonQuestionPostInfo;->setChannelid(Ljava/lang/String;)V

    .line 185
    iget-object v1, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->mNowVersion:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 186
    invoke-direct {p0}, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->getCommonProblemVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->mNowVersion:Ljava/lang/String;

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleInitCommonProblemItem mNowVersion : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->mNowVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/launcher/utils/LogEx;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->mNowVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/feedback/CommonQuestionPostInfo;->setVersion(Ljava/lang/String;)V

    .line 190
    iget-object v1, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->mCallback:Lcom/baidu/launcher/feedback/CommonQuestionFragment$CommonQuestionCallbackImpl;

    invoke-static {v0, v1}, Lcom/baidu/launcher/protocol/Agent;->postCommonQuestionUpdate(Lcom/baidu/launcher/feedback/CommonQuestionPostInfo;Lcom/baidu/launcher/feedback/CommonQuestionFragment$CommonQuestionCallback;)V

    .line 195
    .end local v0           #postdata:Lcom/baidu/launcher/feedback/CommonQuestionPostInfo;
    :goto_0
    invoke-static {}, Lcom/baidu/launcher/utils/LogEx;->leave()V

    .line 196
    return-void

    .line 193
    :cond_1
    iget-object v1, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->mTvPrompt:Landroid/widget/TextView;

    const v2, 0x7f0c01a4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private handleReadCommonProblem()V
    .locals 7

    .prologue
    .line 261
    invoke-static {}, Lcom/baidu/launcher/utils/LogEx;->enter()V

    .line 262
    const/4 v2, 0x0

    .line 264
    .local v2, fin:Ljava/io/FileInputStream;
    :try_start_0
    iget-object v4, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->mNowVersion:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 265
    invoke-direct {p0}, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->getCommonProblemVersion()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->mNowVersion:Ljava/lang/String;

    .line 267
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "commonproblem"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->mNowVersion:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 268
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v3

    .line 269
    .local v3, length:I
    new-array v0, v3, [B

    .line 270
    .local v0, buffer:[B
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 271
    new-instance v4, Ljava/lang/String;

    const-string v5, "utf-8"

    invoke-direct {v4, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v4, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->mComProblemContentRespones:Ljava/lang/String;

    .line 272
    iget-object v4, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleReadCommonProblem mComProblemContentRespones : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->mComProblemContentRespones:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/launcher/utils/LogEx;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v4, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->mComProblemContentRespones:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->handleShowCommonProblemItemNoSave(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 281
    if-eqz v2, :cond_1

    .line 282
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 288
    .end local v0           #buffer:[B
    .end local v3           #length:I
    :cond_1
    :goto_0
    invoke-static {}, Lcom/baidu/launcher/utils/LogEx;->leave()V

    .line 289
    return-void

    .line 284
    .restart local v0       #buffer:[B
    .restart local v3       #length:I
    :catch_0
    move-exception v1

    .line 285
    .local v1, e:Ljava/lang/Exception;
    iget-object v4, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/launcher/utils/LogEx;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 275
    .end local v0           #buffer:[B
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #length:I
    :catch_1
    move-exception v1

    .line 276
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_2
    iget-object v4, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/launcher/utils/LogEx;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 281
    if-eqz v2, :cond_1

    .line 282
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 284
    :catch_2
    move-exception v1

    .line 285
    .local v1, e:Ljava/lang/Exception;
    iget-object v4, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/launcher/utils/LogEx;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 277
    .end local v1           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 278
    .restart local v1       #e:Ljava/lang/Exception;
    :try_start_4
    iget-object v4, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/launcher/utils/LogEx;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 281
    if-eqz v2, :cond_1

    .line 282
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 284
    :catch_4
    move-exception v1

    .line 285
    iget-object v4, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/launcher/utils/LogEx;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 280
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 281
    if-eqz v2, :cond_2

    .line 282
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 286
    :cond_2
    :goto_1
    throw v4

    .line 284
    :catch_5
    move-exception v1

    .line 285
    .restart local v1       #e:Ljava/lang/Exception;
    iget-object v5, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baidu/launcher/utils/LogEx;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handleSaveCommonProblemItem()V
    .locals 5

    .prologue
    .line 235
    invoke-static {}, Lcom/baidu/launcher/utils/LogEx;->enter()V

    .line 236
    const/4 v1, 0x0

    .line 238
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "commonproblem"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->mCommonProblemUpdateItem:Lcom/baidu/launcher/feedback/CommonQuestionUpdateItem;

    invoke-virtual {v4}, Lcom/baidu/launcher/feedback/CommonQuestionUpdateItem;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 241
    iget-object v2, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->mComProblemContentRespones:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 242
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 243
    invoke-direct {p0}, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->writeCommonProblemVersion()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 250
    if-eqz v1, :cond_0

    .line 251
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 257
    :cond_0
    :goto_0
    invoke-static {}, Lcom/baidu/launcher/utils/LogEx;->leave()V

    .line 258
    return-void

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/launcher/utils/LogEx;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 244
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 245
    .local v0, e:Ljava/io/IOException;
    :try_start_2
    iget-object v2, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/launcher/utils/LogEx;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 250
    if-eqz v1, :cond_0

    .line 251
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 253
    :catch_2
    move-exception v0

    .line 254
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/launcher/utils/LogEx;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 246
    .end local v0           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 247
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_4
    iget-object v2, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/launcher/utils/LogEx;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 250
    if-eqz v1, :cond_0

    .line 251
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 253
    :catch_4
    move-exception v0

    .line 254
    iget-object v2, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/launcher/utils/LogEx;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 249
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 250
    if-eqz v1, :cond_1

    .line 251
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 255
    :cond_1
    :goto_1
    throw v2

    .line 253
    :catch_5
    move-exception v0

    .line 254
    .restart local v0       #e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/launcher/utils/LogEx;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handleShowCommonProblemItem()V
    .locals 2

    .prologue
    .line 205
    invoke-static {}, Lcom/baidu/launcher/utils/LogEx;->enter()V

    .line 206
    iget-object v0, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->mCommonProblemAdapter:Lcom/baidu/launcher/feedback/CommonQuestionAdapter;

    iget-object v1, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/feedback/CommonQuestionAdapter;->setDateList(Ljava/util/ArrayList;)V

    .line 207
    iget-object v0, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->mCommonProblemAdapter:Lcom/baidu/launcher/feedback/CommonQuestionAdapter;

    invoke-virtual {v0}, Lcom/baidu/launcher/feedback/CommonQuestionAdapter;->notifyDataSetChanged()V

    .line 208
    iget-object v0, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 209
    invoke-static {}, Lcom/baidu/launcher/utils/LogEx;->leave()V

    .line 210
    return-void
.end method

.method private handleShowCommonProblemItemNoSave(Ljava/lang/String;)V
    .locals 6
    .parameter "aComProblemContent"

    .prologue
    .line 213
    invoke-static {}, Lcom/baidu/launcher/utils/LogEx;->enter()V

    .line 214
    const/4 v1, 0x0

    .line 216
    .local v1, aResponse:[Lcom/baidu/launcher/feedback/CommonQuestionItem;
    :try_start_0
    const-class v4, [Lcom/baidu/launcher/feedback/CommonQuestionItem;

    invoke-static {p1, v4}, Lcom/baidu/launcher/utils/JsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, [Lcom/baidu/launcher/feedback/CommonQuestionItem;

    move-object v1, v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :goto_0
    if-eqz v1, :cond_1

    .line 221
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->mDataList:Ljava/util/ArrayList;

    .line 222
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 223
    iget-object v4, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->mDataList:Ljava/util/ArrayList;

    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 217
    .end local v3           #i:I
    :catch_0
    move-exception v2

    .line 218
    .local v2, e:Lorg/json/JSONException;
    iget-object v4, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/json/JSONException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/launcher/utils/LogEx;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 225
    .end local v2           #e:Lorg/json/JSONException;
    .restart local v3       #i:I
    :cond_0
    iget-object v4, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->mCommonProblemAdapter:Lcom/baidu/launcher/feedback/CommonQuestionAdapter;

    iget-object v5, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Lcom/baidu/launcher/feedback/CommonQuestionAdapter;->setDateList(Ljava/util/ArrayList;)V

    .line 226
    iget-object v4, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->mCommonProblemAdapter:Lcom/baidu/launcher/feedback/CommonQuestionAdapter;

    invoke-virtual {v4}, Lcom/baidu/launcher/feedback/CommonQuestionAdapter;->notifyDataSetChanged()V

    .line 228
    .end local v3           #i:I
    :cond_1
    invoke-static {}, Lcom/baidu/launcher/utils/LogEx;->leave()V

    .line 229
    return-void
.end method

.method private setFailedPromptText()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->mTvPrompt:Landroid/widget/TextView;

    const v1, 0x7f0c01a4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 178
    return-void
.end method

.method private writeCommonProblemVersion()V
    .locals 4

    .prologue
    .line 292
    iget-object v1, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->mCommonProblemUpdateItem:Lcom/baidu/launcher/feedback/CommonQuestionUpdateItem;

    invoke-virtual {v1}, Lcom/baidu/launcher/feedback/CommonQuestionUpdateItem;->getVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->mNowVersion:Ljava/lang/String;

    .line 293
    invoke-virtual {p0}, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 294
    .local v0, sharedpreferences:Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeCommonProblemVersion mCommonProblemUpdateItem.getVersion())"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->mCommonProblemUpdateItem:Lcom/baidu/launcher/feedback/CommonQuestionUpdateItem;

    invoke-virtual {v3}, Lcom/baidu/launcher/feedback/CommonQuestionUpdateItem;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "commonproblemversion"

    iget-object v3, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->mCommonProblemUpdateItem:Lcom/baidu/launcher/feedback/CommonQuestionUpdateItem;

    invoke-virtual {v3}, Lcom/baidu/launcher/feedback/CommonQuestionUpdateItem;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 298
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "aSavedInstanceState"

    .prologue
    .line 134
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 135
    invoke-direct {p0}, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->getCommonProblemVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->mNowVersion:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "aInflater"
    .parameter "aContainer"
    .parameter "savedInstanceState"

    .prologue
    .line 142
    const v1, 0x7f030049

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 144
    .local v0, view:Landroid/view/View;
    const v1, 0x7f08004b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->mLayoutEmpty:Landroid/widget/LinearLayout;

    .line 145
    const v1, 0x7f0800fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->mTvPrompt:Landroid/widget/TextView;

    .line 146
    const v1, 0x7f0800fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->mBtnRefresh:Landroid/widget/Button;

    .line 147
    iget-object v1, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->mBtnRefresh:Landroid/widget/Button;

    new-instance v2, Lcom/baidu/launcher/feedback/CommonQuestionFragment$2;

    invoke-direct {v2, p0}, Lcom/baidu/launcher/feedback/CommonQuestionFragment$2;-><init>(Lcom/baidu/launcher/feedback/CommonQuestionFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    const v1, 0x7f0800f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->mListView:Landroid/widget/ListView;

    .line 155
    iget-object v1, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->mLayoutEmpty:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 156
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->mDataList:Ljava/util/ArrayList;

    .line 157
    new-instance v1, Lcom/baidu/launcher/feedback/CommonQuestionAdapter;

    invoke-virtual {p0}, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->mDataList:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3}, Lcom/baidu/launcher/feedback/CommonQuestionAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->mCommonProblemAdapter:Lcom/baidu/launcher/feedback/CommonQuestionAdapter;

    .line 158
    iget-object v1, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->mCommonProblemAdapter:Lcom/baidu/launcher/feedback/CommonQuestionAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 159
    iget-object v1, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 160
    iget-object v1, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 161
    return-object v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 166
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 168
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 172
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 173
    invoke-direct {p0}, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->closeSoftInput()V

    .line 174
    return-void
.end method
